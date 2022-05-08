using BL.Base;
using BL.BL;
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
        public List<T> GetList()
        {
            try
            {
                //var result = _config.GetValue<string>("Logging:LogLevel:Default");
                //Console.WriteLine(result);
                List<T> datas = bl.getListData();
                return datas;
            }
            catch (Exception)
            {

                throw;
            }
        }

        // GET api/<baseController>/5
        [HttpGet("{id}")]
        public T Get(int id)
        {
            try
            {
                T data = bl.getDetailData(id);
                return data;
            }
            catch (Exception)
            {

                throw;
            }
        }

        // POST api/<baseController>
        [HttpPost]
        public int Post([FromBody] T data)
        {
            int res = bl.createData(data);
            return res;
        }

        // PUT api/<baseController>/5
        [HttpPut]
        public int Put([FromBody] T value)
        {
            int res = bl.updateData(value);
            return res;
        }

        // DELETE api/<baseController>/5
        [HttpDelete("{id}")]
        public int Delete(int id)
        {
            try
            {
                int res = bl.deleteData(id);
                return res;
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
