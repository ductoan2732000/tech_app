using Common.Utils;
using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Function
{
    public class commonFunction
    {
        public static string ConvertDateTime(DateTime value)
        {
            return value.Year + "-" + value.Month + "-" + value.Day;
        }
        public static string GenScript(TAScript value)
        {
            StringBuilder script = new StringBuilder();
            script.Append("Select ");
            foreach (var item in value.selectPath)
            {
                script.Append(item.table);
                script.Append(".");
                script.Append(item.column);
                if(value.selectPath.IndexOf(item) == value.selectPath.Count - 1)
                {
                    script.Append(" ");
                }
                else
                {
                    script.Append(", ");
                }
            }
            script.Append("from ");
            script.Append(value.fromPath);
            script.Append(" where ");
            foreach (var item in value.wherePath)
            {
                script.Append(item.table).Append(".").Append(item.column).Append(" ").Append(item.opera).Append(" ").Append(item.value).Append(" ").Append(item.concat).Append(" ");
                
            }

            return script.ToString();
        }
    }
}
