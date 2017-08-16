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
    public partial class details : System.Web.UI.Page
    {
        Connection obj =new Connection();
        String s;
        String q;
        DataSet g = new DataSet();
        int a = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

            g = obj.Data_inventer(" Select max(bid) from buydetails");
            s = g.Tables[0].Rows[0].ItemArray[0].ToString();
            a = Convert.ToInt32(s);
                a++;
            

            q = Request.QueryString["cid"].ToString();
            //T1.Text = Session["abcd"].ToString();
            //e = T1.Text;

         

        }

        protected void buy_Click(object sender, EventArgs e)
        {
        
           
            obj.InsUpDel("Insert into buydetails('"+a+"')");
            obj.InsUpDel("Update buydetails set Uid='Uid' where bid='"+a+"' select Uid from one where Email='" +e+ "'");
            //obj.InsUpDel("Update buydetails set cid='cid', pic= 'picone', cname='cname', cmaker='cmaker', tprice='price' where bid='"+a+"' select cid, pic, cname, cmaker, price from cardetails where cid='" + q + "'");


            Response.Redirect("cart.aspx", false);
        }

    }
}