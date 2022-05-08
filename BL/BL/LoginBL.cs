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
        public string Login(string email, string pass)
        {
            string sqlgetUser = Properties.Resources.login.Replace("{{email}}", $"'{email}'").Replace("{{password}}", $"'{pass}'");
            var user = dl.getUser(sqlgetUser);
            if(user == null)
            {
                return Properties.Resources.errLogin;
            }
            else
            {
                return Properties.Resources.successLogin;
            }
        }
    }
}
