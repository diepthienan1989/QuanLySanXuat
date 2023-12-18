using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;

namespace QuanLySanXuat.ConnectDataBase
{
    public class ConnectData
    {
        private static string sqlconnectStr = "Data Source=localhost;Initial Catalog=DataBaseName;Persist Security Info=True;User ID= User ;Password= password";

        public static int Execute_NonSQL(string sql)
        {
            var con = new SqlConnection(sqlconnectStr);
            SqlCommand cmd = new SqlCommand(sql, con);  // Use the existing connection instance
            int row = 0;

            try
            {
                con.Open();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = sql;
                row = cmd.ExecuteNonQuery();
            }
            catch(Exception e)
            {
                string msg = e.Message;
            }
            finally
            {
                con.Close();
            }

            return row;
        }

    }
}