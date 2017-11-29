using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Customer
{
    public partial class Hotels : System.Web.UI.Page
    {
        HotelManiaEntities db = new HotelManiaEntities();
        public string ErrMsg
        {
            set
            {
                string script = "<script language=\"javascript\"  type=\"text/javascript\">alert('" + value.Replace(@"\", @"\\").Replace("'", "`") + "');</script>";
                ScriptManager.RegisterStartupScript(Page, this.GetType(), "AlertMessage", script, false);
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    fillGrid();
                }
                catch (Exception ex)
                {
                    ErrMsg = ex.Message;
                }
            }

        }
        protected void fillGrid()
        {
            try
            {
                var dt = db.tblHotels.ToList();
                this.rvlHotels.DataSource = dt;
                this.rvlHotels.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }

        protected void rvlHotels_ItemCommand(object sender, Telerik.Web.UI.RadListViewCommandEventArgs e)
        {

        }
    }
}