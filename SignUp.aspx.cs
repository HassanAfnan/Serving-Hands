using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

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
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Models.Users us = new Models.Users();
            us.Name = TextBox1.Text;
            us.Email = TextBox2.Text;
            us.Pass = TextBox3.Text;
            us.gender = TextBox4.Text;
            us.contact = TextBox5.Text;
            us.address = TextBox6.Text;
            us.date = TextBox7.Text;
            us.Signup(us);
            Response.Write("<script>alert('Successfully inserted')</script>");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Models.Users us = new Models.Users();
            us.Name = TextBox1.Text;
            us.Email = TextBox2.Text;
            us.Pass = TextBox3.Text;
            us.gender = TextBox4.Text;
            us.contact = TextBox5.Text;
            us.address = TextBox6.Text;
            us.date = TextBox7.Text;
            us.Signup(us);
            Response.Write("<script>alert('Successfully inserted')</script>");
        }
    }
}