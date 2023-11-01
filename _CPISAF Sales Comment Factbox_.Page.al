page 70226 "CPISAF Sales Comment Factbox"
{
    PageType = CardPart;
    SourceTable = "Sales Comment Line";
    Caption = 'Sales Comments';

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Comment; Rec.Comment)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action(View)
            {
                Promoted = true;
                ApplicationArea = all;
                Image = Comment;

                trigger OnAction()
                begin
                    Page.Run(Page::"Sales Comment List", Rec);
                end;
            }
        }
    }
}
