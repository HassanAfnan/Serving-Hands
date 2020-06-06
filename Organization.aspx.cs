using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Serving_Hands
{
    public partial class Organization1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCategoriesId();
            }
        }
        Models.ClearTextBox tx = new Models.ClearTextBox();
        Organization or = new Organization();
        protected void Button1_Click(object sender, EventArgs e)
        {           
            or.Name = TextBox1.Text;
            or.requirement = TextBox2.Text;
            or.Add(or);
            tx.ClearTextbox(TextBox1,TextBox2);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            or.oid = Convert.ToInt32(DropDownList1.Text);
            or.Delete(or);
            tx.ClearTextbox(TextBox1, TextBox2);
        }
        private void GetCategoriesId()
        {
            DropDownList1.Items.Clear();
            foreach (var item in or.GetIds())
            {
                DropDownList1.Items.Add(Convert.ToString(item.oid));
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            or.oid = Convert.ToInt32(DropDownList1.Text);
            or.Name = TextBox1.Text;
            or.requirement = TextBox2.Text;
            or.Update(or);
            tx.ClearTextbox(TextBox1, TextBox2);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Organization org = new Organization();
            org.oid = Convert.ToInt32(DropDownList1.Text);
            org.Search(org);
            TextBox1.Text = org.Name;
            TextBox2.Text = org.requirement;
        }
    }
}