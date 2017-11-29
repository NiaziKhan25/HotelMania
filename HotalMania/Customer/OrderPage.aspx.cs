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
        public tblHotel obj = null;
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
            long ID = -1;
            if (!IsPostBack)
            {
                try
                {
                    if (Request.QueryString.Count > 0)
                    {
                        if (Request["ID"] != null)
                            ID = Int32.Parse(Request.QueryString["ID"]);
                    }
                    if (ID != -1)
                    {
                        obj = db.tblHotels.Where(s => s.ID == ID).FirstOrDefault();
                        this.order_hotal_name.InnerHtml = obj.Name;
                        this.hotal_name.Value = obj.Name;
                        this.total_capacity.Value = obj.TotalPersonCapacity+"";
                        this.per_h_pcc.Value = obj.PerHourPPC + "";
                        this.parking_capacity.Value = obj.ParkingCapacity + "";
                     }
                }
                catch (Exception ex)
                {

                    ErrMsg = ex.Message;
                }
            }

        }

        protected void btn_check_Click(object sender, EventArgs e)
          {
          }
        public void fillHotalDetails()
        {

        }
    }
}