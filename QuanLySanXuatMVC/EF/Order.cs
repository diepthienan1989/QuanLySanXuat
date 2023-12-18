namespace QuanLySanXuatMVC.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Order
    {

        public Guid OrderId { get; set; }

        [StringLength(50)]
        public string OrderStatus { get; set; }

        [StringLength(50)]
        public string OrderNo { get; set; }

        [StringLength(20)]
        public string OrderType { get; set; }

        [StringLength(50)]
        public string Supplier { get; set; }

        public DateTime ScheduledReception { get; set; }

        [StringLength(20)]
        public string Priority { get; set; }

        public int? CompletedLines { get; set; }

    }
}
