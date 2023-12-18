namespace QuanLySanXuatMVC.EF
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    public partial class Container
    {
        public Guid ContainerID { get; set; }

        public Guid OrderLineID { get; set; }

        public byte ProgressStatus { get; set; }

        [StringLength(50)]
        public string MasterContainer { get; set; }

        public int ChildContainerCount { get; set; }

        [StringLength(10)]
        public string InventoryStatus { get; set; }

        public int Quantity { get; set; }

        [StringLength(50)]
        public string UOM { get; set; }

        [StringLength(10)]
        public string ReceivingLocation { get; set; }

        [StringLength(10)]
        public string CurrentLocation { get; set; }

        [StringLength(10)]
        public string ContainerStatus { get; set; }

        public DateTime? ReceiveDate { get; set; }

    }
}
