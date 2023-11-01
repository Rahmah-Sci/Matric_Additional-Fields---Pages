pageextension 70229 "CPISAF Post Purch Inv" extends "Posted Purchase Invoices"
{
    layout
    {
        addlast(Control1)
        {
            field("CPISAF Vendor Order No."; Rec."Vendor Order No.")
            {
                ApplicationArea = All;
                Visible = true;
                ToolTip = 'Specifies Vendor Order No. of Purchase Invoice.';
            }
        }
    }
}
