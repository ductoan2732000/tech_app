using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Utils
{
    public class TAScript
    {
        public TAScript()
        {
            this.selectPath = new List<TASelect>();
            this.fromPath = "";
            this.wherePath = new List<TAWhere>();
        }
        public List<TASelect> selectPath { get; set; }
        public string fromPath { get; set; }
        public List<TAWhere> wherePath { get; set; }
    }
    public class TASelect
    {
        public TASelect(string table, string column)
        {
            this.table = table;
            this.column = column;
        }
        public string table { get; set; }
        public string column { get; set; }
    }
    public class TAWhere
    {
        public TAWhere(string table, string column, string opera, string value, string concat)
        {
            this.table = table;
            this.column = column;
            this.opera = opera;
            this.value = value;
            this.concat = concat;
        }
        public string table { get; set; }
        public string column { get; set; }
        public string opera { get; set; }
        public string value { get; set; }
        public string concat { get; set; }

    }
    public class classSuportColumnValue
    {
        public classSuportColumnValue(string column, string value)
        {
            this.column = column;
            this.value = value;
        }
        public string column { get; set; }
        public string value { get; set; }
    }
}
