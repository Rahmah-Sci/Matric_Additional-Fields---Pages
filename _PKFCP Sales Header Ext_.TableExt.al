tableextension 70200 "PKFCP Sales Header Ext" extends "Sales Header"
{
    fields
    {
        field(70200; "PKFCP No. Of Comments"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Comment Line" where("No."=field("No.")));
            Caption = 'No. of Comments';
        }
    }
}
