using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
             Models.Login log = new Models.Login();
            log.Email = TextBox1.Text;
            log.Password = TextBox2.Text;
            log.GetLogin(log);
            if(log.cond == true && log.role == "Admin")
            {
                Response.Write("<script>alert('Welcome Admin')</script>");
                log.Email = TextBox1.Text;
                log.Password = TextBox2.Text;
                Session["UserData"] = log;
                Response.Redirect("AdminPage.aspx");
            }
            else if (log.cond == true && log.role == "User")
            {
                Response.Write("<script>alert('Welcome User')</script>");
                log.Email = TextBox1.Text;
                log.Password = TextBox2.Text;
                Session["UserData"] = log;
                Response.Redirect("UserPage.aspx");
            }
            else
            {
                Response.Write("<script>alert('Invalid User Id Or Password')</script>");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgetPassword.aspx");
        }
    }
}