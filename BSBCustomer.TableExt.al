tableextension 50100 "BSB Customer" extends Customer
{
    fields
    {
        field(50100; "BSB Favorite Book No."; Code[20])
        {
            Caption = 'Favorite Book No.';
            TableRelation = "BSB Book";
            //TODO Es sollen keine gesperrten Bücher ausgewählt werden können
        }
        field(50101; "BSB Favorite Book Description"; Text[100])
        {
            Caption = 'Favorite Book Description';
            Editable = false;
            FieldClass = FlowField;
            // CalcFormula = lookup ("BSB Book".Description where ("No." = field ("Favorite Book No.")));
            CalcFormula = lookup("BSB Book".Description where("No." = field("BSB Favorite Book No.")));
        }

    }
}