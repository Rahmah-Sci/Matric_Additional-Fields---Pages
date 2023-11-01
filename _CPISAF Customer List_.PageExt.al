pageextension 70240 "CPISAF Customer List" extends "Customer List"
{
    layout
    {
        addlast(Content)
        {
            field("CPISAF Document Sending Profile"; Rec."Document Sending Profile")
            {
                ApplicationArea = All;
                Visible = false;
                ToolTip = 'Specifies the Document Sending Profile of Customer';
            }
        }
    }
}
