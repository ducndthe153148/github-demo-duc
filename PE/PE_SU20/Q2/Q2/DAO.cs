using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;

namespace TedShopWeb.DAL
{
    class DAO
    {
        static string strConn = ConfigurationManager.ConnectionStrings["PRN292_Summer2020_B1"].ConnectionString;
        static public DataTable GetDataTable(SqlCommand cmd)
        {
            try
            {
                SqlConnection conn = new SqlConnection(strConn);
                cmd.Connection = conn;
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataTable dt = new DataTable();
                da.Fill(dt);
                return dt;
                
            }
            catch (Exception ex)
            {

                MessageBox.Show(ex.Message);
                return null;

            }


        }
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

                  MessageBox.Show(ex.Message);
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

                MessageBox.Show(ex.Message);
                return false;

            }

        }

    }
}
