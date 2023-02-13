codeunit 50100 "BSB Subscriber Store"
{
    var
        FavoriteBookHintErr: Label 'Do not forget to enter %1 in %2';

    [EventSubscriber(ObjectType::Table, Database::Customer, 'OnAfterInsertEvent', '', true, true)]
    procedure FavoriteBookHintCustOnAfterInsert(var Rec: Record Customer)
    begin
        If Rec."BSB Favorite Book No." = '' then
            Message(FavoriteBookHintErr,
                Rec.FieldCaption("BSB Favorite Book No."),
                Rec.TableCaption);
    end;

}