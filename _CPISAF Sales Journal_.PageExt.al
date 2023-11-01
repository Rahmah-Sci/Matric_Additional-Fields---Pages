pageextension 70239 "CPISAF Sales Journal" extends "Sales Journal"
{
    layout
    {
        addlast(Control1)
        {
            field("CPISAF Payment Method Code"; Rec."Payment Method Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies how to make payment, such as with bank transfer, cash, or check.';
            }
        }
    }
}
