using Mywh.Base;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Web;
using Utility;

namespace Mywh.demo.demo5
{
    /// <summary>
    /// Demo 的摘要说明
    /// </summary>
    public class Demo : BaseAshx
    {
        public override void ProcessRequest(HttpContext context)
        {
            action = Funcs.Get("action");
            OperateAciton oa = new OperateAciton();
            oa.GatherOperate("init", init);         // 初始化
            oa.GatherOperate("upload", upload);     // 上传
            oa.GatherOperate("test", test);         // test
            returnData = oa.ExecuteOperate(action);

            context.Response.Write(returnData);
        }

        // 初始化
        public string init()
        {
            MyJson my = new MyJson();

            try
            {
                string strSql = @"select 1 id,'test1.jpg' src
                                union
                                select 2 id,'test2.jpg' src
                                union
                                select 3 id,'test3.jpg' src";
                DataTable dt = SqlHelper.GetDataTable(strSql);

                my.flag = 1;
                my.obj = dt;
                my.msg = "初始化成功！";
                return JsonConvert.SerializeObject(my);
            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "初始化失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 上传
        public string upload()
        {
            MyJson my = new MyJson();

            try
            {

                my.obj = "1.jpg";
                my.msg = "上传成功！";
                return JsonConvert.SerializeObject(my);
            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "上传失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // test
        public string test()
        {
            MyJson my = new MyJson();

            try
            {
                my.flag = 1;
                my.msg = "获取列表成功！";
                return JsonConvert.SerializeObject(my);
            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "获取列表失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }
    }
}