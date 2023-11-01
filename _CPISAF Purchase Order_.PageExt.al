pageextension 70205 "CPISAF Purchase Order" extends "Purchase Order"
{
    layout
    {
        modify("Assigned User ID")
        {
            ApplicationArea = All;
            Visible = true;
            Enabled = true;
        }
    }
}
