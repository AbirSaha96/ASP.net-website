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
    public partial class Signup : System.Web.UI.Page
    {
        Connection obj = new Connection();
        String s;
        DataSet g = new DataSet();
        int a = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            g = obj.Data_inventer(" Select max(Uid) from one");
            s = g.Tables[0].Rows[0].ItemArray[0].ToString();
            a = Convert.ToInt32(s);
            a++;


            if (!IsPostBack)
            {
                status.Visible = false;

                dd.Items.Clear();
                mm.Items.Clear();
                yy.Items.Clear();

                dd.Items.Add("--DD-");
                for (int i = 1; i < 32; i++)
                {
                    dd.Items.Add(Convert.ToString(i));
                }
                mm.Items.Add("--MM-");
                for (int j = 1; j < 13; j++)
                {
                    mm.Items.Add(Convert.ToString(j));
                }

                yy.Items.Add("--YYYY-");
                for (int k = 1950; k < 2001; k++)
                {
                    yy.Items.Add(Convert.ToString(k));
                }

            }
        }

        protected void accreate_Click(object sender, EventArgs e)
        {
            SqlConnection m = new SqlConnection(ConfigurationManager.ConnectionStrings["sqlcon"].ToString());
            m.Open();
            SqlCommand s = new SqlCommand("Select Count(Email) from Login where Email='" + email.Text + "'");
            s.Connection = m;
            int c =Convert.ToInt32(s.ExecuteScalar().ToString());

            if (c == 0)
            {

                obj.InsUpDel("Insert into one values ('" + a + "','" + fname.Text + "','" + mname.Text + "','" + lname.Text + "','" + email.Text + "','" + sex.SelectedValue + "','" + dd.SelectedItem.Text + "/" + mm.SelectedItem.Text + "/" + yy.SelectedItem.Text + "')");
                obj.InsUpDel("Insert into Login values('" + a + "','" + email.Text + "','" + conpass.Text + "')");
                sex.ClearSelection();
                fname.Text = null;
                lname.Text = null;
                mname.Text = null;
                email.Text = null;
                pass.Text = null;
                conpass.Text = null;
                loginhyp.Visible = true;

            }
            else
            {
                status.Visible = true;
                loginhyp.Visible = true;

            }

        }
    }
}