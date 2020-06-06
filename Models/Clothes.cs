using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.IO;

namespace Serving_Hands.Models
{
    public class Clothes : Models.ICrud<Clothes>
    {
        public int cid { get; set; }
        public string clothes { get; set; }
        public string organization { get; set; }
        public string date { get; set; }
        Models.Connection con = new Models.Connection();
        public void Add(Clothes s)
        {
            con.GetConnection();
            con.ExecuteQuery("insert into clothes values (null,null,'"+Convert.ToInt16(s.clothes)+"','"+s.organization+"','"+s.date+"')");
        }

        public void Delete(Clothes s)
        {
            con.GetConnection();
            con.ExecuteQuery("delete clothes where cid ='" + s.cid + "'");
        }

        public List<Clothes> GetIds()
        {
            List<Clothes> a = new List<Clothes>();
            string query = "select cid from clothes";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Clothes s = new Clothes();
                s.cid = (int)rd["cid"];
                a.Add(s);
            }
            rd.Close();
            return a;
        }

        public List<Clothes> GetOrganization()
        {
            List<Clothes> a = new List<Clothes>();
            string query = "select nameOrganization from Organization";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Clothes b = new Clothes();
                b.organization = rd["nameOrganization"].ToString();
                a.Add(b);
            }
            rd.Close();
            return a;
        }

        public Clothes Search(Clothes s)
        {
            string query = "select * from clothes where cid ='" + s.cid + "'";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                s.clothes = rd["noclothes"].ToString();
                s.organization = rd["organization"].ToString();
                s.date = rd["date"].ToString();
            }
            rd.Close();
            return s;
        }

        public void Update(Clothes s)
        {
            con.GetConnection();
            con.ExecuteQuery("update clothes set rid = null ,oid = null,noclothes = '" + s.clothes + "',organization = '" + s.organization + "',date = '" + s.date + "' where cid = '" + s.cid + "'");
        }

        public StringReader Recipt(Clothes a)
        {
            throw new NotImplementedException();
        }
    }
}