pageextension 70241 "CPISAF Get Rcpt Lines" extends "Get Receipt Lines"
{
    layout
    {
        addlast(Control1)
        {
            field("CPISAF Order No."; Rec."Order No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the number of the order.';
            }
        }
    }
}
