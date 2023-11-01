codeunit 70200 "CPISAF Dim Mgt"
{
    procedure GetShortcutDim(DimensionNo: Integer; DimSetID: Integer): Code[20]var
        DimensionSetEntry: Record "Dimension Set Entry";
        DimensionCode: Code[20];
    begin
        GeneralLedgerSetup.Get();
        case DimensionNo of 3: DimensionCode:=GeneralLedgerSetup."Shortcut Dimension 3 Code";
        4: DimensionCode:=GeneralLedgerSetup."Shortcut Dimension 4 Code";
        5: DimensionCode:=GeneralLedgerSetup."Shortcut Dimension 5 Code";
        6: DimensionCode:=GeneralLedgerSetup."Shortcut Dimension 6 Code";
        7: DimensionCode:=GeneralLedgerSetup."Shortcut Dimension 7 Code";
        8: DimensionCode:=GeneralLedgerSetup."Shortcut Dimension 8 Code";
        end;
        DimensionSetEntry.SetRange("Dimension Code", DimensionCode);
        DimensionSetEntry.SetRange("Dimension Code", DimensionCode);
        DimensionSetEntry.SetRange("Dimension Set ID", DimSetID);
        if DimensionSetEntry.FindFirst()then exit(DimensionSetEntry."Dimension Value Code");
    end;
    procedure SetDimVisible(DimensionNo: Integer): Boolean begin
        GeneralLedgerSetup.Get();
        case DimensionNo of 3: exit(GeneralLedgerSetup."Shortcut Dimension 3 Code" <> '');
        4: exit(GeneralLedgerSetup."Shortcut Dimension 4 Code" <> '');
        5: exit(GeneralLedgerSetup."Shortcut Dimension 5 Code" <> '');
        6: exit(GeneralLedgerSetup."Shortcut Dimension 6 Code" <> '');
        7: exit(GeneralLedgerSetup."Shortcut Dimension 7 Code" <> '');
        8: exit(GeneralLedgerSetup."Shortcut Dimension 8 Code" <> '');
        end;
    end;
    var GeneralLedgerSetup: Record "General Ledger Setup";
}
