using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Serving_Hands.Models
{
    public class Admin : Register
    {
        public string role = "Admin";
        public void Signup(Admin a)
        {
            Connection con = new Connection();
            con.GetConnection();
            con.ExecuteQuery("insert into Register values('"+a.Name+"','"+a.Email+"','"+a.Pass+"','"+a.gender+"','"+a.contact+"','"+a.address+"','"+a.date+"','"+a.role+"')");
        }
    }
}