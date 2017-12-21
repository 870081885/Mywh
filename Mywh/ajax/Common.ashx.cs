using Mywh.Base;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using Utility;

namespace Mywh.ajax
{
    /// <summary>
    /// Common 的摘要说明
    /// </summary>
    public class Common : BaseAshx
    {

        public override void ProcessRequest(HttpContext context)
        {
            action = Funcs.Get("action");
            //判断是否未登录
            if (!islogin())
            {
                returnData = returnLogin();
            }
            else
            {
                OperateAciton oa = new OperateAciton();
                oa.GatherOperate("selectList", selectList);     // 获取下拉框

                returnData = oa.ExecuteOperate(action);
            }
            context.Response.Write(returnData);
        }

        // 获取下拉框
        public string selectList()
        {
            MyJson my = new MyJson();
            StringBuilder sbr = new StringBuilder();

            try
            {
                string tableName = Funcs.Get("tableName");
                string key = Funcs.Get("key");
                string value = Funcs.Get("value");
                string where = Funcs.Get("where");
                string orderBy = Funcs.Get("orderBy");
                string name = Funcs.Get("name");
                if (name != "")
                {
                    sbr.Append("<option value=''>-请选择" + name + "-</option>");
                }
                string strSql = "select " + key + " as [key], " + value + " as [value]  from " + tableName + " where 1=1";
                if (where.Length > 0)
                {
                    strSql += " and " + where;
                }
                if (orderBy.Length > 0)
                {
                    strSql += " order by " + orderBy;
                }
                DataTable dt = SqlHelper.GetDataTable(strSql);
                if (dt != null && dt.Rows.Count > 0)
                {
                    foreach (DataRow item in dt.Rows)
                    {
                        sbr.Append("<option value='" + item["value"].ToString() + "'>" + item["key"].ToString() + "</option>");
                    }
                    my.flag = 1;
                    my.obj = sbr.ToString();
                    return JsonConvert.SerializeObject(my);
                }
                else
                {
                    my.flag = 0;
                    my.obj = sbr.ToString();
                    my.msg = "获取下拉框列表失败！";
                    return JsonConvert.SerializeObject(my);
                }
            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.obj = sbr.ToString();
                my.msg = "获取下拉框列表失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }


    }
}