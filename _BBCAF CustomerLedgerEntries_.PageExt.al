pageextension 70244 "BBCAF CustomerLedgerEntries" extends "Customer Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("BBCAF Closed by Amount"; Rec."Closed by Amount")
            {
                ApplicationArea = All;
                Caption = 'Closed by Amount';
                ToolTip = 'Specifies the Closed by Amount of Customer Ledger Entry';
            }
            field("BBCAF Closed by Entry No."; Rec."Closed by Entry No.")
            {
                ApplicationArea = All;
                Caption = 'Closed by Entry No.';
                ToolTip = 'Specifies the Closed by Entry No. of Customer Ledger Entry';
            }
            field("BBCAF Closed at Date"; Rec."Closed at Date")
            {
                ApplicationArea = All;
                Caption = 'Closed at Date';
                ToolTip = 'Specifies the Closed at Date of Customer Ledger Entry';
            }
        }
    }
}
