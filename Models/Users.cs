using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Serving_Hands.Models
{
    public class Users : Register
    {
        public string role = "User";
        public void Signup(Users u)
        {
            Connection con = new Connection();
            con.GetConnection();
            con.ExecuteQuery("insert into Register values('" + u.Name + "','" + u.Email + "','" + u.Pass + "','" + u.gender + "','" + u.contact + "','" + u.address + "','" + u.date + "','" + u.role + "')");
        }
    }
}