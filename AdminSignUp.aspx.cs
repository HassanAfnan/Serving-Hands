using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class AdminSignUp : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        Models.ClearTextBox ct = new Models.ClearTextBox();
        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Admin ad = new Models.Admin();
            ad.Name = TextBox1.Text;
            ad.Email = TextBox2.Text;
            ad.Pass = TextBox3.Text;
            ad.gender = TextBox4.Text;
            ad.contact = TextBox5.Text;
            ad.address = TextBox6.Text;
            ad.date = TextBox7.Text;
            ad.Signup(ad);
            Response.Write("<script>alert('Successfully inserted')</script>");
            ct.ClearTextbox(TextBox1,TextBox2,TextBox3,TextBox4,TextBox5,TextBox6,TextBox7);
        }
    }
}