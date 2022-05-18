using BL.Base;
using BL.BL;
using Common.Utils;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace tech_app.Base
{
    public class baseController<T> : ControllerBase
    {
        private readonly IConfiguration _config;
        BaseBL<T> bl;
        public baseController(IConfiguration config)
        {
            _config = config;
            bl = new BaseBL<T>();
        }
        [HttpGet]
        public IActionResult GetList()
        {
            try
            {
                //var result = _config.GetValue<string>("Logging:LogLevel:Default");
                //Console.WriteLine(result);
                TAResponse datas = bl.getListData();
                if(datas.is_success == true)
                {
                    return Ok(datas);
                }
                else
                {
                    return StatusCode((int)datas.status, datas);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        // GET api/<baseController>/5
        [HttpGet("{id}")]
        public IActionResult Get(int id)
        {
            try
            {
                TAResponse data = bl.getDetailData(id);
                if (data.is_success)
                {
                    return Ok(data);
                }
                else
                {
                    return StatusCode((int)data.status, data);
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        // POST api/<baseController>
        [HttpPost]
        public IActionResult Post([FromBody] T data)
        {
            try
            {
                TAResponse res = bl.createData(data);
                if(res.is_success == true)
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

        // PUT api/<baseController>/5
        [HttpPut]
        public IActionResult Put([FromBody] T value)
        {
            TAResponse res = bl.updateData(value);
            if (res.is_success == true)
            {
                return Ok(res);
            }
            else
            {
                return StatusCode((int)res.status, res);
            }
        }

        // DELETE api/<baseController>/5
        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            try
            {
                TAResponse res = bl.deleteData(id);
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
