using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands.Models
{
    public partial class clothes : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                GetCategoriesId();
                GetOrganizationName();
            }
        }
        Models.ClearTextBox tx = new Models.ClearTextBox();
        Clothes cl = new Clothes();
        protected void Button1_Click(object sender, EventArgs e)
        {
            cl.clothes = TextBox1.Text;
            cl.organization = DropDownList2.Text;
            cl.date = TextBox2.Text;
            cl.Add(cl);
            tx.ClearTextbox(TextBox1,TextBox2);
        }
        private void GetOrganizationName()
        {
            DropDownList2.Items.Clear();
            foreach (var item in cl.GetOrganization())
            {
                DropDownList2.Items.Add(Convert.ToString(item.organization));
            }
        }
        private void GetCategoriesId()
        {
            DropDownList1.Items.Clear();
            foreach (var item in cl.GetIds())
            {
                DropDownList1.Items.Add(Convert.ToString(item.cid));
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            cl.cid = Convert.ToInt32(DropDownList1.Text);
            cl.Delete(cl);
            tx.ClearTextbox(TextBox1,TextBox2);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            cl.cid = Convert.ToInt32(DropDownList1.Text);
            cl.clothes = TextBox1.Text;
            cl.organization = DropDownList2.Text;
            cl.date = TextBox2.Text;
            cl.Update(cl);
            tx.ClearTextbox(TextBox1,TextBox2);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Models.Clothes b = new Models.Clothes();
            b.cid = Convert.ToInt32(DropDownList1.Text);
            b.Search(b);
            TextBox1.Text = b.clothes;
            DropDownList2.Text = b.organization;
            TextBox2.Text = b.date;
        }
    }
}