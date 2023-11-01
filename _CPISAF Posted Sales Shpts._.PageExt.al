pageextension 70250 "CPISAF Posted Sales Shpts." extends "Posted Sales Shipments"
{
    layout
    {
        addafter("No.")
        {
            field("CPISAF Order No."; Rec."Order No.")
            {
                ApplicationArea = all;
                ToolTip = 'Shows the Document No. of the unposted document before shipping.';
            }
        }
        addafter("Document Date")
        {
            field("CPISAF User ID"; Rec."User ID")
            {
                ApplicationArea = All;
                Visible = false;
                Editable = false;
                ToolTip = 'Specifies the ID of the user who posted the Shipment, to be used, for example, in the change log.';
            }
        }
    }
}
