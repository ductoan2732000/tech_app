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
        public TAResponse GetListByShopId(int? id_shop)
        {
            // sinh script 
            TAScript script = new TAScript();
            script.selectPath.Add(new TASelect("orders", "*"));
            script.fromPath = "orders";
            List<classSuportColumnValue> colVal = new List<classSuportColumnValue>();
            if(id_shop != null)
            {
                colVal.Add(new classSuportColumnValue("id_shop", id_shop.ToString()));
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
        public TAResponse updateByStatus(int id, int status)
        {
            
            TAResponse checkExit = getDetailData(id);
            if (checkExit.is_success == true && checkExit.status == stat.Successful)
            {
                string sqlUpdateDate = Properties.Resources.updateOrderStatus;
                string sqlFinal = sqlUpdateDate.Replace("{{status}}", status.ToString()).Replace("{{id}}", id.ToString());
                var res = _connect.Execute(sqlFinal);
                if (res == 1)
                {
                    return new TAResponse()
                    {
                        data = Properties.Resources.updateSuccess,
                        is_success = true,
                        status = stat.Successful,
                    };
                }
                else
                {
                    return new TAResponse()
                    {
                        data = Properties.Resources.ErrServer,
                        is_success = false,
                        status = stat.ServerError,
                    };
                }
            }
            else
            {
                return new TAResponse()
                {
                    data = Properties.Resources.ErrClient,
                    is_success = false,
                    status = stat.ClientError,
                };
            }
        }
    }
}
