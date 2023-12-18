namespace QuanLySanXuatMVC.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Product
    {
        public Guid ProductId { get; set; }


        [StringLength(500)]
        public string ProductName { get; set; }

        [StringLength(50)]
        public string UOM { get; set; }

        [StringLength(500)]
        public string Description { get; set; }
    }
}
