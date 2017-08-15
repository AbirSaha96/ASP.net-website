using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CarShed
{
    public partial class brands : System.Web.UI.Page
    {
        String s;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void ferrari_Click(object sender, ImageClickEventArgs e)
        {
            s = ferrari.ToolTip.ToString();
            DataList1.Visible = true;
            

        }

        protected void mitsu_Click(object sender, ImageClickEventArgs e)
        {
            s = mitsu.ToolTip.ToString();
            DataList1.Visible = true;

        }

        protected void dodge_Click(object sender, ImageClickEventArgs e)
        {
            s = dodge.ToolTip.ToString();
            DataList1.Visible = true;
            
        }

        protected void ply_Click(object sender, ImageClickEventArgs e)
        {
            s = ply.ToolTip.ToString();
            DataList1.Visible = true;
            
        }

        protected void lambo_Click(object sender, ImageClickEventArgs e)
        {
            s = lambo.ToolTip.ToString();
            DataList1.Visible = true;
            
        }
    }
}