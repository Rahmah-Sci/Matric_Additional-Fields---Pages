pageextension 70242 "CPISAF Item Ledger Entries" extends "Item Ledger Entries"
{
    layout
    {
        addafter("Entry No.")
        {
            field("CPISAF Source Type"; Rec."Source Type")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies Source Type that the entry was created in.';
            }
            field("CPISAF Source No."; Rec."Source No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies Source No. that the entry was created in.';
            }
            field("CPISAF SourceName"; SourceName)
            {
                Caption = 'Source Name';
                ApplicationArea = All;
                Editable = false;
                ToolTip = 'Specifies Source Name that the entry was created in.';
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        Customer: Record Customer;
        Vendor: Record Vendor;
        Item: Record Item;
    begin
        SourceName:='';
        case Rec."Source Type" of Rec."Source Type"::Customer: if Customer.Get(Rec."Source No.")then SourceName:=Customer.Name;
        Rec."Source Type"::Vendor: if Vendor.Get(Rec."Source No.")then SourceName:=Vendor.Name;
        Rec."Source Type"::Item: if Item.Get(Rec."Source No.")then SourceName:=Item.Description;
        end;
    end;
    var SourceName: Text[100];
}
