using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Models
{
    public class orders
    {
        public int id { get; set; }
        public int id_user { get; set; }
        public string list_product { get; set; }
        public double total_money { get; set; }
        public int id_address { get; set; }
        public int shiping_method { get; set; }
        public int payment_method { get; set; }
        public int status { get; set; }
    }
}
