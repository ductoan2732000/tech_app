using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Models
{
    public class user
    {
        public int id { get; set; }
        public string password { get; set; }
        public string avatar { get; set; }
        public string full_name { get; set; }
        public string phone { get; set; }
        public DateTime birthday { get; set; }
        public int gender { get; set; }
        public string email { get; set; }
        public string user_name { get; set; }
        public string main_address { get; set; }
        public int? id_shop { get; set; }
    }
}
