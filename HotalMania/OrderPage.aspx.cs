using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania
{
    public partial class OrderPage : System.Web.UI.Page
    {
        int hotalID;
        protected void Page_Load(object sender, EventArgs e)
        {
            hotalID = Int32.Parse(Request.QueryString["ID"]);
        }
    }
}