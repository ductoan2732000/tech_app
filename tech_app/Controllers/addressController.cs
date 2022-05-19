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

namespace tech_app.Controllers
{
    [ApiVersion("1.0")]
    [Route("v{version:apiVersion}/api/[controller]")]
    [ApiController]
    public class addressController : baseController<address>
    {
        AddressBL _bl;
        public addressController(IConfiguration config) : base(config)
        {
            _bl = new AddressBL();
        }
        [HttpGet("param")]
        public IActionResult GetList(int? id_user)
        {
            try
            {
                TAResponse res = _bl.getAddressByParam(id_user);
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
