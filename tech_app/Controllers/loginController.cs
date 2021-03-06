using BL.BL;
using Common.Utils;
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
        LoginBL bl;
        public loginController()
        {
            bl = new LoginBL();
        }
        [HttpPost]
        public IActionResult Post([FromBody] FromBodyLogin value)
        {
            try
            {
                TAResponse res = bl.Login(value.email, value.password);
                if (res.is_success == true)
                {
                    return Ok(res);
                }
                else
                {
                    return StatusCode((int)res.status, res);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
        [HttpPost("shop")]
        public IActionResult PostLoginShop([FromBody] FromBodyLogin value)
        {
            try
            {
                TAResponse res = bl.LoginShop(value.email, value.password);
                if (res.is_success == true)
                {
                    return Ok(res);
                }
                else
                {
                    return StatusCode((int)res.status, res);
                }
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
