enum 50100 "BSB Book Type" implements "BSB Book Type Process"
{
    Extensible = true;
    // Wird verwendet, wenn ein Enum-Wert eines Enums oder einer Enumextension keine eigene Implemtierung setzt
    DefaultImplementation = "BSB Book Type Process" = "BSB Book Type Default Impl.";
    // Wir verwendet, wenn eine Dependend-App mit einer Enumextension wieder deinstalliert wurde
    UnknownValueImplementation = "BSB Book Type Process" = "BSB Book Type Unknown Impl.";

    value(0; " ") { Caption = 'None'; }
    value(1; Hardcover)
    {
        Caption = 'Hardcover';
        Implementation = "BSB Book Type Process" = "BSB Book Type Hardcover Impl.";
    }
    value(2; Paperback)
    {
        Caption = 'Paperback';
        Implementation = "BSB Book Type Process" = "BSB Book Type Paperback Impl.";
    }
}