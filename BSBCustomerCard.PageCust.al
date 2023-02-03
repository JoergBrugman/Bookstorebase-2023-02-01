pagecustomization "BSB Customer Card" customizes "Customer Card"
{
    layout
    {
        modify("Location Code") { Visible = false; }
    }
    actions
    {
        movebefore(NewSalesQuote; NewSalesCreditMemo)
        movebefore(NewSalesQuote_Promoted; NewSalesCreditMemo_Promoted)
    }
}