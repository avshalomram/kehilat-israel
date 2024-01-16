import React, { useState } from "react";
import { PayPalScriptProvider, PayPalButtons } from "@paypal/react-paypal-js";
import { url } from "../config/server";

// Renders errors or successfull transactions on the screen.
function Message({ content }) {
  return <p>{content}</p>;
}

function Paypal({ name, amount, date,type,details, success, set} ) {
  console.log(name, amount, date,type,details, success, set);
  
  const initialOptions = {
    "client-id": "Afgnr4u04HGd4lrqQjBNkd9tjx3xyc1ZBvZ8cYHOR81CT_8im1Tw2N31Z_TyIHdDQymuapou6od5UFLi",
    "enable-funding": "venmo,card",
    "disable-funding": "paylater",
    "data-sdk-integration-source": "integrationbuilder_sc",
  };

  const [message, setMessage] = useState("");

  return (
    <div className="App" style={{margin: "5px auto"}}>
      <PayPalScriptProvider   options={initialOptions}>
        <PayPalButtons
        
          style={{
            shape: "rect",
            layout: "horizontal",
          }}
          createOrder={async () => {
            try {
              
              const response = await fetch(url+"/orders", {
                method: "POST",
                credentials: 'include' ,
                headers: {
                  "cookie": document.cookie,
                  "Content-Type": "application/json",
                },
                // use the "body" param to optionally pass additional order information
                // like product ids and quantities
                body: JSON.stringify({
                  cart: [
                    {name, amount, date, details, type}
                  ]
                }),
              });
              const orderData =  await response.json();
              if (orderData.id) {
                return orderData.id;
              } else {
                const errorDetail = orderData?.details?.[0];
                const errorMessage = errorDetail
                  ? `${errorDetail.issue} ${errorDetail.description} (${orderData.debug_id})`
                  : JSON.stringify(orderData);

                throw new Error(errorMessage);
              }
            } catch (error) {
              
              console.log("error");
              setMessage(`Could not initiate PayPal Checkout...${error}`);
            }
          }}
          onClick={() => console.log(name, amount, date,type,details, success)}
          onError={(err) => {console.log(err)}}
          onApprove={async (data, actions) => {
            try {
              const response = await fetch(
                url+`/orders/${data.orderID}/capture`,
                {
                  body: JSON.stringify({amount, date, name, details, type}),
                  method: "POST",
                  credentials: 'include' ,
                  headers: {
                    "cookie": document.cookie,
                    "Content-Type": "application/json"
                  },
                },
              );

              const orderData = await response.json();
              success(orderData);
              // Three cases to handle:
              //   (1) Recoverable INSTRUMENT_DECLINED -> call actions.restart()
              //   (2) Other non-recoverable errors -> Show a failure message
              //   (3) Successful transaction -> Show confirmation or thank you message

              const errorDetail = orderData?.details?.[0];

              if (errorDetail?.issue === "INSTRUMENT_DECLINED") {
                // (1) Recoverable INSTRUMENT_DECLINED -> call actions.restart()
                // recoverable state, per https://developer.paypal.com/docs/checkout/standard/customize/handle-funding-failures/
                return actions.restart();
              } else if (errorDetail) {
                // (2) Other non-recoverable errors -> Show a failure message
                throw new Error(
                  `${errorDetail.description} (${orderData.debug_id})`,
                );
              } else {
                // (3) Successful transaction -> Show confirmation or thank you message
                // Or go to another URL:  actions.redirect('thank_you.html');
                const transaction =
                  orderData.purchase_units[0].payments.captures[0];
                setMessage(
                  `Transaction ${transaction.status}: ${transaction.id}. See console for all available details`,
                );
                // console.log(
                //   "Capture result",
                //   orderData,
                //   JSON.stringify(orderData, null, 2),
                // );
              }
            } catch (error) {
              console.error(error);
              setMessage(
                `Sorry, your transaction could not be processed...${error}`,
              );
            }
          }}
        />
      </PayPalScriptProvider>
      <Message content={message} />
    </div>
  );
}

export default Paypal;
