using BL.BL;
using Common.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

// For more information on enabling Web API for empty projects, visit https://go.microsoft.com/fwlink/?LinkID=397860

namespace tech_app.Controllers
{
    [ApiVersion("1.0")]
    [Route("v{version:apiVersion}/api/[controller]")]
    [ApiController]
    public class addressController : ControllerBase
    {
        private readonly IConfiguration _config;
        public addressController(IConfiguration config)
        {
            _config = config;
        }
        [HttpGet]
        public List<address> GetListAddress()
        {
            var result = _config.GetValue<string>("Logging:LogLevel:Default");
            AddressBL bl = new AddressBL();
            Console.WriteLine(result);
            List<address> users = bl.getListData();
            return users;
        }

        // GET api/<addressController>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<addressController>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<addressController>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<addressController>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
