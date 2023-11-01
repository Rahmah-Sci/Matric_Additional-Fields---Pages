pageextension 70209 "CPISAF Sales Order List" extends "Sales Order List"
{
    layout
    {
        modify("Assigned User ID")
        {
            ApplicationArea = All;
            Visible = true;
            Enabled = true;
        }
        addlast(Control1)
        {
            field("CPISAF No. Of Comments"; Rec."PKFCP No. Of Comments")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies No. Of Comments of sales order.';
            }
        }
        addlast(FactBoxes)
        {
            part("CPISAF Comments"; "CPISAF Sales Comment Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "No."=field("No.");
            }
        }
    }
}
