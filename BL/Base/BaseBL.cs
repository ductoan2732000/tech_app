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
    }
}
