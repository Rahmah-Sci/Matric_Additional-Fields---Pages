pageextension 70232 "CPISAF Sales Quote List" extends "Sales Quotes"
{
    layout
    {
        addlast(Control1)
        {
            field("CPISAF No. Of Comments"; Rec."PKFCP No. Of Comments")
            {
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies No of comments of Sales Quote.';
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
