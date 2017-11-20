using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Admin
{
    public partial class AddFood : System.Web.UI.Page
    {
        HotelManiaEntities db = new HotelManiaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblFood obj = new tblFood();
            obj.Name = this.txt_Food_name.Value;
            obj.PerPersonCharge = Convert.ToDecimal(this.txt_PPC.Value);
            obj.IsAvailible = this.checkbox_availability1.Checked;
            obj.Type = this.txt_Food_Type.Value;
            db.tblFoods.Add(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/FoodIndex.aspx");
        }
    }
}