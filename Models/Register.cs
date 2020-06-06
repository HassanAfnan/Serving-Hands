using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Serving_Hands.Models
{
    public class Register
    {
        public string Name { get; set; }
        public string Email { get; set; }
        public string Pass { get; set; }
        public string gender { get; set; }
        public string contact { get; set; }
        public string address { get; set; }
        public string date { get; set; }



    }
}