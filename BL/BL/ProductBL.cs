using BL.Base;
using Common.Function;
using Common.Models;
using Common.Utils;
using System;
using System.Collections.Generic;
using System.Text;

namespace BL.BL
{
    public class ProductBL : BaseBL<product>
    {
        public TAResponse getProductByPram(int? id_category, string freeText)
        {
            const string tableName = "product";
            // sinh script 
            TAScript script = new TAScript();
            script.selectPath.Add(new TASelect(tableName, "*"));
            script.selectPath.Add(new TASelect("product_category", "id_category"));
            script.selectPath.Add(new TASelect("category", "name as category_name"));
            // todo : sau này mở rộng thì sẽ thêm xử lý phần tự sinh đoạn from của câu scrip
            script.fromPath = "product join product_category on product.id = product_category.id_product join category on category.id = product_category.id_category";
            List<TAWhere> colVal = new List<TAWhere>();
            if (id_category != null)
            {
                colVal.Add(new TAWhere("product_category", "id_category", "=", id_category.ToString(), "@"));
            }
            if (freeText != null)
            {
                string search = $"'%{freeText}%'";
                colVal.Add(new TAWhere(tableName, "name", "like", search, "@"));
            }
            if (colVal.Count == 0)
            {
                return base.getListData();
            }
            foreach (var item in colVal)
            {
                if (colVal.Count - 1 == colVal.IndexOf(item))
                {
                    script.wherePath.Add(new TAWhere(item.table, item.column, item.opera, item.value, ";"));
                }
                else
                {
                    script.wherePath.Add(new TAWhere(item.table, item.column, item.opera, item.value, "and"));
                }
            }
            string scriptFinal = commonFunction.GenScript(script);
            try
            {

                // sinh xong script thì call db lấy data;
                var listData = _connect.queryDynamic(scriptFinal);

                return new TAResponse()
                {
                    data = listData,
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
