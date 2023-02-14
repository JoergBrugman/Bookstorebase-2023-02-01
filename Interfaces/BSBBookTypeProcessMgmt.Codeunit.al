codeunit 50113 "BSB Book Type Process Mgmt."
{
    procedure GetHandler(BSBBook: Record "BSB Book") BSBBookTypeProcess: Interface "BSB Book Type Process"
    begin
        if BSBBook.IsEmpty then
            BSBBook.TestField("No.");

        BSBBookTypeProcess := BSBBook.Type;
    end;

    procedure GetHandler(BSBBook: Record "BSB Book"; var BSBBookTypeProcess: Interface "BSB Book Type Process")
    begin
        BSBBookTypeProcess := GetHandler(BSBBook);
    end;
}