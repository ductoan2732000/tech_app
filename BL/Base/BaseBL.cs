using DL;
using System;
using System.Collections.Generic;
using System.Text;

namespace BL.Base
{
    public class BaseBL<T>
    {
        private Connection<T> _connect;
        public BaseBL()
        {
            _connect = new Connection<T>();
        }
        public List<T> getListData()
        {
            try
            {
                string sqlGetList = Properties.Resources.getList + typeof(T).Name;
                List<T> users = _connect.getListData(sqlGetList);
                return users;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public T getDetailData(int value)
        {
            try
            {
                string sqlGetDetail = Properties.Resources.getDetail;
                string sqlFinal = sqlGetDetail.Replace("{{table}}", typeof(T).Name);
                T data = _connect.getDetailData(sqlFinal, value);
                return data;
            }
            catch (Exception)
            {

                throw;
            }
        }
        public string createData(T data)
        {
            try
            {
                string sqlGetDetail = Properties.Resources.create;
                string sqlFinal = sqlGetDetail.Replace("{{table}}", typeof(T).Name);
                string res = _connect.create(sqlFinal, data);
                return res;  
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
