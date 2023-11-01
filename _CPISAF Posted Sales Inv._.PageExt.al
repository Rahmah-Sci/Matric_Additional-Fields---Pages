pageextension 70208 "CPISAF Posted Sales Inv." extends "Posted Sales Invoice"
{
    layout
    {
        addafter("Document Date")
        {
            field("CPISAF User ID"; Rec."User ID")
            {
                Caption = 'User ID';
                ApplicationArea = All;
                Visible = true;
                Editable = false;
                ToolTip = 'Specifies the ID of the user who posted the Invoice, to be used, for example, in the change log.';
            }
        }
    }
}
