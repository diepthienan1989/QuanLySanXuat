using QuanLySanXuat.ConnectDataBase;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuanLySanXuat
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string queryString = @"SELECT * FROM LenhSanXuat";
            var data = ConnectData.Execute_NonSQL(queryString);
        }

    }
}