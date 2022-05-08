using BL.BL;
using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace tech_app.Controllers
{
    [ApiVersion("1.0")]
    [Route("v{version:apiVersion}/api/[controller]")]
    [ApiController]
    public class loginController : ControllerBase
    {
        [HttpPost]
        public string Post([FromBody] FromBodyLogin value)
        {
            try
            {
                LoginBL bl = new LoginBL();
                var res = bl.Login(value.email, value.password);
                return res;
            }
            catch (Exception)
            {

                throw;
            }
        }

    }
    public class FromBodyLogin {
        public string email { get; set; }
        public string password { get; set; }
    }
}
