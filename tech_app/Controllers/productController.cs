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
    public class productController : baseController<product>
    {
        ProductBL _bl;
        public productController(IConfiguration config) : base(config)
        {
            _bl = new ProductBL();
        }
        [HttpGet("param")]
        public IActionResult GetList(int? id_category, string freeText, double? price_from, double? price_to)
        {
            try
            {
                TAResponse res = _bl.getProductByPram(id_category, freeText, price_from, price_to);
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
        [HttpGet("like")]
        public IActionResult GetList(int? id_user)
        {
            try
            {
                TAResponse res = _bl.getProductByUserId(id_user);
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
