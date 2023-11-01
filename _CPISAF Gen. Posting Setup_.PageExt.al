pageextension 70202 "CPISAF Gen. Posting Setup" extends "General Posting Setup"
{
    layout
    {
        modify("COGS Account (Interim)")
        {
            ApplicationArea = All;
            Enabled = true;
            Visible = true;
        }
        modify("Invt. Accrual Acc. (Interim)")
        {
            ApplicationArea = All;
            Enabled = true;
            Visible = true;
        }
    }
}
