using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Serving_Hands.Models
{
    public class ForgetPassword 
    {
        public string Email { get; set; }
        public bool cond = false;
        Connection con = new Connection();
        public bool SearchEmail(ForgetPassword f)
        {
            con.GetConnection();
            SqlCommand com = new SqlCommand("select Email from Register",con.con);
            SqlDataReader rd = com.ExecuteReader();
            while(rd.Read())
            {
                string email = rd["Email"].ToString();
                if(f.Email == email)
                {
                    cond = true;
                }
            }
            return cond;
        }
    }
}