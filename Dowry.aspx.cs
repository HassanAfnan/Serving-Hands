using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class Dowry : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategoriesId();
                GetOrganizationName();
            }
        }
        Models.ClearTextBox tx = new Models.ClearTextBox();
        Models.Dowery dr = new Models.Dowery();
        protected void Button1_Click(object sender, EventArgs e)
        {
            dr.furniture = TextBox1.Text;
            dr.appliances = TextBox2.Text;
            dr.crokries = TextBox3.Text;
            dr.organization = DropDownList2.Text;
            dr.date = TextBox4.Text;
            dr.Add(dr);
            tx.ClearTextbox(TextBox1,TextBox2,TextBox3,TextBox4);
        }
        private void GetOrganizationName()
        {
            DropDownList2.Items.Clear();
            foreach (var item in dr.GetOrganization())
            {
                DropDownList2.Items.Add(Convert.ToString(item.organization));
            }
        }
        private void GetCategoriesId()
        {
            DropDownList1.Items.Clear();
            foreach (var item in dr.GetIds())
            {
                DropDownList1.Items.Add(Convert.ToString(item.did));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            dr.did = Convert.ToInt32(DropDownList1.Text);
            dr.Delete(dr);
            tx.ClearTextbox(TextBox1, TextBox2,TextBox3,TextBox4);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            dr.did = Convert.ToInt32(DropDownList1.Text);
            dr.furniture = TextBox1.Text;
            dr.appliances = TextBox2.Text;
            dr.crokries = TextBox3.Text;
            dr.organization = DropDownList2.Text;
            dr.date = TextBox4.Text;
            dr.Update(dr);
            tx.ClearTextbox(TextBox1,TextBox2,TextBox3,TextBox4);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            dr.did = Convert.ToInt32(DropDownList1.Text);
            dr.Search(dr);
            TextBox1.Text = dr.furniture;
            TextBox2.Text = dr.appliances;
            TextBox3.Text = dr.crokries;
            DropDownList2.Text = dr.organization;
            TextBox4.Text = dr.date;
        }
    }
}