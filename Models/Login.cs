using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
namespace Serving_Hands.Models
{
    public class Login
    {
        public string Email { get; set; }
        public string Password { get; set; }
        public string role { get; set; }

        public bool cond = false;
        Connection con = new Connection();
        public void GetLogin(Login lo)
        {
            con.GetConnection();
            SqlCommand com = new SqlCommand("Select * from Register where Email ='" + lo.Email+"' and Pass = '"+lo.Password+"'",con.con);
            SqlDataReader rd = com.ExecuteReader();
            while(rd.Read())
            {
                string Email = rd["Email"].ToString();
                string Password = rd["Pass"].ToString();
                if(Email == lo.Email && Password == lo.Password)
                {
                    cond = true;
                    lo.role = rd["role"].ToString(); 
                }
            }
        }
    }
}