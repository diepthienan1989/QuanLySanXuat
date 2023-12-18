using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.OleDb;

namespace QuanLySanXuat.ConnectDataBase
{
    public class ConnectData
    {
        public static string source;
        private static SqlConnection con;

        //  public static DbDataAdapter adapter;
        static ConnectData()
        {
            source = "Data Source = ACER\\ACER ;Initial Catalog=TestAES;Persist Security Info=True;User ID=sa;Password=12345";
            con = new SqlConnection(source);
            try
            {
                con.Open();
            }
            catch (Exception ex)
            {
            }
        }

        public static DataTable DataTable_Sql(string sql)
        {
            try
            {
                using (SqlConnection conn = new SqlConnection(source))
                {
                    using (SqlDataAdapter dap = new SqlDataAdapter(sql, conn))
                    {
                        using (DataSet ds = new DataSet())
                        {
                            dap.Fill(ds);
                            conn.Close();
                            conn.Dispose();
                            return ds.Tables[0];
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static int Execute_NonSQL(string sql)
        {
            SqlConnection conn = new SqlConnection(source);
            SqlCommand cmd = new SqlCommand(sql, conn);
            int row = 0;
            conn.Open();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = sql;
            row = cmd.ExecuteNonQuery();
            conn.Dispose();
            conn.Close();
            return row;
        }

        public static DataTable connectDatabaseMDB(String ConnParam, String mQuery)
        {
            SqlConnection databaseConn;
            DataTable getDatatable;
            databaseConn = new SqlConnection(ConnParam);
            databaseConn.Open();
            SqlDataAdapter dAdapter = new SqlDataAdapter(mQuery, ConnParam);
            SqlCommandBuilder cBuilder = new SqlCommandBuilder(dAdapter);
            getDatatable = new DataTable();
            dAdapter.Fill(getDatatable);
            databaseConn.Close();
            return getDatatable;
        }

        public static void updateDatabase(String ConnParam, String mUpdate)
        {
            SqlConnection databaseConn;
            databaseConn = new SqlConnection(ConnParam);
            databaseConn.Open();
            SqlCommand command = new SqlCommand(mUpdate, databaseConn);
            command.ExecuteNonQuery();
            databaseConn.Close();
        }
        public static DataTable FillStore(string storename, params object[] obj)
        {
            SqlConnection conn = new SqlConnection(source);
            conn.Open();

            SqlCommand cmd = new SqlCommand(storename, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlCommandBuilder.DeriveParameters(cmd);
            for (int i = 1; i <= obj.Length; i++)
            {
                cmd.Parameters[i].Value = obj[i - 1];
            }
            SqlDataAdapter dap = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            cmd.ExecuteNonQuery();
            dap.Fill(ds);
            conn.Dispose();
            conn.Close();
            return ds.Tables[0];
        }
        public static Boolean InsertUpdateData(SqlCommand cmd)
        {
            SqlConnection con = new SqlConnection(source);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = con;
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            finally
            {
                con.Close();
                con.Dispose();
            }
        }
    }
}