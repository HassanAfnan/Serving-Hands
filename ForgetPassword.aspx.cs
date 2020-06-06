using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.ForgetPassword fp = new Models.ForgetPassword();
            fp.Email = TextBox1.Text;
            bool st = fp.SearchEmail(fp);
            if(st == true)
            {
                Response.Redirect("PasswordRecovery.aspx");
            }
            else
            {
                Response.Write("No Email Found");
            }
        }
    }
}