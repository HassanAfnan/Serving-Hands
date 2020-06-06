using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Serving_Hands.Models
{
    public class Money:ICrud<Money>
    {
        public int mid { get; set; }
        public float amount { get; set; }
        public string organization { get; set; }
        public string date { get; set; }

        Models.Connection con = new Connection();
        public void Add(Money s)
        {
            con.GetConnection();
            con.ExecuteQuery("insert into money values(null,null,'"+s.amount+"','"+s.organization+"','"+s.date+"')");
        }

        public void Delete(Money s)
        {
            con.GetConnection();
            con.ExecuteQuery("delete money where mid = '"+s.mid+"'");
        }

        public List<Money> GetIds()
        {
            List<Money> a = new List<Money>();
            string query = "select mid from money";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Money s = new Money();
                s.mid = (int)rd["mid"];
                a.Add(s);
            }
            rd.Close(); 
            return a;
        }

        public List<Money> GetOrganization()
        {
            List<Money> a = new List<Money>();
            string query = "select nameOrganization from Organization";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Money b = new Money();
                b.organization = rd["nameOrganization"].ToString();
                a.Add(b);
            }
            rd.Close();
            return a;
        }

        public Money Search(Money s)
        {
            string query = "select * from money where mid ='" + s.mid + "'";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                s.amount = Convert.ToUInt32(rd["amount"]);
                s.organization = rd["organization"].ToString();
                s.date = rd["date"].ToString();
            }
            rd.Close();
            return s;
        }

        public void Update(Money s)
        {
            con.GetConnection();
            con.ExecuteQuery("update money set rid = null,oid = null,amount = '"+s.amount+"',organization = '"+s.organization+"',date = '"+s.date+"' where mid = '"+s.mid+"'");
        }

        public StringReader Recipt(Money a)
        {
            throw new NotImplementedException();
        }
    }
}