using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Admin
{
    public partial class HotalIndex : System.Web.UI.Page
    {
        HotelManiaEntities db = new HotelManiaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //var dt=db.tblHotels.ToList();
                //this.tbl1.DataBinding = dt;
               
                this.tbl1.DataBind();
            }
           
        }
    }
}