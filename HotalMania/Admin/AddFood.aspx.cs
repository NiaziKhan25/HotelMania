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
            long MaxFileSize = 10485760;

            tblFood obj = new tblFood();
            obj.Name = this.txt_Food_name.Value;
            obj.PerPersonCharge = Convert.ToDecimal(this.txt_PPC.Value);
            obj.IsAvailible = this.checkbox_availability1.Checked;
            obj.Type = this.txt_Food_Type.Value;
            db.tblFoods.Add(obj);
            db.SaveChanges();

            string sFileName = DateTime.Now.Day.ToString() + DateTime.Now.Month.ToString() + DateTime.Now.Year.ToString();
            sFileName += DateTime.Now.Hour.ToString() + DateTime.Now.Minute.ToString() + DateTime.Now.Second.ToString();
            sFileName += DateTime.Now.Millisecond.ToString();
            string sFrontImageName = sFileName + "_Front" + System.IO.Path.GetExtension(fuFrontImage.FileName).ToLower();

            if (fuFrontImage.HasFile)
            {
                if (!fileUpload(fuFrontImage, sFrontImageName, Server.MapPath("~/FrontImages/"), MaxFileSize))
                    throw new Exception("Error In Front Image Uploading");
            }
            else
                sFrontImageName = string.Empty;
            tblImage img = new tblImage();
            img.Image = sFrontImageName;
            img.Description = "Food Image";
            img.HotelID = obj.ID;
            db.tblImages.Add(img);
            db.SaveChanges();
            Response.Redirect("~/Admin/FoodIndex.aspx");
        }
        protected bool fileUpload(FileUpload fu, string FileName, string ServerPath, long MaxFileSize)
        {
            try
            {
                long fileSize = fu.PostedFile.ContentLength;

                if (fileSize < MaxFileSize)
                {
                    fu.PostedFile.SaveAs(ServerPath + FileName);
                    return true;
                }
                else
                    throw new Exception("Error: File is not uploaded. File Size is too large");
            }
            catch (Exception ex)
            {
                throw (ex);
            }
        }
    }
}