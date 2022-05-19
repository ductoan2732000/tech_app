using BL.BL;
using Common.Models;
using Common.Utils;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using tech_app.Base;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace tech_app.Controllers
{
    [ApiVersion("1.0")]
    [Route("v{version:apiVersion}/api/[controller]")]
    [ApiController]
    public class ordersController : baseController<orders>
    {
        OrdersBL _bl;
        public ordersController(IConfiguration config ) : base(config)
        {
            _bl = new OrdersBL();
        }
        [HttpGet("param")]
        public IActionResult GetList(int? id_user, int? status)
        {
            try
            {
                TAResponse res = _bl.getOrderByParam(id_user, status);
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
}
