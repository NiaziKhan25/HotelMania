using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotalMania.Customer
{
    public partial class Login : System.Web.UI.Page
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
            
        }
        protected void btn_login_Click(object sender, EventArgs e)
        {
            if (Session["User"] == null)
            {
                string email = this.email.Value;
                string password = this.password.Value;
                tblUser user = db.tblUsers.Single(a => a.Email == email && a.Password == password);
                if (user != null)
                {
                    if (user.IsActive.GetValueOrDefault())
                    {
                        Session["User"] = user;
                        if (user.RoleID == 1)
                        {
                            Response.Redirect("~/Admin/Dashboard.aspx");
                        }
                        else
                            Response.Redirect("~/Customer/Home.aspx");

                    }
                    else ErrMsg = "User is Not Active Now";
                }
                else if (user == null)
                {
                    ErrMsg = "UserName or Password Incorrect";
                }
            }
            else if (Session["User"] != null)
            {
                ErrMsg = " Your are already Log In";
            }
        }     
    }
}