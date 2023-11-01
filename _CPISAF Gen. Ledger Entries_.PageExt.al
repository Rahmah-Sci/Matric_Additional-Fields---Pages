pageextension 70200 "CPISAF Gen. Ledger Entries" extends "General Ledger Entries"
{
    layout
    {
        modify("G/L Account Name")
        {
            ApplicationArea = All;
            Enabled = true;
            Visible = true;
        }
        addafter("Source Code")
        {
            field("CPISAF Source Type"; Rec."Source Type")
            {
                ApplicationArea = All;
                Caption = 'Source Type';
                ToolTip = 'Specifies the Source Type of entry';
            }
            field("CPISAF Source No."; Rec."Source No.")
            {
                ApplicationArea = All;
                Caption = 'Source No.';
                ToolTip = 'Specifies the Source No. of the entry.';
            }
            field("CPISAF SourceName"; SourceName)
            {
                ApplicationArea = All;
                Caption = 'Source Name';
                Editable = false;
                ToolTip = 'Specifies the Source Name of the entry.';
            }
            field("CPISAF Business Unit Code"; Rec."Business Unit Code")
            {
                ApplicationArea = All;
                Caption = 'Business Unit Code';
                Editable = false;
                ToolTip = 'Specifies the Business Unit Code of the entry.';
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        Customer: Record Customer;
        Vendor: Record Vendor;
        BankAccount: Record "Bank Account";
        FixedAsset: Record "Fixed Asset";
        Employee: Record Employee;
        DimMgt: Codeunit DimensionManagement;
    begin
        Clear(ShortcutDim);
        DimMgt.GetShortcutDimensions(Rec."Dimension Set ID", ShortcutDim);
        SourceName:='';
        case Rec."Source Type" of Rec."Source Type"::Customer: if Customer.Get(Rec."Source No.")then SourceName:=Customer.Name;
        Rec."Source Type"::Vendor: if Vendor.Get(Rec."Source No.")then SourceName:=Vendor.Name;
        Rec."Source Type"::"Bank Account": if BankAccount.Get(Rec."Source No.")then SourceName:=BankAccount.Name;
        Rec."Source Type"::Employee: if Employee.Get(Rec."Source No.")then SourceName:=Employee.FullName();
        Rec."Source Type"::"Fixed Asset": if FixedAsset.Get(Rec."Source No.")then SourceName:=FixedAsset.Description;
        end;
    end;
    var ShortcutDim: array[8]of Code[20];
    SourceName: Text[100];
}
