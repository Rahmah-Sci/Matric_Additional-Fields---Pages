pageextension 70221 "CPISAF Sales Quote Sub" extends "Sales Quote Subform"
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
