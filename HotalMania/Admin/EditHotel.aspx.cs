﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Admin
{
    public partial class EditHotel : System.Web.UI.Page
    {
        HotelManiaEntities db = new HotelManiaEntities();
        public tblHotel obj = null;
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
                            long.TryParse(Request["ID"].Trim(), out ID);
                    }
                    if (ID != -1)
                    {
                        obj = db.tblHotels.Where(s => s.ID == ID).FirstOrDefault();
                        fillForm(obj);
                    }
                }
                catch (Exception ex)
                {

                    ErrMsg = ex.Message;
                }
            }
        }
        protected void fillForm(tblHotel obj)
        {
            this.ID.Value = obj.ID.ToString();
            this.txt_hotel_name.Value = obj.Name;
            this.txt_PPC.Value = obj.PerHourPPC.ToString();
            this.checkbox_availability1.Checked = obj.IsAvailible.GetValueOrDefault();
            this.txt_Location.Value = obj.Location;
            this.txt_parking_capacity.Value = obj.ParkingCapacity.ToString();
            this.txt_guest_capacity.Value = obj.TotalPersonCapacity.ToString();
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            long MaxFileSize = 10485760;
            try
            {
                long ID = Convert.ToInt64(this.ID.Value);
                obj = db.tblHotels.Where(s => s.ID == ID).FirstOrDefault();
                if (obj != null)
                {
                    obj.Name = this.txt_hotel_name.Value;
                    obj.ParkingCapacity = Convert.ToInt64(this.txt_parking_capacity.Value);
                    obj.PerHourPPC = Convert.ToDecimal(this.txt_PPC.Value);
                    obj.Rating = 4;
                    obj.TotalPersonCapacity = Convert.ToInt64(this.txt_guest_capacity.Value);
                    obj.IsAvailible = this.checkbox_availability1.Checked;
                    obj.Location = this.txt_Location.Value;
                    db.Entry(obj).State = System.Data.Entity.EntityState.Modified;
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

                    ErrMsg = "Hotel Updated Successfully";
                    Response.Redirect("~/Admin/HotalIndex.aspx");
                }
            }
            catch (Exception ex)
            {
                ErrMsg = ex.Message;
            }
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