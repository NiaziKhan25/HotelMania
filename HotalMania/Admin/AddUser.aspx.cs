using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Admin
{
    public partial class AddUser : System.Web.UI.Page
    {
        HotelManiaEntities db = new HotelManiaEntities();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            tblUser obj = new tblUser();
            obj.UserName = this.txt_user_name.Value;
            obj.Email = this.txt_Email.Value;
            obj.Password = this.txt_Password.Value;
            obj.ContactNo = this.txt_Tel.Value;
            obj.Address = this.txt_Address.Value;
            bool IsAdmin=this.checkbox_IsAdmin.Checked;
            if (IsAdmin)
            {
                obj.RoleID = 1;
            }
            else
            {
                obj.RoleID = 2;
            }
            db.tblUsers.Add(obj);
            db.SaveChanges();
            Response.Redirect("~/Admin/UserIndex.aspx");
        }
    }
}