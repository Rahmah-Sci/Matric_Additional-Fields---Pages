pageextension 70235 "CPISAF Purchase Invoice" extends "Purchase Invoice"
{
    layout
    {
        addlast("Invoice Details")
        {
            field("CPISAF ShortcutDim3"; ShortcutDim[3])
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 3 Code';
                CaptionClass = '1,2,3';
                TableRelation = "Dimension Value".Code where("Global Dimension No."=const(3));
                Visible = ShowDim3;
                ToolTip = 'Specifies the code for the Shortcut Dimension 3 that is linked to the record or entry for analysis purposes.';

                trigger OnValidate()
                begin
                    Rec.ValidateShortcutDimCode(3, ShortcutDim[3]);
                end;
            }
            field("CPISAF ShortcutDim4"; ShortcutDim[4])
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 4 Code';
                CaptionClass = '1,2,4';
                TableRelation = "Dimension Value".Code where("Global Dimension No."=const(4));
                Visible = ShowDim4;
                ToolTip = 'Specifies the code for the Shortcut Dimension 4 that is linked to the record or entry for analysis purposes.';

                trigger OnValidate()
                begin
                    Rec.ValidateShortcutDimCode(4, ShortcutDim[4]);
                end;
            }
            field("CPISAF ShortcutDim5"; ShortcutDim[5])
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 5 Code';
                CaptionClass = '1,2,5';
                TableRelation = "Dimension Value".Code where("Global Dimension No."=const(5));
                Visible = ShowDim5;
                ToolTip = 'Specifies the code for the Shortcut Dimension 5 that is linked to the record or entry for analysis purposes.';

                trigger OnValidate()
                begin
                    Rec.ValidateShortcutDimCode(5, ShortcutDim[5]);
                end;
            }
            field("CPISAF ShortcutDim6"; ShortcutDim[6])
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 6 Code';
                CaptionClass = '1,2,6';
                TableRelation = "Dimension Value".Code where("Global Dimension No."=const(6));
                Visible = ShowDim6;
                ToolTip = 'Specifies the code for the Shortcut Dimension 6 that is linked to the record or entry for analysis purposes.';

                trigger OnValidate()
                begin
                    Rec.ValidateShortcutDimCode(6, ShortcutDim[6]);
                end;
            }
            field("CPISAF ShortcutDim7"; ShortcutDim[7])
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 7 Code';
                CaptionClass = '1,2,7';
                TableRelation = "Dimension Value".Code where("Global Dimension No."=const(7));
                Visible = ShowDim7;
                ToolTip = 'Specifies the code for the Shortcut Dimension 7 that is linked to the record or entry for analysis purposes.';

                trigger OnValidate()
                begin
                    Rec.ValidateShortcutDimCode(7, ShortcutDim[7]);
                end;
            }
            field("CPISAF ShortcutDim8"; ShortcutDim[8])
            {
                ApplicationArea = All;
                Caption = 'Shortcut Dimension 8 Code';
                CaptionClass = '1,2,8';
                TableRelation = "Dimension Value".Code where("Global Dimension No."=const(8));
                Visible = ShowDim8;
                ToolTip = 'Specifies the code for the Shortcut Dimension 8 that is linked to the record or entry for analysis purposes.';

                trigger OnValidate()
                begin
                    Rec.ValidateShortcutDimCode(8, ShortcutDim[8]);
                end;
            }
        }
    }
    trigger OnAfterGetRecord()
    var
        AddFieldDimMgt: Codeunit "CPISAF Dim Mgt";
        i: Integer;
    begin
        i:=3;
        repeat ShortcutDim[i]:='';
            ShortcutDim[i]:=AddfieldDimMgt.GetShortcutDim(i, Rec."Dimension Set ID");
            i+=1;
        until i = 8;
    end;
    trigger OnOpenPage()
    var
        AddFieldDimMgt: Codeunit "CPISAF Dim Mgt";
    begin
        ShowDim3:=AddfieldDimMgt.SetDimVisible(3);
        ShowDim4:=AddfieldDimMgt.SetDimVisible(4);
        ShowDim5:=AddfieldDimMgt.SetDimVisible(5);
        ShowDim6:=AddfieldDimMgt.SetDimVisible(6);
        ShowDim7:=AddfieldDimMgt.SetDimVisible(7);
        ShowDim8:=AddfieldDimMgt.SetDimVisible(8);
    end;
    var ShortcutDim: array[8]of Code[20];
    ShowDim3: Boolean;
    ShowDim4: Boolean;
    ShowDim5: Boolean;
    ShowDim6: Boolean;
    ShowDim7: Boolean;
    ShowDim8: Boolean;
}
