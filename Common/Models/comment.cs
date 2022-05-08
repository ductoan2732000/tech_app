using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Models
{
    public class comment
    {
        public int id { get; set; }
        public int id_user { get; set; }
        public int id_product { get; set; }
        public string content { get; set; }
        public int like { get; set; }
    }
}
