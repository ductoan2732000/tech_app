using Common.Models;
using Dapper;
using DL.Base;
using System;
using System.Collections.Generic;
using System.Text;

namespace DL
{
    public class LoginDL : BaseConnection
    {
        public user getUser(string sql)
        {
            try
            {
                user userLogin = connection.QueryFirstOrDefault<user>(sql);
                if (userLogin != null)
                {
                    return userLogin;
                }
                else
                {
                    return null;
                }
            }
            catch (Exception)
            {

                throw;
            }
            
        }
    }
}
