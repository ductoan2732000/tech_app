using BL.Base;
using Common.Function;
using Common.Models;
using Common.Utils;
using System;
using System.Collections.Generic;
using System.Text;

namespace BL.BL
{
    public class AddressBL : BaseBL<address>
    {
        public TAResponse getAddressByParam(int? id_user)
        {
            const string tableName = "address";
            // sinh script 
            TAScript script = new TAScript();
            script.selectPath.Add(new TASelect(tableName, "*"));
            script.fromPath = tableName;
            
            if (id_user == null)
            {
                return base.getListData();
            }
            else
            {
                script.wherePath.Add(new TAWhere(tableName, "id_user", "=", id_user.ToString(), ";"));
            }
            string scriptFinal = commonFunction.GenScript(script);
            try
            {
                // sinh xong script thì call db lấy data;
                List<address> listOrder = _connect.getListData(scriptFinal);

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
                    data = new List<address>(),
                    is_success = false,
                    status = stat.ServerError
                };
            }
        }
    }
}
