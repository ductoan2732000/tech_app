using BL;
using Common.Models;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;


namespace tech_app.Controllers
{
    [ApiVersion("1.0")]
    [Route("v{version:apiVersion}/api/[controller]")]
    [ApiController]
    public class userController : ControllerBase
    {
        private readonly IConfiguration _config;
        public userController(IConfiguration config)
        {
            _config = config;
        }
        [HttpGet]
        public List<user> GetListUser()
        {
            var result = _config.GetValue<string>("Logging:LogLevel:Default");
            UserBL bl = new UserBL();
            Console.WriteLine(result);
            List<user> users = bl.getListData();
            return users;
        }

        // GET api/<user>/5
        [HttpGet("{id}")]
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<user>
        [HttpPost]
        public void Post([FromBody] string value)
        {
        }

        // PUT api/<user>/5
        [HttpPut("{id}")]
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<user>/5
        [HttpDelete("{id}")]
        public void Delete(int id)
        {
        }
    }
}
