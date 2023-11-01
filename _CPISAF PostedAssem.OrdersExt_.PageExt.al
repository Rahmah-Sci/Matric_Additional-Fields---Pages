pageextension 70243 "CPISAF PostedAssem.OrdersExt" extends "Posted Assembly Orders"
{
    layout
    {
        addafter("Item No.")
        {
            field("CPISAF Variant Code"; Rec."Variant Code")
            {
                ApplicationArea = all;
                ToolTip = 'Specifies the variant of the item.';
            }
        }
    }
}
