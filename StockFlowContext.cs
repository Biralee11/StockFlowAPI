using Microsoft.EntityFrameworkCore;

namespace StockFlowAPI
{
    public class StockFlowContext : DbContext
    {
        public StockFlowContext(DbContextOptions<StockFlowContext> options) 
            : base(options)
        {
        }

        public DbSet<Product> Products { get; set; }
        public DbSet<Order> Orders { get; set; }
    }
}