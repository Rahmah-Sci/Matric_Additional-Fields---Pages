pageextension 70201 "CPISAF Item Card" extends "Item Card"
{
    layout
    {
        modify(Type)
        {
            ApplicationArea = All;
            Enabled = true;
            Visible = true;
        }
        modify("Qty. on Sales Order")
        {
            ApplicationArea = All;
            Visible = true;
        }
        modify("Qty. on Purch. Order")
        {
            ApplicationArea = All;
            Visible = true;
        }
        addafter(Description)
        {
            field("CPISAF Description 2"; Rec."Description 2")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies a description 2 of the item.';
            }
        }
    }
}
