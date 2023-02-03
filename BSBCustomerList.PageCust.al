pagecustomization "BSB Customer List" customizes "Customer List"
{
    layout
    {
        modify("Location Code") { Visible = false; }
    }
    actions
    {
        movebefore(NewSalesQuote; NewSalesCrMemo)
        movebefore(NewSalesQuote_Promoted; NewSalesCrMemo_Promoted)
    }
}