pageextension 70230 "CPISAF Cash Receipt Journal" extends "Cash Receipt Journal"
{
    layout
    {
        addafter("Bal. Account No.")
        {
            Field("CPISAF Payment Method Code"; Rec."Payment Method Code")
            {
                ApplicationArea = All;
                Visible = true;
                ToolTip = 'Specifies the type of Payment Method Code.';
            }
        }
    }
}
