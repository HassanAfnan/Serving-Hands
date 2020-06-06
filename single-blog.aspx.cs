using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Serving_Hands
{
    public partial class single_blog : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection();
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter sdr = new SqlDataAdapter();
        DataSet ds = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            Show();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Comment;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("insert into Com values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + DateTime.Now + "')", con);
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect(Request.Url.AbsoluteUri);
        }
        protected void Show()
        {

            SqlConnection con = new SqlConnection("Data Source=.;Initial Catalog=Comment;Integrated Security=True");
            con.Open();
            SqlCommand com = new SqlCommand("insert into Com values('" + TextBox1.Text + "','" + TextBox3.Text + "','" + DateTime.Now + "')", con);
            cmd.CommandText = "select * from Com order by date desc";
            cmd.Connection = con;
            sdr.SelectCommand = cmd;
            sdr.Fill(ds, "Comment");
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }
    }
}