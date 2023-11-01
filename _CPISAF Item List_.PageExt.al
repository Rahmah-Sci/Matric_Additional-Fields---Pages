pageextension 70206 "CPISAF Item List" extends "Item List"
{
    layout
    {
        addafter("Unit Price")
        {
            field("CPISAF Qty. on Sales Order"; Rec."Qty. on Sales Order")
            {
                ApplicationArea = All;
                Visible = false;
                ToolTip = 'Specifies Qty. on Sales Order';
            }
            field("CPISAF Qty. on Purch. Order"; Rec."Qty. on Purch. Order")
            {
                ApplicationArea = All;
                Visible = false;
                ToolTip = 'Specifies Qty. on Purch. Order';
            }
            field("CPISAF Safety Stock Quantity"; Rec."Safety Stock Quantity")
            {
                ApplicationArea = All;
                Visible = false;
                ToolTip = 'Specifies Quantity of Safety Stock';
            }
        }
    }
}
