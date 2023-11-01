pageextension 70213 "CPISAF Purchase Credit Sub" extends "Purch. Cr. Memo Subform"
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
