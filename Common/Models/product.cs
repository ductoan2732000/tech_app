using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Models
{
    public class product
    {
        public int id { get; set; }
        public string images { get; set; }
        public double price { get; set; }
        public string description { get; set; }
        public string name { get; set; }
        public int number_of_likes { get; set; }
        public double rate { get; set; }
        public int stock { get; set; }
        public DateTime flash_sale_time { get; set; }
        public int flash_sale_percent { get; set; }
        public int number_of_rate { get; set; }
        public int? id_shop { get; set; }
    }
}
