pageextension 70231 "CPISAF Sales Quote" extends "Sales Quote"
{
    layout
    {
        addlast(FactBoxes)
        {
            part("CPISAF Comment"; "CPISAF Sales Comment Factbox")
            {
                ApplicationArea = All;
                SubPageLink = "No."=field("No.");
            }
        }
    }
}
