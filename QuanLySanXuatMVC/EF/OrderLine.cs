namespace QuanLySanXuatMVC.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class OrderLine
    {
        public Guid OrderLineID { get; set; }

        public Guid OrderID { get; set; }

        [StringLength(50)]
        public string OrderLineNo { get; set; }

        [StringLength(20)]
        public string OrderLineStatus { get; set; }

        [StringLength(50)]
        public string Facility { get; set; }

        [StringLength(50)]
        public string Warehouse { get; set; }

        [StringLength(50)]
        public string Location { get; set; }

        [StringLength(50)]
        public string ProductID { get; set; }

        [StringLength(50)]
        public string Priority { get; set; }

        [StringLength(50)]
        public string CompletedQuantity { get; set; }

        [StringLength(50)]
        public string UOM { get; set; }

        [StringLength(50)]
        public string Lot { get; set; }

    }
}
