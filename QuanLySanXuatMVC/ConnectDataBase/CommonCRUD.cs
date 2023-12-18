using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Reflection;
using System.Web.UI.WebControls;
using System.Configuration;

namespace QuanLySanXuat.ConnectDataBase
{
    public class CommonCRUD<T>
    {

        //Lay chuoi ket noi tu webconfig
        private static string GetConnectionString()
        {
            string connectionStringName = "ConnectString";

            try
            {
                // Lấy chuỗi kết nối từ tệp cấu hình
                string connectionString = ConfigurationManager.ConnectionStrings[connectionStringName].ConnectionString;
                return connectionString;
            }
            catch (Exception ex)
            {
                throw new Exception($"Error getting connection string: {ex.Message}");
            }
        }

        public static SqlConnection GetSqlConnection()
        {
            return new SqlConnection(GetConnectionString());
        }

        public static void ExecuteNonQuery(string query, SqlParameter[] parameters)
        {
            using (SqlConnection connection = GetSqlConnection())
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    if (parameters != null)
                    {
                        command.Parameters.AddRange(parameters);
                    }

                    command.ExecuteNonQuery();
                }
            }
        }

        public static void InsertData(string tableName, string name, int age)
        {
            string query = $"INSERT INTO {tableName} (Name, Age) VALUES (@Name, @Age)";
            SqlParameter[] parameters = {
            new SqlParameter("@Name", SqlDbType.NVarChar) { Value = name },
            new SqlParameter("@Age", SqlDbType.Int) { Value = age }
        };

            ExecuteNonQuery(query, parameters);
        }

        public static void UpdateData(string tableName, int id, string newName, int newAge)
        {
            string query = $"UPDATE {tableName} SET Name = @Name, Age = @Age WHERE ID = @ID";
            SqlParameter[] parameters = {
            new SqlParameter("@ID", SqlDbType.Int) { Value = id },
            new SqlParameter("@Name", SqlDbType.NVarChar) { Value = newName },
            new SqlParameter("@Age", SqlDbType.Int) { Value = newAge }
        };

            ExecuteNonQuery(query, parameters);
        }

        public static void DeleteData(string tableName, int id)
        {
            string query = $"DELETE FROM {tableName} WHERE ID = @ID";
            SqlParameter[] parameters = {
            new SqlParameter("@ID", SqlDbType.Int) { Value = id }
        };

            ExecuteNonQuery(query, parameters);
        }

        private void SetParameters(SqlCommand command, object[] parameters)
        {
            try
            {
                for (int i = 0; i < parameters.Length; i++)
                {
                    object parameter = parameters[i];
                    int index = i + 1;

                    SqlParameter sqlParameter = new SqlParameter();
                    sqlParameter.ParameterName = "@param" + index;

                    if (parameter is long)
                    {
                        sqlParameter.SqlDbType = SqlDbType.BigInt;
                        sqlParameter.Value = (long)parameter;
                    }
                    else if (parameter is string)
                    {
                        sqlParameter.SqlDbType = SqlDbType.VarChar;
                        sqlParameter.Value = (string)parameter;
                    }
                    else if (parameter is int)
                    {
                        sqlParameter.SqlDbType = SqlDbType.Int;
                        sqlParameter.Value = (int)parameter;
                    }
                    else if (parameter is DateTime)
                    {
                        sqlParameter.SqlDbType = SqlDbType.DateTime;
                        sqlParameter.Value = (DateTime)parameter;
                    }

                    command.Parameters.Add(sqlParameter);
                }
            }
            catch (Exception)
            {
                // Handle exception
            }
        }

        public void Update(string sql, params object[] parameters)
        {
            using (SqlConnection connection = GetSqlConnection())
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    SetParameters(command, parameters);
                    command.ExecuteNonQuery();
                }
            }
        }

        public long Insert(string sql, params object[] parameters)
        {
            using (SqlConnection connection = GetSqlConnection())
            {
                using (SqlCommand command = new SqlCommand(sql + "; SELECT SCOPE_IDENTITY();", connection))
                {
                    SetParameters(command, parameters);
                    return Convert.ToInt64(command.ExecuteScalar());
                }
            }
        }

        public int Count(string sql, params object[] parameters)
        {
            using (SqlConnection connection = GetSqlConnection())
            {
                using (SqlCommand command = new SqlCommand(sql, connection))
                {
                    SetParameters(command, parameters);
                    return Convert.ToInt32(command.ExecuteScalar());
                }
            }
        }



    }
}
