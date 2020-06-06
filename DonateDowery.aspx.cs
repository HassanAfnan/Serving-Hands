using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


namespace Serving_Hands
{
    public partial class DonateDowery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetOrganizationName();
            }
        }
        Models.DowerySlip cs = new Models.DowerySlip();
        protected void Button1_Click(object sender, EventArgs e)
        {
            Models.Dowery c = new Models.Dowery();
            c.furniture = TextBox1.Text;
            c.appliances = TextBox2.Text;
            c.crokries = TextBox3.Text;
            c.organization = DropDownList2.Text;
            c.date = TextBox2.Text;
            c.Add(c);
        }
        private void GetOrganizationName()
        {
            DropDownList2.Items.Clear();
            foreach (var item in cs.GetOrganization())
            {
                DropDownList2.Items.Add(Convert.ToString(item.Organization));
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Models.DowerySlip s = new Models.DowerySlip();
            s.furniture = TextBox1.Text;
            s.appliances = TextBox2.Text;
            s.crokries = TextBox3.Text;
            s.Organization = DropDownList2.Text;
            s.date = TextBox4.Text;
            s.Recipt(s);
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(s.Recipt(s));
            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Slip_" + s.date + ".pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
    }
}