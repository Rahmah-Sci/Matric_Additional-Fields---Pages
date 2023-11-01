pageextension 70210 "CPISAF Purch Order List" extends "Purchase Order List"
{
    layout
    {
        modify("Assigned User ID")
        {
            ApplicationArea = All;
            Visible = true;
            Enabled = true;
        }
        addlast(Control1)
        {
            field("CPISAF Vendor Order No."; Rec."Vendor Order No.")
            {
                ApplicationArea = All;
                Visible = true;
                ToolTip = 'Specifies Vendor Order No. of Purchase Order.';
            }
        }
    }
}
