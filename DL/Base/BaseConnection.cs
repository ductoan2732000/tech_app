using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Text;

namespace DL.Base
{
    public class BaseConnection
    {
        protected Config _config;
        protected MySqlConnection connection;
        public BaseConnection()
        {
            _config = new Config();
            connection = new MySqlConnection(_config.Connection);
        }
    }
}
