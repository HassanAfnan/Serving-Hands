using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Serving_Hands.Models
{
    public class Dowery:ICrud<Dowery>
    {
        public int did { get; set; }
        public string furniture { get; set; }
        public string appliances { get; set; }
        public string crokries { get; set; }
        public string organization { get; set; }
        public string date { get; set; }

        Models.Connection con = new Models.Connection();
        public void Add(Dowery s)
        {
            con.GetConnection();
            con.ExecuteQuery("insert into Drowsy values(null,null,'"+s.furniture+"','"+s.appliances+"','"+s.crokries+"','"+s.organization+"','"+s.date+"')");
        }

        public void Update(Dowery s)
        {
            con.GetConnection();
            con.ExecuteQuery("update Drowsy set rid = null ,oid = null,furniture = '" + s.furniture +"',appliances ='"+s.appliances+ "',crockeries='"+s.crokries+"',organization = '" + s.organization + "',date = '" + s.date + "' where did = '" + s.did + "'");
        }

        public void Delete(Dowery s)
        {
            con.GetConnection();
            con.ExecuteQuery("delete Drowsy where did ='" + s.did + "'");
        }

        public Dowery Search(Dowery s)
        {
            string query = "select * from Drowsy where did ='" + s.did + "'";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                s.furniture = rd["furniture"].ToString();
                s.appliances = rd["appliances"].ToString();
                s.crokries = rd["crockeries"].ToString();
                s.organization = rd["organization"].ToString();
                s.date = rd["date"].ToString();
            }
            rd.Close();
            return s;
        }

        public List<Dowery> GetIds()
        {
            List<Dowery> a = new List<Dowery>();
            string query = "select did from Drowsy";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Dowery s = new Dowery();
                s.did = (int)rd["did"];
                a.Add(s);
            }
            rd.Close();
            return a;
        }

        public List<Dowery> GetOrganization()
        {
            List<Dowery> a = new List<Dowery>();
            string query = "select nameOrganization from Organization";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Dowery b = new Dowery();
                b.organization = rd["nameOrganization"].ToString();
                a.Add(b);
            }
            rd.Close();
            return a;
        }

        public StringReader Recipt(Dowery a)
        {
            throw new NotImplementedException();
        }
    }
}