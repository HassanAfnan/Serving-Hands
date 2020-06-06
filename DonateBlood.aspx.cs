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
    public partial class DonateBlood : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetOrganizationName();
            }
        }
        Models.Blood bl = new Models.Blood();
        protected void Button1_Click(object sender, EventArgs e)
        {
            bl.BloodGroup = DropDownList1.Text;
            bl.organization = DropDownList2.Text;
            bl.date = TextBox1.Text;
            bl.Add(bl);
        }
        private void GetOrganizationName()
        {
            DropDownList2.Items.Clear();
            foreach (var item in bl.GetOrganization())
            {
                DropDownList2.Items.Add(Convert.ToString(item.organization));
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Models.BloodSlip s = new Models.BloodSlip();
            s.BloodGroup = DropDownList1.Text;
            s.Organization = DropDownList2.Text;
            s.dateOfDonate = TextBox1.Text;
            s.Recipt(s);
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 0f);
            HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            htmlparser.Parse(s.Recipt(s));
            pdfDoc.Close();
            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Slip_" + s.dateOfDonate + ".pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.Write(pdfDoc);
            Response.End();
        }
    }
}