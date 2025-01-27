
import Table2 from "../muiComps/table2";
const heads = [
    {
        id: 'donation_id',
        numeric: false,
        disablePadding: false,
        label: 'ID'
    },
    {
        id: 'user_id',
        numeric: false,
        disablePadding: false,
        label: 'מזהה משתמש'
    },
   {
        id: 'amount',
        numeric: false,
        disablePadding: false,
        label: 'סכום'
    },
    {
        id: 'date',
        numeric: false,
        disablePadding: false,
        label: 'תאריך'
    },
    {
        id: 'payment_method',
        numeric: false,
        disablePadding: false,
        label: 'אופן התשלום'
    },
    {
        id: 'receipt',
        numeric: false,
        disablePadding: false,
        label: 'אסמכתא'
    },
    {
        id: 'category',
        numeric: false,
        disablePadding: false,
        label: 'קטגוריה'
    },
    {
        id: "username",
        numeric: false,
        disablePadding: false,
        label: "שם משתמש"
    }
]


export default function DonationHandler({ donations, setDonations, tableProps }) {
    return <>
        <Table2 {...{ tableProps, heads, data: donations, selected_id: "donation_id" }}>
        </Table2>
    </>
}