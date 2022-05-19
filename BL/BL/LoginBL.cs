using Common.Utils;
using DL;
using System;
using System.Collections.Generic;
using System.Text;

namespace BL.BL
{
    public class LoginBL
    {
        LoginDL dl;
        public LoginBL()
        {
            dl = new LoginDL();
        }
        public TAResponse Login(string email, string pass)
        {
            string sqlgetUser = Properties.Resources.login.Replace("{{email}}", $"'{email}'").Replace("{{password}}", $"'{pass}'");
            var user = dl.getUser(sqlgetUser);
            if(user == null)
            {
                return new TAResponse()
                {
                    data = Properties.Resources.errLogin,
                    is_success = false,
                    status = stat.ClientError,
                };
            }
            else
            {
                return new TAResponse()
                {
                    data = user,
                    is_success = true,
                    status = stat.Successful,
                };
            }
        }
    }
}
