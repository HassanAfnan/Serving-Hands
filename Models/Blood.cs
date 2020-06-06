using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;

namespace Serving_Hands.Models
{
    public class Blood:ICrud<Blood>
    {
        public int bid { get; set; }
        public string BloodGroup { get; set; }
        public string organization { get; set; }
        public string date { get; set; }

        Connection con = new Connection();
        public void Add(Blood s)
        {
            con.GetConnection();
            con.ExecuteQuery("insert into Blood values(null,null,'"+s.BloodGroup+ "','" + s.organization + "','" + s.date + "')");
        }

        public void Delete(Blood s)
        {
            con.GetConnection();
            con.ExecuteQuery("delete Blood where bid ='"+s.bid+"'");
        }

        public List<Blood> GetIds()
        {
            List<Blood> a = new List<Blood>();
            string query = "select bid from blood";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Blood s = new Blood();
                s.bid = (int)rd["bid"];
                a.Add(s);
            }
            rd.Close();
            return a;
        }

        public Blood Search(Blood s)
        {
            string query = "select * from blood where bid ='" + s.bid + "'";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                s.BloodGroup = rd["bloodgroup"].ToString();
                s.organization = rd["organization"].ToString();
                s.date = rd["date"].ToString();
            }
            rd.Close();
            return s;
        }

        public void Update(Blood s)
        {
            con.GetConnection();
            con.ExecuteQuery("update blood set rid = null ,oid = null,bloodgroup = '"+s.BloodGroup+"',organization = '"+s.organization+"',date = '"+s.date+"' where bid = '"+s.bid+"'");
        }

        public List<Blood> GetOrganization()
        {
            List<Blood> a = new List<Blood>();
            string query = "select nameOrganization from Organization";
            SqlCommand com = new SqlCommand(query, con.GetConnection());
            SqlDataReader rd = com.ExecuteReader();
            while (rd.Read())
            {
                Blood b = new Blood();
                b.organization = rd["nameOrganization"].ToString();
                a.Add(b);
            }
            rd.Close();
            return a;
        }

        public StringReader Recipt(Blood a)
        {
            throw new NotImplementedException();
        }
    }
}