using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Models
{
    public class shop
    {
        public int id { get; set; }
        public string shop_name { get; set; }
        public string description { get; set; }
        public double rate { get; set; }
        public int number_of_rate { get; set; }
        public string main_address { get; set; }
    }
}
