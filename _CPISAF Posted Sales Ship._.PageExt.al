pageextension 70207 "CPISAF Posted Sales Ship." extends "Posted Sales Shipment"
{
    layout
    {
        addafter("Document Date")
        {
            field("CPISAF User ID"; Rec."User ID")
            {
                ApplicationArea = All;
                Visible = true;
                Editable = false;
                ToolTip = 'Specifies the ID of the user who posted the Shipment, to be used, for example, in the change log.';
            }
        }
    }
}
