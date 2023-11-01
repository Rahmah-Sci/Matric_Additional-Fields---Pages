pageextension 70204 "CPISAF Sales Order" extends "Sales Order"
{
    layout
    {
        modify("Assigned User ID")
        {
            ApplicationArea = All;
            Visible = true;
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
