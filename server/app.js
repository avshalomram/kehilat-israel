const timesRoter = require('./times/route');
const messagesRoute = require("./messages/route")
const usersRoute = require("./users/route")
const { identification } = require("./middlewares/auth")
const cors = require('cors');
const express = require('express');
const app = express();

let visitors = 0;
app.use(cors( {origin: "http://localhost:3000", credentials: true}  ))
app.use(express.json());
app.use((req, res, next) => {
    visitors++;
    console.log("visitors: ", visitors);
    console.log("req.url: ", req.url); 
    next();
});
app.use(identification)
app.use("/api/users", usersRoute);
app.use("/api/times", timesRoter);
app.use("/api/messages", messagesRoute);

app.listen(3010, () => console.log("listen on port 3010..."))