pageextension 70228 "CPISAF Posted Sales Ret Sub" extends "Posted Return Receipt Subform"
{
    layout
    {
        addafter(Description)
        {
            field("CPISAF Description 2"; Rec."Description 2")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies Description 2 of, the item or general ledger account.';
            }
        }
    }
}
