using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Telerik.Web.UI;

namespace HotalMania.Admin
{
    public partial class FoodIndex : System.Web.UI.Page
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
            if(!IsPostBack)
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
                var dt = db.tblFoods.ToList();
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
            string FoodID = (editedItem["Column0"].Controls[1] as TextBox).Text;
            string FoodName = (editedItem["Column1"].Controls[1] as TextBox).Text;
            string PerPersonCharge = (editedItem["Column2"].Controls[1] as TextBox).Text;
            string FoodType = (editedItem["Column3"].Controls[1] as TextBox).Text;
            bool? IsAvailible = (editedItem["Column4"].Controls[1] as CheckBox).Checked;
            long ID = Convert.ToInt64(FoodID);
            try
            {
                tblFood obj = db.tblFoods.Where(s => s.ID == ID).FirstOrDefault();
                if (obj != null)
                {
                    obj.Name = FoodName;
                    obj.PerPersonCharge = Convert.ToDecimal(PerPersonCharge);
                    obj.Type = FoodType;
                    obj.IsAvailible = IsAvailible;
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
            string FoodID = (editedItem["Column0"].Controls[1] as TextBox).Text;
            long ID = Convert.ToInt64(FoodID);
            Response.Redirect("EditFood.aspx?ID=" + ID.ToString());

        }
    }
}