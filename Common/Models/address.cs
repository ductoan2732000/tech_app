using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Models
{
    public class address
    {
        public int id { get; set; }
        public int id_user { get; set; }
        public string province_id { get; set; }
        public string district_id { get; set; }
        public string ward_id { get; set; }
        public string address_detail { get; set; }
        public string name { get; set; }
        public string phone { get; set; }
    }
}
