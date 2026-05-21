namespace StockFlowAPI
{
    public class OrderDto
    {
        public int ProductId { get; set; }
        public int Quantity { get; set; }
        public string Status { get; set; } = string.Empty;
    }
}