pageextension 70214 "CPISAF Purchase Inv. Sub" extends "Purch. Invoice Subform"
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
                ToolTip = 'Specifies Amount Including VAT of the invoice.';
            }
        }
    }
}
