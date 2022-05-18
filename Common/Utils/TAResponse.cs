using System;
using System.Collections.Generic;
using System.Text;

namespace Common.Utils
{
    public class TAResponse
    {
        public object data { get; set; }
        public bool is_success { get; set; }
        public stat status { get; set; }
    }
    public enum stat : int
    {
        Successful = 200,
        ClientError = 400,
        ClientNotFound = 404,
        ServerError = 500
    }

}
