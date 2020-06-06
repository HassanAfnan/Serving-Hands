using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Serving_Hands
{
    public class Organization : Models.ICrud<Organization>
    {
        public int oid { get; set; }
        public string Name { get; set; }
        public string requirement { get; set; }
        Models.Connection con = new Models.Connection();
        public void Add(Organization s)
        {
            con.GetConnection();
            con.ExecuteQuery("insert into Organization values ('"+s.Name+"','"+s.requirement+"')");
        }

        public void Delete(Organization a)
        {
            con.GetConnection();
            con.ExecuteQuery("delete Organization where oid ='"+a.oid+"'");
        }

        public void Update(Organization s)
        {
            con.GetConnection();
            con.ExecuteQuery("update Organization set nameOrganization='"+s.Name+"',requirement='"+s.requirement+"'where oid='"+s.oid+"'");
        }

        public List<Organization> GetIds()
        {
            List<Organization> a = new List<Organization>();
            string query = "select oid from Organization";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Organization s = new Organization();
                s.oid = (int)rd["oid"];
                a.Add(s);
            }
            rd.Close();
            return a;
        }

        public Organization Search(Organization d)
        {
            string query = "select * from Organization where oid ='"+d.oid+"'";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                d.Name = rd["nameOrganization"].ToString();
                d.requirement = rd["requirement"].ToString();                
            }
            rd.Close();
            return d;
        }

        public List<Organization> GetOrganization()
        {
            throw new NotImplementedException();
        }

        public StringReader Recipt(Organization a)
        {
            throw new NotImplementedException();
        }
    }
}