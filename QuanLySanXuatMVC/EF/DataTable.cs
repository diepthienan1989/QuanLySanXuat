using System;
using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity;
using System.Linq;

namespace QuanLySanXuatMVC.EF
{
    public partial class DataTable : DbContext
    {
        public DataTable()
            : base("name=DataTable")
        {
        }

        public virtual DbSet<Container> Containers { get; set; }
        public virtual DbSet<Content> Contents { get; set; }
        public virtual DbSet<OrderLine> OrderLines { get; set; }
        public virtual DbSet<Order> Orders { get; set; }
        public virtual DbSet<Product> Products { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Container>()
                .Property(e => e.MasterContainer)
                .IsUnicode(false);

            modelBuilder.Entity<Container>()
                .Property(e => e.InventoryStatus)
                .IsFixedLength();

            modelBuilder.Entity<Container>()
                .Property(e => e.UOM)
                .IsUnicode(false);

            modelBuilder.Entity<Container>()
                .Property(e => e.ReceivingLocation)
                .IsFixedLength();

            modelBuilder.Entity<Container>()
                .Property(e => e.CurrentLocation)
                .IsFixedLength();

            modelBuilder.Entity<Container>()
                .Property(e => e.ContainerStatus)
                .IsFixedLength();

            modelBuilder.Entity<Content>()
                .Property(e => e.InventoryStatus)
                .IsFixedLength();

            modelBuilder.Entity<OrderLine>()
                .Property(e => e.OrderLineNo)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLine>()
                .Property(e => e.Facility)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLine>()
                .Property(e => e.Warehouse)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLine>()
                .Property(e => e.Location)
                .IsUnicode(false);

            modelBuilder.Entity<OrderLine>()
                .Property(e => e.UOM)
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.OrderStatus)
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.OrderNo)
                .IsUnicode(false);

            modelBuilder.Entity<Order>()
                .Property(e => e.Supplier)
                .IsUnicode(false);

        }
    }
}
