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
   
    public partial class Home : System.Web.UI.Page
    {
        //Connection obj = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {
          //String s = obj.Data_inventer("select picone , cname from cardetails").ToString();
          //DataList1.DataSource = s;
          //DataList1.DataBind();

            



        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        

       
    }
}