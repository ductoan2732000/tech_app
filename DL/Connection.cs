using Common.Models;
using Dapper;
using Microsoft.Extensions.Configuration;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;

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
        public T getDetailData(string sql, int value)
        {
            try
            {
                T data;
                data = connection.QueryFirst<T>(sql, new { id = value });
                return data;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public string create(string sql, T data)
        {
            try
            {
                string finalSql = "";
                if (data != null)
                {
                    StringBuilder column = new StringBuilder("(");
                    StringBuilder value = new StringBuilder("(");

                    foreach (PropertyInfo prop in data.GetType().GetProperties())
                    {
                        var type = Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType;
                        if (type != typeof(Int32) || type != typeof(Int64))
                        {
                            value.Append($"'{prop.GetValue(data, null)}'");

                        }
                        column.Append(prop.Name);
                        column.Append(",");
                        value.Append(",");
                    }
                    column.Remove(column.Length -1, 1);
                    value.Remove(value.Length -1, 1);
                    column.Append(")");
                    value.Append(")");
                    finalSql = sql.Replace("{{column}}", column.ToString()).Replace("{{value}}", value.ToString());
                    //int nOfRows = connection.Execute(finalSql);
                    //Console.WriteLine(nOfRows);
                }

                return finalSql;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
