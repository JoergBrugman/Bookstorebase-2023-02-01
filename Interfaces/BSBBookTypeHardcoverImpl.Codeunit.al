codeunit 50112 "BSB Book Type Hardcover Impl." implements "BSB Book Type Process"
{
    procedure StartDeployBook();
    begin
        Message('Aus dem Lager entsnehmen, ggf. bestellen');
    end;

    procedure StartDeliverBook();
    begin
        Message('Mit UPS Premium versenden');
    end;
}