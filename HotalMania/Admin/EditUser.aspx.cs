using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Admin
{
    public partial class EditUser : System.Web.UI.Page
    {
        HotelManiaEntities db = new HotelManiaEntities();
        public tblUser obj = null;
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
                        obj = db.tblUsers.Where(s => s.ID == ID).FirstOrDefault();
                        fillForm(obj);
                    }
                }
                catch (Exception ex)
                {

                    ErrMsg = ex.Message;
                }
            }
        }
        protected void fillForm(tblUser obj)
        {
            this.ID.Value = obj.ID.ToString();
            this.txt_user_name.Value = obj.UserName;
            this.txt_Email.Value = obj.Email;
            this.checkbox_Active.Checked = obj.IsActive.GetValueOrDefault();
            this.txt_Password.Value = obj.Password;
            this.txt_Tel.Value = obj.ContactNo;
            this.txt_Address.Value = obj.Address;
            if (obj.RoleID == 1)
            {
                this.checkbox_IsAdmin.Checked = true;
            }
            if (obj.RoleID == 2)
            {
                this.checkbox_IsAdmin.Checked = false;
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                long ID = Convert.ToInt64(this.ID.Value);
                obj = db.tblUsers.Where(s => s.ID == ID).FirstOrDefault();
                if (obj != null)
                {                    
                    obj.UserName = this.txt_user_name.Value;
                    obj.Email = this.txt_Email.Value;
                    obj.Password = this.txt_Password.Value;
                    obj.ContactNo = this.txt_Tel.Value;
                    obj.Address = this.txt_Address.Value;
                    obj.IsActive = this.checkbox_Active.Checked;
                    bool IsAdmin = this.checkbox_IsAdmin.Checked;
                    if (IsAdmin)
                    {
                        obj.RoleID = 1;
                    }
                    else
                    {
                        obj.RoleID = 2;
                    }                    
                    db.Entry(obj).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                    ErrMsg = "User Updated Successfully";
                    Response.Redirect("~/Admin/UserIndex.aspx");
                }
            }
            catch (Exception ex)
            {
                ErrMsg = ex.Message;
            }
        }
    }
}