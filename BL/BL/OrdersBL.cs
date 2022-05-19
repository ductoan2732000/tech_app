using BL.Base;
using Common.Function;
using Common.Models;
using Common.Utils;
using Dapper;
using System;
using System.Collections.Generic;
using System.Text;

namespace BL.BL
{
    public class OrdersBL : BaseBL<orders>
    {
        public TAResponse getOrderByParam(int? id_user, int? status)
        {
            // sinh script 
            TAScript script = new TAScript();
            script.selectPath.Add(new TASelect("orders", "*"));
            script.fromPath = "orders";
            List<classSuportColumnValue> colVal = new List<classSuportColumnValue>();
            if(id_user != null)
            {
                colVal.Add(new classSuportColumnValue("id_user", id_user.ToString()));
            }
            if(status != null)
            {
                colVal.Add(new classSuportColumnValue("status", status.ToString()));

            }
            if(colVal.Count == 0)
            {
                return base.getListData();
            }
            foreach (var item in colVal)
            {
                if(colVal.Count -1 == colVal.IndexOf(item))
                {
                    script.wherePath.Add(new TAWhere("orders", item.column, "=", item.value, ";"));
                }
                else
                {
                    script.wherePath.Add(new TAWhere("orders", item.column, "=", item.value, "and"));
                }
            }
            string scriptFinal = commonFunction.GenScript(script);
            try
            {

                // sinh xong script thì call db lấy data;
                List<orders> listOrder = _connect.getListData(scriptFinal);

                return new TAResponse()
                {
                    data = listOrder,
                    is_success = true,
                    status = stat.Successful
                };
            }
            catch (Exception)
            {

                return new TAResponse()
                {
                    data = new List<orders>(),
                    is_success = false,
                    status = stat.ServerError
                };
            }

            
            
        }
    }
}
