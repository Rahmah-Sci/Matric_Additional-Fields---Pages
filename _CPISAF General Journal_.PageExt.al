pageextension 70236 "CPISAF General Journal" extends "General Journal"
{
    layout
    {
        addlast(Control1)
        {
            field("CPISAF Payment Method Code"; Rec."Payment Method Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the type Payment Method Code';
            }
        }
    }
}
