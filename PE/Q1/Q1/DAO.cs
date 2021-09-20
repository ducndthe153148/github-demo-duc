using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Q1
{
    class DAO
    {
        static string strConn = ConfigurationManager.ConnectionStrings["PE_2020ConnectionString"].ConnectionString;
        static public DataTable GetDataTable(string sqlSelect)
        {
            try
              {
                    SqlConnection conn = new SqlConnection(strConn);
                    SqlDataAdapter da = new SqlDataAdapter(sqlSelect, conn);
                    DataSet ds = new DataSet();
                    da.Fill(ds);
                    return ds.Tables[0];
              }
            catch (Exception ex)
              {
                  return null;

              }


        }

        static public bool UpdateTable(SqlCommand cmd)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                cmd.Connection = conn;
                conn.Open();
                cmd.ExecuteNonQuery();
                conn.Close();
                return true;
                
            }
            catch (Exception ex)
            {
                return false;

            }

        }

    }
}
