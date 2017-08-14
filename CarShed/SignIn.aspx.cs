using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace CarShed
{
    public partial class SignIn : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
             SqlConnection T_Con = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());

            SqlCommand com_Read = new SqlCommand("select * from Login",T_Con);

            SqlDataReader dr;

            T_Con.Open();

            dr = com_Read.ExecuteReader();

            while (dr.Read())
            {
                if (Login1.UserName == dr["Email"].ToString() && Login1.Password == dr["Pass"].ToString())
                {
                    Session.Add("abcd", Login1.UserName);
                    Session.Add("efgh", Login1.Password);
                    Server.Transfer("Home.aspx");
                }
                else
                {
                    e.Authenticated = false;
                }
            }

            dr.Close();
            T_Con.Close();
        }

        }
    }
