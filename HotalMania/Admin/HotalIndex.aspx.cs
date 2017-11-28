using HotalMania;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace HotalMania.Admin
{
    public partial class HotalIndex : System.Web.UI.Page
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
                this.rgListing.DataSource = dt;
                this.rgListing.DataBind();
            }
            catch (Exception ex)
            {

                throw ex;
            }

        }
        protected void rgListing_UpdateCommand(object sender, Telerik.Web.UI.GridCommandEventArgs e)
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            string HotelID = (editedItem["Column0"].Controls[1] as TextBox).Text;
            string HotelName = (editedItem["Column1"].Controls[1] as TextBox).Text;
            string Location = (editedItem["Column2"].Controls[1] as TextBox).Text;
            string PHPPC = (editedItem["Column3"].Controls[1] as TextBox).Text;
            string TotalPersonCapacity = (editedItem["Column4"].Controls[1] as TextBox).Text;
            string ParkingCapacity = (editedItem["Column5"].Controls[1] as TextBox).Text;
            bool? IsAvailible = (editedItem["Column6"].Controls[1] as CheckBox).Checked;
            string Rating = (editedItem["Column7"].Controls[1] as TextBox).Text;
            long ID = Convert.ToInt64(HotelID);
            try
            {
                tblHotel obj = db.tblHotels.Where(s => s.ID == ID).FirstOrDefault();
                if (obj != null)
                {
                    obj.Name = HotelName;
                    obj.PerHourPPC = Convert.ToDecimal(PHPPC);
                    obj.Location = Location;
                    obj.TotalPersonCapacity = Convert.ToInt64(TotalPersonCapacity);
                    obj.ParkingCapacity= Convert.ToInt64(ParkingCapacity);
                    obj.IsAvailible = IsAvailible;
                    obj.Rating = Convert.ToInt32(Rating);
                }
                db.Entry(obj).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();

                fillGrid();
            }
            catch (Exception ex)
            {
                ErrMsg = ex.Message;
            }
        }
        protected void rgListing_EditCommand(object sender, GridCommandEventArgs e)
        {
            GridEditableItem editedItem = e.Item as GridEditableItem;
            string HotelID = (editedItem["Column0"].Controls[1] as TextBox).Text;
            long ID = Convert.ToInt64(HotelID);
            Response.Redirect("EditHotel.aspx?ID=" + ID.ToString());

        }
    }
}