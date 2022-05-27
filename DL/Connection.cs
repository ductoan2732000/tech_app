using Common.Function;
using Common.Models;
using Dapper;
using DL.Base;
using Microsoft.Extensions.Configuration;
using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Text;
namespace DL
{
    public class Connection<T> : BaseConnection
    {
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
        /// <summary>
        /// call db with dynamic sql and return dynamic
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public object queryDynamic(string sql)
        {
            try
            {
                var listData = connection.Query(sql);
                return listData;

            }
            catch (Exception)
            {

                throw;
            }

        }
        public object ExecuteScalar(string sql)
        {
            try
            {
                var data = connection.ExecuteScalar(sql);
                return data;

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
                data = connection.QueryFirstOrDefault<T>(sql, new { id = value });
                return data;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public int create(string sql, T data)
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
                        if (type == typeof(String))
                        {
                            value.Append($"'{prop.GetValue(data, null)}'");

                        }
                        else if (type == typeof(DateTime))
                        {
                            commonFunction func = new commonFunction();
                            var dateTime = prop.GetValue(data, null);
                            string dateSql = commonFunction.ConvertDateTime((DateTime)dateTime);
                            value.Append($"'{dateSql}'");
                        }
                        else
                        {
                            value.Append(prop.GetValue(data, null));
                        }
                        column.Append(prop.Name);
                        column.Append(",");
                        value.Append(",");
                    }
                    column.Remove(column.Length - 1, 1);
                    value.Remove(value.Length - 1, 1);
                    column.Append(")");
                    value.Append(")");
                    finalSql = sql.Replace("{{column}}", column.ToString()).Replace("{{value}}", value.ToString());

                }
                int nOfRows = connection.Execute(finalSql);
                return nOfRows;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public int update(string sql, T data)
        {
            try
            {
                string finalSql = "";
                if (data != null)
                {
                    StringBuilder value = new StringBuilder("");

                    foreach (PropertyInfo prop in data.GetType().GetProperties())
                    {
                        var type = Nullable.GetUnderlyingType(prop.PropertyType) ?? prop.PropertyType;
                        if (prop.Name == "id")
                        {
                            sql = sql.Replace("{{id}}", prop.GetValue(data, null).ToString());
                        }
                        else
                        {
                            value.Append(prop.Name + "=");
                            if (type == typeof(String))
                            {
                                value.Append($"'{prop.GetValue(data, null)}'");

                            }
                            else if (type == typeof(DateTime))
                            {
                                commonFunction func = new commonFunction();
                                var dateTime = prop.GetValue(data, null);
                                string dateSql = commonFunction.ConvertDateTime((DateTime)dateTime);
                                value.Append($"'{dateSql}'");
                            }
                            else
                            {
                                value.Append(prop.GetValue(data, null));
                            }
                            value.Append(",");

                        }
                    }
                    value.Remove(value.Length - 1, 1);
                    finalSql = sql.Replace("{{value}}", value.ToString());

                }
                int nOfRows = connection.Execute(finalSql);
                return nOfRows;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public int delete(string sql, int id)
        {
            try
            {
                int delRows = connection.Execute(sql, new { id = id });
                return delRows;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
