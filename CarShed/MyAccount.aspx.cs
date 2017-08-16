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
    public partial class MyAccount : System.Web.UI.Page
    {
        Connection c1 = new Connection();
        DataSet d1 = new DataSet();

        protected void Page_Load(object sender, EventArgs e)
        {           
            TextBox1.Text = Session["abcd"].ToString();

            String eid = TextBox1.Text;

            d1 = c1.Data_inventer("select * from one where Email = '" + eid + "'");

            TextBox2.Text = d1.Tables[0].Rows[0][1].ToString();
            TextBox3.Text = d1.Tables[0].Rows[0][2].ToString();
            TextBox4.Text = d1.Tables[0].Rows[0][3].ToString();
                      

           if (!IsPostBack)
            {
                DropDownList1.Items.Clear();
                DropDownList2.Items.Clear();
                DropDownList3.Items.Clear();
                DropDownList4.Items.Clear();

                DropDownList1.Items.Add(d1.Tables[0].Rows[0].ItemArray[5].ToString());

                String sex = d1.Tables[0].Rows[0].ItemArray[5].ToString();

                if (sex.Equals("Male"))
                {
                    DropDownList1.Items.Add("Female");
                }

                else
                {
                    DropDownList1.Items.Add("Male");
                }

                String dob = d1.Tables[0].Rows[0].ItemArray[6].ToString();
                
                String date = dob.Substring(0, 2);
                String day = dob.Substring(3, 2);
                String year = dob.Substring(6);

                DropDownList2.Items.Add(date);
                DropDownList3.Items.Add(day);
                DropDownList4.Items.Add(year);

                for (int i = 1; i <= 31; i++)
                {
                    if (i == Convert.ToInt32(date))
                    {
                        continue;
                    }

                    else
                    {
                        if (i < 10)
                        {
                            DropDownList2.Items.Add("0" + i);
                        }
                        else
                        {
                            DropDownList2.Items.Add(Convert.ToString(i));
                        }
                    }
                }

                for (int i = 1; i <= 12; i++)
                {
                    if (i == Convert.ToInt32(day))
                    {
                        continue;
                    }

                    else
                    {
                        if (i < 10)
                        {
                            DropDownList3.Items.Add("0" + i);
                        }
                        else
                        {
                            DropDownList3.Items.Add(Convert.ToString(i));
                        }
                    }
                }

                for (int i = 1950; i <= 2000; i++)
                {                    
                   if (i==Convert.ToInt32(year))
                   {
                       continue;
                   }
                    else
                   {
                       DropDownList4.Items.Add(Convert.ToString(i)); 
                   }
                }
            }

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String eid = TextBox1.Text;

            d1 = c1.Data_inventer("select Uid from one where Email = '" + eid + "'");
            String uid = d1.Tables[0].Rows[0].ItemArray[0].ToString();

            int u = Convert.ToInt32(uid);

            String fname = TextBox2.Text;
            String mname = TextBox3.Text;
            String lname = TextBox4.Text;

            String sex = DropDownList1.SelectedItem.ToString();

            String date = DropDownList2.SelectedItem.ToString();
            String month = DropDownList3.SelectedItem.ToString();
            String year = DropDownList4.SelectedItem.ToString();

            String dob = date + month + year;

            c1.InsUpDel("update One set Fname='" + fname + "',Mname='" + mname + "',Lname='" + lname + "',Sex='" + sex + "',dob='" + dob + "' where Uid=" + u);

            Label9.Visible = true;
        }
    }
}