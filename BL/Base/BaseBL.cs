using Common.Models;
using Common.Utils;
using DL;
using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace BL.Base
{
    public class BaseBL<T>
    {
        private Connection<T> _connect;
        public BaseBL()
        {
            _connect = new Connection<T>();
        }
        public TAResponse getListData()
        {
            try
            {
                string sqlGetList = Properties.Resources.getList + typeof(T).Name;
                List<T> users = _connect.getListData(sqlGetList);
                TAResponse res = new TAResponse()
                {
                    data = users,
                    is_success = true,
                    status = stat.Successful
                };
                return res;
                
            }
            catch (Exception)
            {

                return new TAResponse()
                {
                    data = new List<T>(),
                    is_success = false,
                    status = stat.ServerError
                };
            }
        }
        public TAResponse getDetailData(int value)
        {
            try
            {
                string sqlGetDetail = Properties.Resources.getDetail;
                string sqlFinal = sqlGetDetail.Replace("{{table}}", typeof(T).Name);
                T data = _connect.getDetailData(sqlFinal, value);
                if(data != null)
                {
                    TAResponse res = new TAResponse()
                    {
                        data = data,
                        is_success = true,
                        status = stat.Successful,
                    };
                    return res;
                }
                else
                {
                    
                    return new TAResponse()
                    {
                        data = Properties.Resources.ErrData,
                        is_success = false,
                        status = stat.ClientNotFound,
                    };
                }
            }
            catch (Exception)
            {

                return new TAResponse()
                {
                    data = Properties.Resources.ErrServer,
                    is_success = false,
                    status = stat.ServerError,
                };
            }
        }
        public TAResponse createData(T data)
        {
            try
            {
                //check xem có tồn tại dữ liệu có không
                //nếu có rồi trả về lỗi luôn
                if(data != null )
                {
                    PropertyInfo prop = data.GetType().GetProperty("id");
                    if (prop!= null)
                    {
                        var id = prop.GetValue(data, null);
                        // check xem có tồn tại dữ liệu hay không
                        TAResponse checkExit = getDetailData((int)id);
                        if(checkExit.is_success == false && checkExit.status == stat.ClientNotFound)
                        {
                            //nếu chưa có mới tạo mới
                            string sqlGetDetail = Properties.Resources.create;
                            string sqlFinal = sqlGetDetail.Replace("{{table}}", typeof(T).Name);
                            int res = _connect.create(sqlFinal, data);
                            if (res == 1)
                            {
                                return new TAResponse()
                                {
                                    data = data,
                                    is_success = true,
                                    status = stat.Successful,
                                };
                            }
                        } 
                        
                    }
                }
                return new TAResponse()
                {
                    data = Properties.Resources.ErrClient,
                    is_success = false,
                    status = stat.ClientError,
                };
                
            }
            catch (Exception)
            {

                return new TAResponse()
                {
                    data = Properties.Resources.ErrServer,
                    is_success = false,
                    status = stat.ServerError,
                };
            }
        }
        public TAResponse updateData(T data)
        {
            try
            {
                // check data xem có id trên db không, nếu không có thì báo lỗi
                if (data != null)
                {
                    PropertyInfo prop = data.GetType().GetProperty("id");
                    if (prop != null)
                    {
                        var id = prop.GetValue(data, null);
                        // check xem có tồn tại dữ liệu hay không
                        TAResponse checkExit = getDetailData((int)id);
                        if(checkExit.is_success == true && checkExit.status == stat.Successful)
                        {
                            // nếu có thì update
                            string sqlUpdateDate = Properties.Resources.update;
                            string sqlFinal = sqlUpdateDate.Replace("{{table}}", typeof(T).Name);
                            int res = _connect.update(sqlFinal, data);
                            if (res == 1)
                            {
                                return new TAResponse()
                                {
                                    data = data,
                                    is_success = true,
                                    status = stat.Successful,
                                };
                            }
                        }
                    }
                }
                return new TAResponse()
                {
                    data = Properties.Resources.ErrClient,
                    is_success = false,
                    status = stat.ClientError,
                };
                
            }
            catch (Exception)
            {

                return new TAResponse()
                {
                    data = Properties.Resources.ErrServer,
                    is_success = false,
                    status = stat.ServerError,
                };
            }
        }
        public TAResponse deleteData(int id)
        {
            try
            {
                // check nếu dữ liệu đã có trên db thì được xóa
                TAResponse checkExit = getDetailData(id);
                if(checkExit.is_success == true && checkExit.status == stat.Successful)
                {
                    string sqlUpdateDate = Properties.Resources.delete;
                    string sqlFinal = sqlUpdateDate.Replace("{{table}}", typeof(T).Name);
                    int res = _connect.delete(sqlFinal, id);
                    if(res == 1)
                    {
                        return new TAResponse()
                        {
                            data = Properties.Resources.DeleteSuccess,
                            is_success = true,
                            status = stat.Successful,
                        };
                    }
                }
                // không có dữ liệu trên db thì báo lỗi
                return checkExit;
            }
            catch (Exception)
            {

                return new TAResponse()
                {
                    data = Properties.Resources.ErrServer,
                    is_success = false,
                    status = stat.ServerError,
                };
            }
        }
    }
}
