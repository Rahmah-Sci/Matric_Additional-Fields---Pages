pageextension 70233 "CPISAF Vend. Ledg. Ent." extends "Vendor Ledger Entries"
{
    layout
    {
        addlast(Control1)
        {
            field("CPISAF Document Date"; Rec."Document Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the date when the related document was created.';
            }
            field("CPISAF Closed at Date"; Rec."Closed at Date")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the date when the entry was closed.';
            }
        }
    }
}
