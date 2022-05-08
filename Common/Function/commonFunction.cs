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

        
    }
}
