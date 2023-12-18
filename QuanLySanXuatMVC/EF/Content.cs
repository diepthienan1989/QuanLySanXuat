namespace QuanLySanXuatMVC.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Content
    {
        public Guid ContentID { get; set; }

        public Guid ContainerID { get; set; }

        public byte ProgressStatus { get; set; }

        [StringLength(10)]
        public string InventoryStatus { get; set; }

        public Guid ProductID { get; set; }

        [StringLength(50)]
        public string Serial { get; set; }

        [StringLength(50)]
        public string Lot { get; set; }

        public int Quantity { get; set; }

        [StringLength(50)]
        public string UOM { get; set; }

        [StringLength(50)]
        public string ReceivingLocation { get; set; }

        [StringLength(50)]
        public string CurrentLocation { get; set; }

        public byte ContainerStatus { get; set; }

        public DateTime? ReceiveDate { get; set; }

        public virtual Container Container { get; set; }

        public virtual Product Product { get; set; }
    }
}
