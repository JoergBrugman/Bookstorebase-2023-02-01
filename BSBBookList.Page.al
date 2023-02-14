page 50101 "BSB Book List"
{
    Caption = 'Books';
    PageType = List;
    SourceTable = "BSB Book";
    Editable = false;
    CardPageId = "BSB Book Card";
    // Sorgt für Anzeige in der Suche
    UsageCategory = Lists;
    ApplicationArea = All;

    layout
    {
        area(Content)
        {
            repeater(Books)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field(ISBN; Rec.ISBN)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ISBN field.';
                }
                field(Author; Rec.Author)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Author field.';
                }
                field("No. of Pages"; Rec."No. of Pages")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the No. of Pages field.';
                    Visible = false;
                }
            }
        }
        area(FactBoxes)
        {
            systempart(Links; Links) { ApplicationArea = All; }
            systempart(Notes; Notes) { ApplicationArea = All; }
        }
    }
    actions
    {
        area(Promoted)
        {
            group(Category_Process)
            {
                actionref(CreateDemoBook_Promoted; CreateDemoBooks) { }
            }
        }
        area(Processing)
        {
            action(CreateDemoBooks)
            {
                ApplicationArea = All;
                Caption = 'Create Demo Books';
                Image = CreateDocuments;

                ToolTip = 'Executes the Create Demo Books action.';
                RunObject = codeunit "BSB Create Books";
            }

            action(BookSalesProcess)
            {
                Caption = 'Book Sales Process';
                ApplicationArea = All;
                Image = Process;
                ToolTip = 'Executes the Book Sales Process action.';

                trigger OnAction()
                var
                    BSBBookTypeProcess: interface "BSB Book Type Process";
                    BSBBookTypeProcessMgmt: Codeunit "BSB Book Type Process Mgmt.";
                begin
                    // BSBBookTypeProcessMgmt.GetHandler(Rec, BSBBookTypeProcess);
                    BSBBookTypeProcess := BSBBookTypeProcessMgmt.GetHandler(Rec);
                    BSBBookTypeProcess.StartDeployBook();
                    BSBBookTypeProcess.StartDeliverBook();
                end;
            }
        }
    }
}