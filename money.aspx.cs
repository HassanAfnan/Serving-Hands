using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class money : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategoriesId();
                GetOrganizationName();
            }
        }
        Models.Money mo = new Models.Money();
        Models.ClearTextBox tx = new Models.ClearTextBox();
        protected void Button1_Click(object sender, EventArgs e)
        {
            mo.amount = Convert.ToInt32(TextBox1.Text);
            mo.organization = DropDownList2.Text;
            mo.date = TextBox2.Text;
            mo.Add(mo);
            tx.ClearTextbox(TextBox1,TextBox2);
        }
        private void GetCategoriesId()
        {
            DropDownList1.Items.Clear();
            foreach (var item in mo.GetIds())
            {
                DropDownList1.Items.Add(Convert.ToString(item.mid));
            }
        }
        private void GetOrganizationName()
        {
            DropDownList2.Items.Clear();
            foreach (var item in mo.GetOrganization())
            {
                DropDownList2.Items.Add(Convert.ToString(item.organization));
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            mo.mid = Convert.ToInt32(DropDownList1.Text);
            mo.Delete(mo);
            tx.ClearTextbox(TextBox1,TextBox2);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            mo.mid = Convert.ToInt32(DropDownList1.Text);
            mo.amount = Convert.ToInt32(TextBox1.Text);
            mo.organization = DropDownList2.Text;
            mo.date = TextBox2.Text;
            mo.Update(mo);
            tx.ClearTextbox(TextBox1,TextBox2);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            mo.mid = Convert.ToInt32(DropDownList1.Text);
            mo.Search(mo);
            TextBox1.Text = mo.amount.ToString();
            DropDownList2.Text = mo.organization;
            TextBox2.Text = mo.date;
        }
    }
}