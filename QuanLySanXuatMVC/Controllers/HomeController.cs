using Newtonsoft.Json;
using QuanLySanXuat.ConnectDataBase;
using QuanLySanXuatMVC.DAO;
using QuanLySanXuatMVC.EF;
using QuanLySanXuatMVC.Entity;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace QuanLySanXuatMVC.Controllers
{
    public class HomeController : Controller
    {
        HomeDAO dao = null;

        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Your application description page.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        [HttpPost]
        public string LoadData()
        {
            dao = new HomeDAO();
            List<Order> data = dao.getALl();
            return JsonConvert.SerializeObject(data);
        }

        [HttpPost]
        public bool AddOrder(Order order)
        {
            dao = new HomeDAO();
            order.OrderId = Guid.NewGuid();
            bool check = dao.Insert(order);
            return check;
        }
    }
}