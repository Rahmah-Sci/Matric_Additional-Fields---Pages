pageextension 70223 "CPISAF Sales Invoice Sub" extends "Sales Invoice Subform"
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
        addafter("Line Amount")
        {
            field("CPISAF Amount Including VAT"; Rec."Amount Including VAT")
            {
                ApplicationArea = All;
                Visible = true;
                Editable = false;
                ToolTip = 'Specifies Amount Including VAT of Invoice. ';
            }
        }
    }
}
