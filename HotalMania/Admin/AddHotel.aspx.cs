using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Admin
{
    public partial class AddHotel : System.Web.UI.Page
    {
        HotelManiaEntities db = new HotelManiaEntities();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblHotel obj = new tblHotel();
            obj.Name = this.txt_hotel_name.Value;
            obj.ParkingCapacity = Convert.ToInt64(this.txt_parking_capacity.Value);
            obj.PerHourPPC = Convert.ToDecimal(this.txt_PPC.Value);
            obj.Rating = 4;
            obj.TotalPersonCapacity = Convert.ToInt64(this.txt_guest_capacity.Value);
            obj.IsAvailible = this.checkbox_availability1.Checked;
            //obj.IsAvailible = true;
            obj.Location = this.txt_Location.Value;
            db.tblHotels.Add(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/HotalIndex.aspx");
        }
    }
}