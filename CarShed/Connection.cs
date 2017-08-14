using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace CarShed
{
    public class Connection
    {
        public Connection()
        {
            //constructor
        }

        SqlConnection con;
        public SqlConnection con_open()
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
            return con;
        }

        public void InsUpDel(String st)
        {
            SqlCommand com = new SqlCommand();
            com.Connection = con_open();
            com.CommandText = st;
            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
        public DataSet Data_inventer(String s)
        {
            DataSet ds = new DataSet();
            SqlDataAdapter adpt = new SqlDataAdapter(s, con_open());
            adpt.Fill(ds);
            return ds;
        }
    }
}