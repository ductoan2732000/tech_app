using Common.Models;
using Dapper;
using Microsoft.Extensions.Configuration;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;

namespace DL
{
    public class Connection<T>
    {
        private Config _config;
        private MySqlConnection connection;
        public Connection()
        {
            _config = new Config();
            connection = new MySqlConnection(_config.Connection);
        }
        public List<T> getListData(string sql)
        {
           
            try
            {
                List<T> listData = new List<T>();
                listData = (List<T>)connection.Query<T>(sql);
                return listData;

            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}
