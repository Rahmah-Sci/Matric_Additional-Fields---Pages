pageextension 70237 "CPISAF Rec Gen Journal" extends "Recurring General Journal"
{
    layout
    {
        addlast(Control1)
        {
            field("CPISAF Payment Method Code"; Rec."Payment Method Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies how to make payment, such as with bank transfer, cash, or check.';
            }
            field("CPISAF External Document No."; Rec."External Document No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies a document number that refers to the customer or vendor numbering system.';
            }
        }
    }
}
