using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Text;
using System.Data;
using System.Web.UI;
namespace Serving_Hands.Models
{
    public class ClothesSlip:ICrud<ClothesSlip>
    {
        public string noOfclothes { get; set; }
        public string Organization { get; set; }
        public string date { get; set; }
        Connection con = new Connection();

        public void Add(ClothesSlip s)
        {
            throw new NotImplementedException();
        }

        public void Delete(ClothesSlip s)
        {
            throw new NotImplementedException();
        }

        public List<ClothesSlip> GetIds()
        {
            throw new NotImplementedException();
        }

        public List<ClothesSlip> GetOrganization()
        {
            List<ClothesSlip> a = new List<ClothesSlip>();
            string query = "select nameOrganization from Organization";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                ClothesSlip b = new ClothesSlip();
                b.Organization = rd["nameOrganization"].ToString();
                a.Add(b);
            }
            rd.Close();
            return a;
        }

        public StringReader Recipt(ClothesSlip a)
        {
            string Name = "Raza";
            Random rn = new Random();
            string orderNo = "1222" + rn.Next(1, 10).ToString();
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] {
                            new DataColumn("Number Of Clothes", typeof(int)),
                            new DataColumn("Organization", typeof(string)),
                            new DataColumn("Date Of Donation", typeof(string)),
                            });
            dt.Rows.Add(a.noOfclothes, a.Organization, a.date);

            using (StringWriter sw = new StringWriter())
            {
                using (HtmlTextWriter hw = new HtmlTextWriter(sw))
                {
                    StringBuilder sb = new StringBuilder();

                    //Generate Invoice (Bill) Header.
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                    sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Doner's Slip</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td><b>Serial No: </b>");
                    sb.Append(orderNo);
                    sb.Append("</td><td align = 'right'><b>Date: </b>");
                    sb.Append(DateTime.Now);
                    sb.Append(" </td></tr>");
                    sb.Append("<tr><td colspan = '2'><b> Name: </b>");
                    sb.Append(Name);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("<tr><td align = 'right' colspan = '");
                    sb.Append(dt.Columns.Count - 1);
                    sb.Append("'></td>");
                    sb.Append("<td>");
                    //sb.Append(dt.Compute("sum(Total)", ""));
                    sb.Append("</td>");
                    sb.Append("</tr></table>");
                    sb.Append("<br />");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>.................Thanks For Donating Blood..............</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>...........GOD LOVES THOSE WHO LOVES HIS FELLOWMEN..........</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>............................................................................................................................................................................</b></div>");
                    sb.Append("<br />");
                    sb.Append("<br />");
                    //Organization Slip
                    sb.Append("<table width='100%' cellspacing='0' cellpadding='2'>");
                    sb.Append("<tr><td align='center' style='background-color: #18B5F0' colspan = '2'><b>Organization Slip</b></td></tr>");
                    sb.Append("<tr><td colspan = '2'></td></tr>");
                    sb.Append("<tr><td><b>Serial No: </b>");
                    sb.Append(orderNo);
                    sb.Append("</td><td align = 'right'><b>Date: </b>");
                    sb.Append(DateTime.Now);
                    sb.Append(" </td></tr>");
                    sb.Append("<tr><td colspan = '2'><b> Name: </b>");
                    sb.Append(Name);
                    sb.Append("</td></tr>");
                    sb.Append("</table>");
                    sb.Append("<br />");

                    //Generate Invoice (Bill) Items Grid.
                    sb.Append("<table border = '1'>");
                    sb.Append("<tr>");
                    foreach (DataColumn column in dt.Columns)
                    {
                        sb.Append("<th style = 'background-color: #D20B0C;color:#ffffff'>");
                        sb.Append(column.ColumnName);
                        sb.Append("</th>");
                    }
                    sb.Append("</tr>");
                    foreach (DataRow row in dt.Rows)
                    {
                        sb.Append("<tr>");
                        foreach (DataColumn column in dt.Columns)
                        {
                            sb.Append("<td>");
                            sb.Append(row[column]);
                            sb.Append("</td>");
                        }
                        sb.Append("</tr>");
                    }
                    sb.Append("<tr><td align = 'right' colspan = '");
                    sb.Append(dt.Columns.Count - 1);
                    sb.Append("'></td>");
                    sb.Append("<td>");
                    //sb.Append(dt.Compute("sum(Total)", ""));
                    sb.Append("</td>");
                    sb.Append("</tr></table>");
                    sb.Append("<br />");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>.................Thanks For Donating Blood..............</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>...........GOD LOVES THOSE WHO LOVES HIS FELLOWMEN..........</b></div>");
                    sb.Append("<div align='center' style='background-color: #18B5F0' colspan = '2'><b>............................................................................................................................................................................</b></div>");
                    //Export HTML String as PDF.
                    StringReader sr = new StringReader(sb.ToString());
                    return sr;
                }
            }

        }

        public ClothesSlip Search(ClothesSlip s)
        {
            throw new NotImplementedException();
        }

        public void Update(ClothesSlip s)
        {
            throw new NotImplementedException();
        }
    }
}