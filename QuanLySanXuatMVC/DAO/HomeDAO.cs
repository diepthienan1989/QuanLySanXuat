using Newtonsoft.Json;
using QuanLySanXuatMVC.EF;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;

namespace QuanLySanXuatMVC.DAO
{
    public class HomeDAO
    {
        private DataTable db = new DataTable();

        public List<Order> getALl()
        {
            var data =  db.Orders.OrderBy(o => o.ScheduledReception).ToList();
            List<Order> list = new List<Order>();
            foreach (var item in data)
            {
                Order order = new Order();
                order.OrderId = item.OrderId;
                order.OrderStatus = item.OrderStatus;
                order.OrderNo = item.OrderNo;
                order.OrderType = item.OrderType;
                order.Supplier = item.Supplier;
                order.ScheduledReception = item.ScheduledReception;
                order.Priority = item.Priority;
                order.CompletedLines = item.CompletedLines;
                list.Add(order);
            }
            return list;
        }

        public bool Insert(Order order)
        {
            using (var dbContextTransaction = db.Database.BeginTransaction())
            {
                try
                {
                    db.Orders.Add(order);
                    db.SaveChanges();

                    // Nếu không có lỗi, commit dữ liệu
                    dbContextTransaction.Commit();
                    return true;
                }
                catch (Exception ex)
                {
                    // Nếu có lỗi, rollback dữ liệu
                    dbContextTransaction.Rollback();
                    return false;
                }
            }
        }
    }
}