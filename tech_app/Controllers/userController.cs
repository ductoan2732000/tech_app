using BL;
using Common.Models;
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
    public class userController : baseController<user>
    {
        public userController(IConfiguration config) : base(config)
        {
        }
    }
}
