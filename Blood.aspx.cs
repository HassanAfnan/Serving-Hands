using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class Blood : System.Web.UI.Page
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
        Models.Blood bl = new Models.Blood();
        private void GetOrganizationName()
        {
            DropDownList2.Items.Clear();
            foreach (var item in bl.GetOrganization())
            {
                DropDownList2.Items.Add(Convert.ToString(item.organization));
            }
        }
        private void GetCategoriesId()
        {
            DropDownList3.Items.Clear();
            foreach (var item in bl.GetIds())
            {
                DropDownList3.Items.Add(Convert.ToString(item.bid));
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            bl.BloodGroup = DropDownList1.Text;
            bl.organization = DropDownList2.Text;
            bl.date = TextBox1.Text;
            bl.Add(bl);
            tx.ClearTextbox(TextBox1);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            bl.bid = Convert.ToInt32(DropDownList3.Text);
            bl.Delete(bl);
            tx.ClearTextbox(TextBox1);
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            bl.bid = Convert.ToInt32(DropDownList3.Text);
            bl.BloodGroup = DropDownList1.Text;
            bl.organization = DropDownList2.Text;
            bl.date = TextBox1.Text;
            bl.Update(bl);
            tx.ClearTextbox(TextBox1);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Models.Blood b = new Models.Blood();
            b.bid = Convert.ToInt32(DropDownList3.Text);
            b.Search(b);
            DropDownList1.Text = b.BloodGroup;
            DropDownList2.Text = b.organization;
            TextBox1.Text = b.date;
        }
    }
}