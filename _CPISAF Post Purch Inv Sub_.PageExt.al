pageextension 70215 "CPISAF Post Purch Inv Sub" extends "Posted Purch. Invoice Subform"
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
