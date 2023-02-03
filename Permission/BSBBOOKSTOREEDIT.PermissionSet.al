permissionset 50100 "BSB BOOKSTORE, EDIT"
{
    Caption = 'Edit and Create Books etc';
    // Assignable = true;
    Permissions = table "BSB Book" = X,
        tabledata "BSB Book" = RIMD,
        page "BSB Book Card" = X,
        page "BSB Book Factbox" = X,
        page "BSB Book List" = X;
}