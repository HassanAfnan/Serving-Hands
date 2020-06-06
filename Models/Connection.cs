using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Serving_Hands.Models
{
    public class Connection
    {
        public SqlConnection con = new SqlConnection();
        public SqlConnection GetConnection()
        {
            if(con.ConnectionString == "")
            {
                con = new SqlConnection("Data Source=DESKTOP-FVIQF0N;Initial Catalog=ServingHands;Integrated Security=True");
                con.Open();
            }
            return con;
        }
        public void ExecuteQuery(string query)
        {
            SqlCommand com = new SqlCommand(query,con);
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}