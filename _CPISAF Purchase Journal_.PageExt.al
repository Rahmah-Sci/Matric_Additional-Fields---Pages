pageextension 70238 "CPISAF Purchase Journal" extends "Purchase Journal"
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
