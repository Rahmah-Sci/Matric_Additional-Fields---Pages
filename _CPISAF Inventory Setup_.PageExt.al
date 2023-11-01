pageextension 70203 "CPISAF Inventory Setup" extends "Inventory Setup"
{
    layout
    {
        modify("Prevent Negative Inventory")
        {
            ApplicationArea = All;
            Enabled = true;
            Visible = True;
        }
    }
}
