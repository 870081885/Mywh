using Microsoft.JScript;
using Mywh.Base;
using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web;
using Utility;

namespace Mywh.ajax
{
    /// <summary>
    /// System 的摘要说明
    /// </summary>
    public class System : BaseAshx
    {

        public override void ProcessRequest(HttpContext context)
        {
            action = Funcs.Get("action");
            //判断是否为登录请求
            if (action == "userLogin")
            {
                returnData = userLogin();
            }
            else if (action == "isLogin")
            {
                returnData = isLogin();
            }
            //判断是否未登录
            else if (!islogin())
            {
                returnData = returnLogin();
            }
            else
            {
                OperateAciton oa = new OperateAciton();
                oa.GatherOperate("getUserList", getUserList);                                           // 获取用户列表
                oa.GatherOperate("getUserInfo", getUserInfo);                                           // 获取用户信息
                oa.GatherOperate("addOrEditUser", addOrEditUser);                                       // 新增或编辑用户
                oa.GatherOperate("deleteUser", deleteUser);                                             // 删除用户
                oa.GatherOperate("changePwd", changePwd);                                               // 修改密码

                oa.GatherOperate("getRoleList", getRoleList);                                           // 获取角色列表
                oa.GatherOperate("addOrEditRole", addOrEditRole);                                       // 新增或编辑角色
                oa.GatherOperate("deleteRole", deleteRole);                                             // 删除角色

                oa.GatherOperate("getMenuActionTree", getMenuActionTree);                               // 获取菜单动作树
                oa.GatherOperate("addOrEditMenu", addOrEditMenu);                                       // 新增或编辑菜单
                oa.GatherOperate("getMenuInfo", getMenuInfo);                                           // 获取菜单信息
                oa.GatherOperate("deleteMenu", deleteMenu);                                             // 删除菜单
                oa.GatherOperate("getActionByMenu", getActionByMenu);                                   // 根据菜单获取动作   
                oa.GatherOperate("saveActionByMenu", saveActionByMenu);                                 // 根据菜单保存动作   

                oa.GatherOperate("getActionList", getActionList);                                       // 获取动作列表
                oa.GatherOperate("addOrEditAction", addOrEditAction);                                   // 新增或编辑动作
                oa.GatherOperate("getActionInfo", getActionInfo);                                       // 获取动作信息

                oa.GatherOperate("saveMenuActionByRole", saveMenuActionByRole);                         // 根据角色保存菜单动作
                oa.GatherOperate("getMenuActionByRole", getMenuActionByRole);                           // 根据角色获取菜单动作

                oa.GatherOperate("getUserList2", getUserList2);                                         // 获取用户列表
                oa.GatherOperate("getMenuActionTreeByUser", getMenuActionTreeByUser);                   // 根据用户获取菜单动作树
                oa.GatherOperate("saveMenuActionByUser", saveMenuActionByUser);                         // 根据用户保存菜单动作
                oa.GatherOperate("resetMenuActionByUser", resetMenuActionByUser);                       // 重置用户权限


                returnData = oa.ExecuteOperate(action);
            }
            context.Response.Write(returnData);
        }

        #region 用户
        // 用户登录
        private string userLogin()
        {
            MyJson my = new MyJson();
            try
            {
                #region 检测用户名，密码
                string userName = Funcs.Get("userName");//用户名
                string pwd = Funcs.Get("pwd");//密码

                string strSql = @"select u.id userId,u.userName,u.trueName,u.status uStatus,r.id roleId,r.roleName,r.status rStatus 
                                from [system_user] u
                                inner join system_role r on u.roleId = r.id
                                where userName =@userName and password =@password ";
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@userName",SqlDbType.VarChar){ Value = userName },
                    new SqlParameter("@password",SqlDbType.VarChar){ Value = Funcs.MD5(pwd) }
                };

                DataTable dt = SqlHelper.GetDataTable(strSql, param);

                if (dt == null || dt.Rows.Count < 1)
                    {
                        my.flag = 0;
                        my.msg = "用户名或密码错误！";
                        return JsonConvert.SerializeObject(my);
                    }
                if (int.Parse(dt.Rows[0]["uStatus"].ToString()) == 0)
                    {
                        my.flag = 0;
                        my.msg = "您的帐号已暂停使用，请联系管理员！";
                        return JsonConvert.SerializeObject(my);
                    }
                if (int.Parse(dt.Rows[0]["rStatus"].ToString()) == 0)
                    {
                        my.flag = 0;
                        my.msg = "该角色已暂停使用，请联系管理员！";
                        return JsonConvert.SerializeObject(my);
                    }

                #endregion

                //保存用户的信息到Session
                MySession.Add("userId", dt.Rows[0]["userId"]);
                MySession.Add("userName", dt.Rows[0]["userName"]);
                MySession.Add("trueName", dt.Rows[0]["trueName"]);
                MySession.Add("roleId", dt.Rows[0]["roleId"]);
                MySession.Add("roleName", dt.Rows[0]["roleName"]);

                string strMenu ="";
                DataTable dtMenuAction = null;
                //判断是否是超级管理员
                if (dt.Rows[0]["roleId"].ToString() == "1")          
                {
                    //获取菜单
                    strSql = @"select * from system_menu where status =1";
                    dt = SqlHelper.GetDataTable(strSql);
                    strMenu = MenuBuild(0, dt);
                    //获取菜单动作
                    strSql = @"select a.*,m.id menuId,m.menuCode from (select * from [dbo].[system_action] where status=1) a
                                inner join [dbo].[system_menuAction] ma on a.id=ma.actionId 
                                inner join (select * from [dbo].[system_menu] where status=1) m on ma.menuId=m.id";
                    dtMenuAction = SqlHelper.GetDataTable(strSql);
                }
                else
                {
                    SqlParameter[] param2 = new SqlParameter[]{
                        new SqlParameter("@roleId",SqlDbType.Int){ Value = dt.Rows[0]["roleId"] },
                        new SqlParameter("@userId",SqlDbType.Int){ Value = dt.Rows[0]["userId"] }
                    };

                    //获取菜单
                    strSql = @"select * from system_menu  
                           where id in(
                               select menuId from system_roleMenuAction where roleId = @roleId and actionId = 0
                               union
                               select menuId from system_userMenuAction where userId = @userId and hasPermissin = 1 and actionId = 0 
                           )
                           and id not in(
                               select menuId from system_userMenuAction where userId = @userId and hasPermissin = 0 and actionId = 0 
                           ) and status =1";
                    dt = SqlHelper.GetDataTable(strSql, param2);
                    strMenu = MenuBuild(0, dt);

                    //获取菜单动作
                    strSql = @"select a.*,m.id menuId,m.menuCode from (select * from [dbo].[system_action] where status=1) a
                                inner join [dbo].[system_menuAction] ma on a.id=ma.actionId 
                                inner join (select * from [dbo].[system_menu] where status=1) m on ma.menuId=m.id
                                where exists(
	                                select * from (
		                                select menuId,actionId from system_roleMenuAction where roleId = @roleId and actionId!=0 
		                                union 
		                                select menuId,actionId from system_userMenuAction where userId = @userId and hasPermissin = 1 and actionId!=0 
	                                )tt where menuId=ma.menuId and actionId=ma.actionId 
                                )
                                and not exists(
	                                select * from system_userMenuAction where userId = @userId and hasPermissin = 0 and actionId!=0 and menuId=ma.menuId and actionId=ma.actionId 
                                )";
                    dtMenuAction = SqlHelper.GetDataTable(strSql, param2);
                }
                
               
                MySession.Add("menuList", strMenu);
                MySession.Add("menuActionList", dtMenuAction);

                #region 保存用户信息，权限到Session
                string loginUserId = MySession.GetSessionStringValue("userId");
                //防止一个帐号多处登录
                Global.Add(int.Parse(loginUserId), HttpContext.Current.Session.SessionID);
                #endregion

                my.flag = 1;
                my.msg = "登录成功";
                return JsonConvert.SerializeObject(my);
            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "登录失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }

        }

        // 用户是否登录
        private string isLogin()
        {
            MyJson my = new MyJson();
            try
            {

                if (MySession.GetSessionStringValue("userName") == "")
                {
                    my.flag = -100;
                    my.msg = "会话已失效，请重新登录";
                    return JsonConvert.SerializeObject(my);
                }

                my.flag = 1;
                my.msg = "";
                return JsonConvert.SerializeObject(my);
            }
            catch (Exception ex)
            {
                my.flag = -100;
                my.msg = "会话已失效：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }

        }

        // 获取用户列表
        private string getUserList()
        {
            PagingJson paging = new PagingJson();
            try
            {
                //获取Datatables发送的参数 必要
                int draw = Int32.Parse(Funcs.Get("draw"));//这个值作者会直接返回给前台

                //排序
                string orderColumn = Funcs.Get("order[0][column]");//那一列排序，从0开始
                string orderDir = Funcs.Get("order[0][dir]");//ase desc 升序或者降序

                //搜索
                string sStatus = Funcs.Get("sStatus"); //用户状态
                string sRole = Funcs.Get("sRole");//用户类型
                string sName = GlobalObject.unescape(Funcs.Get("sName"));//搜索框值

                //分页
                int start = Int32.Parse(Funcs.Get("start"));//第一条数据的起始位置
                int length = Int32.Parse(Funcs.Get("length"));//每页显示条数

                // where条件,排序条件
                string strWhere = "1=1", strOrderBy = "";
                if (sStatus != null && sStatus != "")
                {
                    strWhere += " and status=" + sStatus;
                }
                if (sRole != null && sRole != "")
                {
                    strWhere += " and roleId=" + sRole;
                }
                if (sName != null && sName != "")
                {
                    strWhere += " and (userName like '%" + Funcs.ToSqlString(sName) + "%' or trueName like '%" + Funcs.ToSqlString(sName) + "%')";
                }
                if (orderColumn != "" && orderDir != "")
                {
                    strOrderBy = Funcs.Get("columns[" + orderColumn + "][data]") + " " + orderDir;
                }

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_table",SqlDbType.Text){ Value = "(select u.*,r.roleName from [system_user] u inner join system_role r on u.roleId=r.id where u.status!=2)tt" },
                    new SqlParameter("@param_field",SqlDbType.VarChar){ Value = "*" },
                    new SqlParameter("@param_where",SqlDbType.Text){ Value = strWhere },
                    new SqlParameter("@param_groupBy",SqlDbType.VarChar){ Value = "" },
                    new SqlParameter("@param_orderBy",SqlDbType.VarChar){ Value = strOrderBy },
                    new SqlParameter("@param_pageNumber",SqlDbType.VarChar){ Value = start/length+1 },
                    new SqlParameter("@param_pageSize",SqlDbType.Int){ Value = length },
                    new SqlParameter("@param_isCount",SqlDbType.Int){ Value = 1 }
                };

                DataSet ds = SqlHelper.ExecProcFillDataSet("sp_GetPagingList", param);
                paging.draw = draw;
                paging.recordsTotal = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                paging.data = ds.Tables[0];
                paging.recordsFiltered = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                return DateTimeFormat(paging, "yyyy-MM-dd HH:mm ");

            }
            catch (Exception ex)
            {
                paging.error = "获取用户列表失败:" + ex.Message;
                paging.data = null;
                return JsonConvert.SerializeObject(paging);
            }
        }

        // 获取用户信息
        private string getUserInfo()
        {
            MyJson my = new MyJson();
            try
            {
                var userId = Funcs.Get("userId");//用户Id

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@userId",SqlDbType.Int){ Value = userId }
                };

                string strSql = "select * from [system_user] where id=@userId";
                DataTable dt = SqlHelper.GetDataTable(strSql, param);
                if (dt == null || dt.Rows.Count < 1)
                {
                    my.flag = 0;
                    my.msg = "获取用户信息失败！";
                }
                my.flag = 1;
                my.obj = dt;
                my.msg = "获取用户信息成功！";
                return JsonConvert.SerializeObject(my);

            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "获取用户信息失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 新增或编辑用户
        private string addOrEditUser()
        {
            MyJson my = new MyJson();
            try
            {
                var userId = Funcs.Get("userId") == "" ? "0" : Funcs.Get("userId"); //用户Id
                var userName = GlobalObject.unescape(Funcs.Get("userName"));//用户名
                var password = GlobalObject.unescape(Funcs.Get("password"));//密码
                var truename = GlobalObject.unescape(Funcs.Get("truename"));//真实姓名
                var role = Funcs.Get("role");//角色
                var status = Funcs.Get("status");//用户状态

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_userId",SqlDbType.Int){ Value = userId },
                    new SqlParameter("@param_userName",SqlDbType.VarChar){ Value = userName },
                    new SqlParameter("@param_password",SqlDbType.VarChar){ Value = Funcs.MD5(password) },
                    new SqlParameter("@param_trueName",SqlDbType.VarChar){ Value = truename },
                    new SqlParameter("@param_roleId",SqlDbType.Int){ Value = role },
                    new SqlParameter("@param_status",SqlDbType.Int){ Value = status }
                };
                //判断此用户名是否被使用
                string sql = "select count(*) from [system_user] where userName=@param_userName and id!=@param_userId and status!=2";
                int count = Int32.Parse(SqlHelper.ExecuteScalar(sql, param).ToString());
                if (count > 0)
                {
                    my.flag = 0;
                    my.msg = "此用户名已存在，请更换！";
                    return JsonConvert.SerializeObject(my);
                }

                count = SqlHelper.ExecProcNonQuery("sp_AddOrEditUser", param);

                if (count > 0)
                {
                    my.flag = 1;
                    my.msg = "保存成功！";
                    return JsonConvert.SerializeObject(my);
                }
                my.flag = 0;
                my.msg = "保存失败！";
                return JsonConvert.SerializeObject(my);

            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "保存失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 删除用户
        private string deleteUser()
        {
            MyJson json = new MyJson();
            try
            {
                string userId = Funcs.Get("userId"); //用户id
                if (!Funcs.IsNumber(userId))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                string strSql = "update [system_user] set status=2 where id=@param_userId";
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_userId",SqlDbType.Int){ Value = userId },
                };
                SqlHelper.ExecuteNonQuery(strSql, param);

                //删除用户授权
                strSql = "delete from system_userMenuAction where userId=@param_userId";
                SqlHelper.ExecuteNonQuery(strSql, param);
                json.flag = 1;
                json.msg = "删除用户成功";
                return JsonConvert.SerializeObject(json);
            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "删除用户失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        // 修改密码
        private string changePwd()
        {
            MyJson json = new MyJson();
            try
            {
                string id = Funcs.Get("userId"); //用户id
                string password = GlobalObject.unescape(Funcs.Get("password"));//密码
                if (!Funcs.IsNumber(id))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                string strSql = "update [system_user] set password=@password where id=@id";

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@password",SqlDbType.VarChar){ Value = Funcs.MD5(password) },
                    new SqlParameter("@id",SqlDbType.Int){ Value = id }
                };

                int result = SqlHelper.ExecuteNonQuery(strSql, param);
                if (result > 0)
                {
                    json.flag = 1;
                    json.msg = "修改密码成功";
                    return JsonConvert.SerializeObject(json);
                }
                json.flag = 0;
                json.msg = "修改密码失败";
                return JsonConvert.SerializeObject(json);

            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "修改密码失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }
        #endregion

        #region 角色
        // 获取角色列表
        private string getRoleList()
        {
            PagingJson paging = new PagingJson();
            try
            {
                //获取Datatables发送的参数 必要
                int draw = Int32.Parse(Funcs.Get("draw"));//请求次数 这个值作者会直接返回给前台 

                //排序
                string orderColumn = Funcs.Get("order[0][column]");//那一列排序，从0开始
                string orderDir = Funcs.Get("order[0][dir]");//ase desc 升序或者降序

                //搜索
                string roleName = GlobalObject.unescape(Funcs.Get("roleName"));//搜索框值

                //分页
                int start = Int32.Parse(Funcs.Get("start"));//第一条数据的起始位置
                int length = Int32.Parse(Funcs.Get("length"));//每页显示条数

                // where条件,排序条件
                string strWhere = "1=1  and status!=2", strOrderBy = "";
                if (roleName != null && roleName != "")
                {
                    strWhere += " and roleName like '%" + Funcs.ToSqlString(roleName) + "%'";
                }
                if (orderColumn != "" && orderDir != "")
                {
                    strOrderBy = Funcs.Get("columns[" + orderColumn + "][data]") + " " + orderDir;
                }

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_table",SqlDbType.Text){ Value = "system_role" },
                    new SqlParameter("@param_field",SqlDbType.VarChar){ Value = "*" },
                    new SqlParameter("@param_where",SqlDbType.Text){ Value = strWhere },
                    new SqlParameter("@param_groupBy",SqlDbType.VarChar){ Value = "" },
                    new SqlParameter("@param_orderBy",SqlDbType.VarChar){ Value = strOrderBy },
                    new SqlParameter("@param_pageNumber",SqlDbType.VarChar){ Value = start/length+1 },
                    new SqlParameter("@param_pageSize",SqlDbType.Int){ Value = length },
                    new SqlParameter("@param_isCount",SqlDbType.Int){ Value = 1 }
                };

                DataSet ds = SqlHelper.ExecProcFillDataSet("sp_GetPagingList", param);
                paging.draw = draw;
                paging.recordsTotal = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                paging.data = ds.Tables[0];
                paging.recordsFiltered = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                return JsonConvert.SerializeObject(paging);
            }
            catch (Exception ex)
            {
                paging.error = "获取角色列表失败:" + ex.Message;
                paging.data = null;
                return JsonConvert.SerializeObject(paging);
            }
        }

        // 新增或编辑角色
        private string addOrEditRole()
        {
            MyJson my = new MyJson();
            try
            {
                var id = Funcs.Get("id") == "" ? "0" : Funcs.Get("id"); //角色Id
                var roleName = GlobalObject.unescape(Funcs.Get("roleName")); //角色名称
                var status = Funcs.Get("status");//角色状态

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_id",SqlDbType.Int){ Value = id },
                    new SqlParameter("@param_roleName",SqlDbType.VarChar){ Value = roleName },
                    new SqlParameter("@param_status",SqlDbType.Int){ Value = status } 
            };

                int count = SqlHelper.ExecProcNonQuery("sp_addOrEditRole", param);

                if (count > 0)
                {
                    my.flag = 1;
                    my.msg = "保存成功！";
                    return JsonConvert.SerializeObject(my);
                }
                my.flag = 0;
                my.msg = "保存失败！";
                return JsonConvert.SerializeObject(my);

            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "保存失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 删除角色
        private string deleteRole()
        {
            MyJson my = new MyJson();
            try
            {
                string id = Funcs.Get("id"); //角色id
                if (!Funcs.IsNumber(id))
                {
                    my.flag = 0;
                    my.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(my);
                }
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_roleId",SqlDbType.Int){ Value = id }
                };
                string strSql = "select count(*) from [system_user] where roleId=@param_roleId";
                if (SqlHelper.Exists(strSql, param))
                {
                    my.flag = 0;
                    my.msg = "删除失败，存在该角色对应的用户！";
                    return JsonConvert.SerializeObject(my);
                }
                strSql = "update system_role set status=2 where id=@param_roleId";
                SqlHelper.ExecuteNonQuery(strSql,param);

                strSql = "delete from system_roleMenuAction where roleId=@param_roleId";
                SqlHelper.ExecuteNonQuery(strSql, param);

                my.flag = 1;
                my.msg = "删除成功";
                return JsonConvert.SerializeObject(my);
            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "删除失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }
        #endregion

        #region 菜单
        DataTable dtMenu = null;
        DataRow[] menuChildren = null;
        StringBuilder strbMenu = new StringBuilder();
        // 获取菜单树
        private string getMenuActionTree()
        {
            MyJson json = new MyJson();
            try
            {
                string checkType = Funcs.Get("checkType");//选择类型

                string strSql = @"select * from (select top 100 percent 'menuId'+convert(varchar(20),id) id,menuName,'menuId'+convert(varchar(20),parentId) parentId,1 type,sort,menuIcon icon,id menuId,0 actionId from system_menu where status!=2 
                                  union
                                  select 'actionId'+convert(varchar(20),a.id),a.actionName,'menuId'+convert(varchar(20),ma.menuId),2 type,sort,actionIcon icon,ma.menuId,a.id actionId from system_action a inner join system_menuAction ma on a.id = ma.actionId)tt
                                  order by parentId,sort";

                //string strSql = "select * from system_menu where status!=2 order by parentId,sort";
                dtMenu = SqlHelper.GetDataTable(strSql);
                strbMenu.Append("[");
                MenuBuild("menuId0", checkType);
                strbMenu.Append("]");
                json.flag = 1;
                json.obj = strbMenu.ToString();
                return JsonConvert.SerializeObject(json);
            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "菜单绑定错误：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        // 构建菜单
        public void MenuBuild(string menuId,string checkType)
        {
            DataRow[] List = dtMenu.Select(string.Format("parentId='{0}'", menuId));
            for (int i = 0; i < List.Length; i++)
            {
                menuChildren = dtMenu.Select(string.Format("parentId='{0}'", List[i]["id"].ToString()));
                if (menuChildren.Length != 0)
                {
                    strbMenu.Append("{\"id\":\"" + List[i]["id"].ToString() + "\",\"name\":\"" + List[i]["menuName"].ToString() + "\",\"icon\":\"" + List[i]["icon"].ToString() + "\",\"menuId\":\"" + List[i]["menuId"].ToString() + "\",\"actionId\":\"" + List[i]["actionId"].ToString() + "\",\"children\":[");
                    MenuBuild(List[i]["id"].ToString(), checkType);
                    strbMenu.Append("]},");
                }
                else
                {
                    if (checkType == "radio"&&List[i]["type"].ToString() == "2")
                    {
                        strbMenu.Append("{\"id\":\"" + List[i]["id"].ToString() + "\",\"nocheck\":true,\"name\":\"" + List[i]["menuName"].ToString() + "\",\"menuId\":\"" + List[i]["menuId"].ToString() + "\",\"actionId\":\"" + List[i]["actionId"].ToString() + "\"},");           
                    }
                    else
                    {
                        strbMenu.Append("{\"id\":\"" + List[i]["id"].ToString() + "\",\"name\":\"" + List[i]["menuName"].ToString() + "\",\"menuId\":\"" + List[i]["menuId"].ToString() + "\",\"actionId\":\"" + List[i]["actionId"].ToString() + "\"},");
                    }
                }
                if (List.Length - 1 == i)
                {
                    strbMenu.Remove(strbMenu.Length - 1, 1);
                }
            }
        }

        // 新增或编辑菜单
        private string addOrEditMenu()
        {
            MyJson my = new MyJson();
            try
            {
                var menuId = Funcs.Get("menuId") == "" ? "0" : Funcs.Get("menuId"); //菜单Id
                var menuName = GlobalObject.unescape(Funcs.Get("menuName")); //菜单名称
                var menuUrl = GlobalObject.unescape(Funcs.Get("menuUrl")); //菜单Url
                var menuCode = GlobalObject.unescape(Funcs.Get("menuCode")); //菜单Key   
                var menuIcon = GlobalObject.unescape(Funcs.Get("menuIcon")); //菜单图标           
                var parentId = Funcs.Get("parentId"); //父菜单
                var status = Funcs.Get("status"); //状态
                var sort = GlobalObject.unescape(Funcs.Get("sort")); //排序


                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("param_menuId",SqlDbType.Int){ Value = menuId },
                    new SqlParameter("param_menuName",SqlDbType.VarChar){ Value = menuName },
                    new SqlParameter("param_menuUrl",SqlDbType.VarChar){ Value = menuUrl },
                    new SqlParameter("param_menuCode",SqlDbType.VarChar){ Value = menuCode },
                    new SqlParameter("param_menuIcon",SqlDbType.VarChar){ Value = menuIcon },
                    new SqlParameter("param_parentId",SqlDbType.Int){ Value = parentId },
                    new SqlParameter("param_status",SqlDbType.Int){ Value = status },
                    new SqlParameter("param_sort",SqlDbType.Int){ Value = sort }
                };

                int count = SqlHelper.ExecProcNonQuery("sp_addOrEditMenu", param);

                if (count > 0)
                {
                    my.flag = 1;
                    my.msg = "保存成功！";
                    return JsonConvert.SerializeObject(my);
                }
                my.flag = 0;
                my.msg = "保存失败！";
                return JsonConvert.SerializeObject(my);

            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "保存失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 获取菜单信息
        private string getMenuInfo()
        {
            MyJson my = new MyJson();
            try
            {
                var menuId = Funcs.Get("menuId");//菜单Id

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@menuId",SqlDbType.Int){ Value = menuId }
                };

                string strSql = "select * from system_menu where id=@menuId";
                DataTable dt = SqlHelper.GetDataTable(strSql, param);
                if (dt == null || dt.Rows.Count < 1)
                {
                    my.flag = 0;
                    my.msg = "获取菜单信息失败！";
                    return JsonConvert.SerializeObject(my);
                }
                my.flag = 1;
                my.obj = dt;
                my.msg = "获取菜单信息成功！";
                return JsonConvert.SerializeObject(my);

            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "获取菜单信息失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 删除菜单
        private string deleteMenu()
        {
            MyJson json = new MyJson();
            try
            {
                string menuId = Funcs.Get("menuId"); //菜单Id
                if (!Funcs.IsNumber(menuId))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@menuId",SqlDbType.Int){ Value = menuId }
                };

                string strSql = "update system_menu set status=2 where id=@menuId";
                SqlHelper.ExecuteNonQuery(strSql,param);

                strSql = "delete from system_roleMenuAction where menuId=@menuId";
                SqlHelper.ExecuteNonQuery(strSql, param);

                strSql = "delete from system_userMenuAction where menuId=@menuId";
                SqlHelper.ExecuteNonQuery(strSql, param);

                strSql = "delete from system_menuAction where menuId=@menuId";
                SqlHelper.ExecuteNonQuery(strSql, param);

                json.flag = 1;
                json.msg = "删除菜单成功";
                return JsonConvert.SerializeObject(json);


            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "删除菜单失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        // 根据菜单获取动作
        private string getActionByMenu()
        {
            PagingJson paging = new PagingJson();
            try
            {
                //获取Datatables发送的参数 必要
                int draw = Int32.Parse(Funcs.Get("draw"));//请求次数 这个值作者会直接返回给前台 

                //排序
                string orderColumn = Funcs.Get("order[0][column]");//那一列排序，从0开始
                string orderDir = Funcs.Get("order[0][dir]");//ase desc 升序或者降序

                //搜索
                string menuId = Funcs.Get("menuId");//菜单Id

                //分页
                int start = Int32.Parse(Funcs.Get("start"));//第一条数据的起始位置
                int length = Int32.Parse(Funcs.Get("length"));//每页显示条数

                // where条件,排序条件
                string strWhere = "", strOrderBy = "";
                if (orderColumn != "" && orderDir != "")
                {
                    strOrderBy = Funcs.Get("columns[" + orderColumn + "][data]") + " " + orderDir;
                }
                string strTb = @"(select a.*,case when ma.menuId is null then 0 else 1 end checkStatus from 
                                 (select * from system_action where status != 2)a
                                 left join(select * from system_menuAction where menuId = "+ menuId + ") ma on a.id = ma.actionId)tt";

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_table",SqlDbType.Text){ Value = strTb },
                    new SqlParameter("@param_field",SqlDbType.VarChar){ Value = "*" },
                    new SqlParameter("@param_where",SqlDbType.Text){ Value = strWhere },
                    new SqlParameter("@param_groupBy",SqlDbType.VarChar){ Value = "" },
                    new SqlParameter("@param_orderBy",SqlDbType.VarChar){ Value = strOrderBy },
                    new SqlParameter("@param_pageNumber",SqlDbType.VarChar){ Value = start/length+1 },
                    new SqlParameter("@param_pageSize",SqlDbType.Int){ Value = length },
                    new SqlParameter("@param_isCount",SqlDbType.Int){ Value = 1 }
                };

                DataSet ds = SqlHelper.ExecProcFillDataSet("sp_GetPagingList", param);
                paging.draw = draw;
                paging.recordsTotal = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                paging.data = ds.Tables[0];
                paging.recordsFiltered = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                return JsonConvert.SerializeObject(paging);
            }
            catch (Exception ex)
            {
                paging.error = "获取动作列表失败:" + ex.Message;
                paging.data = null;
                return JsonConvert.SerializeObject(paging);
            }
        }

        // 根据菜单保存动作
        private string saveActionByMenu()
        {
            MyJson json = new MyJson();
            try
            {
                string menuId = Funcs.Get("menuId");                            //菜单Id
                string strActions = Funcs.Get("strActions").TrimEnd(',');       //动作Id

                if (!Funcs.IsNumber(menuId))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_menuId",SqlDbType.Int){ Value = menuId },
                    new SqlParameter("@param_strActions",SqlDbType.Text){ Value = strActions }
                };
                int result = SqlHelper.ExecProcNonQuery("sp_saveActionByMenu", param);
                if (result > 0)
                {
                    json.flag = 1;
                    json.msg = "保存动作成功";
                    return JsonConvert.SerializeObject(json);
                }
                json.flag = 0;
                json.msg = "保存动作失败";
                return JsonConvert.SerializeObject(json);
            }


            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "保存动作失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }
        #endregion

        #region 动作

        // 获取动作列表
        private string getActionList()
        {
            PagingJson paging = new PagingJson();
            try
            {
                //获取Datatables发送的参数 必要
                int draw = Int32.Parse(Funcs.Get("draw"));//请求次数 这个值作者会直接返回给前台 

                //排序
                string orderColumn = Funcs.Get("order[0][column]");//那一列排序，从0开始
                string orderDir = Funcs.Get("order[0][dir]");//ase desc 升序或者降序

                //搜索
                string actionName = GlobalObject.unescape(Funcs.Get("actionName"));//搜索框值

                //分页
                int start = Int32.Parse(Funcs.Get("start"));//第一条数据的起始位置
                int length = Int32.Parse(Funcs.Get("length"));//每页显示条数

                // where条件,排序条件
                string strWhere = "status=1", strOrderBy = "";
                if (actionName != null && actionName != "")
                {
                    strWhere += " and actionName like '%" + Funcs.ToSqlString(actionName) + "%'";
                }
                if (orderColumn != "" && orderDir != "")
                {
                    strOrderBy = Funcs.Get("columns[" + orderColumn + "][data]") + " " + orderDir;
                }

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_table",SqlDbType.Text){ Value = "system_action" },
                    new SqlParameter("@param_field",SqlDbType.VarChar){ Value = "*" },
                    new SqlParameter("@param_where",SqlDbType.Text){ Value = strWhere },
                    new SqlParameter("@param_groupBy",SqlDbType.VarChar){ Value = "" },
                    new SqlParameter("@param_orderBy",SqlDbType.VarChar){ Value = strOrderBy },
                    new SqlParameter("@param_pageNumber",SqlDbType.VarChar){ Value = start/length+1 },
                    new SqlParameter("@param_pageSize",SqlDbType.Int){ Value = length },
                    new SqlParameter("@param_isCount",SqlDbType.Int){ Value = 1 }
                };

                DataSet ds = SqlHelper.ExecProcFillDataSet("sp_GetPagingList", param);
                paging.draw = draw;
                paging.recordsTotal = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                paging.data = ds.Tables[0];
                paging.recordsFiltered = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                return JsonConvert.SerializeObject(paging);
            }
            catch (Exception ex)
            {
                paging.error = "获取动作列表失败:" + ex.Message;
                paging.data = null;
                return JsonConvert.SerializeObject(paging);
            }
        }

        // 新增或编辑动作
        private string addOrEditAction()
        {
            MyJson my = new MyJson();
            try
            {
                var actionId = Funcs.Get("actionId") == "" ? "0" : Funcs.Get("actionId"); //动作Id
                var actionName = GlobalObject.unescape(Funcs.Get("actionName")); //动作名称
                var actionCode = GlobalObject.unescape(Funcs.Get("actionCode")); //动作编码
                var actionIcon = GlobalObject.unescape(Funcs.Get("actionIcon")); //动作图标 
                var actionFunc = GlobalObject.unescape(Funcs.Get("actionFunc")); //动作方法           
                var sort = GlobalObject.unescape(Funcs.Get("sort")); //排序


                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("param_actionId",SqlDbType.Int){ Value = actionId },
                    new SqlParameter("param_actionName",SqlDbType.VarChar){ Value = actionName },
                    new SqlParameter("param_actionCode",SqlDbType.VarChar){ Value = actionCode },
                    new SqlParameter("param_actionIcon",SqlDbType.VarChar){ Value = actionIcon },
                    new SqlParameter("param_actionFunc",SqlDbType.VarChar){ Value = actionFunc },
                    new SqlParameter("param_sort",SqlDbType.Int){ Value = sort }
                };

                int count = SqlHelper.ExecProcNonQuery("sp_addOrEditAction", param);

                if (count > 0)
                {
                    my.flag = 1;
                    my.msg = "保存成功！";
                    return JsonConvert.SerializeObject(my);
                }
                my.flag = 0;
                my.msg = "保存失败！";
                return JsonConvert.SerializeObject(my);

            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "保存失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 获取动作信息
        private string getActionInfo()
        {
            MyJson my = new MyJson();
            try
            {
                var actionId = Funcs.Get("actionId");//菜单Id

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@actionId",SqlDbType.Int){ Value = actionId }
                };

                string strSql = "select * from system_action where id=@actionId";
                DataTable dt = SqlHelper.GetDataTable(strSql, param);
                if (dt == null || dt.Rows.Count < 1)
                {
                    my.flag = 0;
                    my.msg = "获取动作信息失败！";
                    return JsonConvert.SerializeObject(my);
                }
                my.flag = 1;
                my.obj = dt;
                my.msg = "获取动作信息成功！";
                return JsonConvert.SerializeObject(my);

            }
            catch (Exception ex)
            {
                my.flag = 0;
                my.msg = "获取动作信息失败：" + ex.Message;
                return JsonConvert.SerializeObject(my);
            }
        }

        // 删除动作
        private string deleteAction()
        {
            MyJson json = new MyJson();
            try
            {
                string actionId = Funcs.Get("actionId"); //动作Id
                if (!Funcs.IsNumber(actionId))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@actionId",SqlDbType.Int){ Value = actionId }
                };

                string strSql = "update system_action set status=2 where id=@actionId";
                int result = SqlHelper.ExecuteNonQuery(strSql, param);

                strSql = "delete from system_roleMenuAction where actionId=@actionId";
                SqlHelper.ExecuteNonQuery(strSql, param);

                strSql = "delete from system_userMenuAction where actionId=@actionId";
                SqlHelper.ExecuteNonQuery(strSql, param);

                strSql = "delete from system_menuAction where actionId=@actionId";
                SqlHelper.ExecuteNonQuery(strSql, param);


                json.flag = 1;
                json.msg = "删除动作成功";
                return JsonConvert.SerializeObject(json);

            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "删除动作失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        #endregion

        #region 角色授权

        // 根据角色获取菜单动作
        private string getMenuActionByRole()
        {
            MyJson json = new MyJson();
            try
            {
                string roleId = Funcs.Get("roleId"); //角色id

                string strSql = "select case actionId when 0 then 'menuId'+convert(varchar(20),menuId) else 'actionId'+convert(varchar(20),actionId) end id from system_roleMenuAction where roleId=@param_roleId";
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_roleId",SqlDbType.Int){ Value = roleId },
                };
                DataTable dt= SqlHelper.GetDataTable(strSql,param);
                json.obj = dt;
                json.flag = 1;
                return JsonConvert.SerializeObject(json);

            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "根据角色获取菜单动作失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        
        // 根据角色保存菜单动作
        private string saveMenuActionByRole()
        {
            MyJson json = new MyJson();
            try
            {
                string roleId = Funcs.Get("roleId");                        //角色Id
                string menuIds = Funcs.Get("menuIds").TrimEnd(',');         //菜单Ids
                string actionIds = Funcs.Get("actionIds").TrimEnd(',');     //动作Ids

                if (!Funcs.IsNumber(roleId))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_roleId",SqlDbType.Int){ Value = roleId },
                    new SqlParameter("@param_menuIds",SqlDbType.Text){ Value = menuIds },
                    new SqlParameter("@param_actionIds",SqlDbType.Text){ Value = actionIds }

                };
                SqlHelper.ExecProcNonQuery("sp_saveMenuActionByRole", param);
                json.flag = 1;
                json.msg = "保存成功";
                return JsonConvert.SerializeObject(json);
            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "保存失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        #endregion

        #region 用户授权
        // 获取用户列表
        private string getUserList2()
        {
            PagingJson paging = new PagingJson();
            try
            {
                //获取Datatables发送的参数 必要
                int draw = Int32.Parse(Funcs.Get("draw"));//这个值作者会直接返回给前台

                //排序
                string orderColumn = Funcs.Get("order[0][column]");//那一列排序，从0开始
                string orderDir = Funcs.Get("order[0][dir]");//ase desc 升序或者降序

                //搜索
                string sStatus = Funcs.Get("sStatus"); //用户状态
                string sRole = Funcs.Get("sRole");//用户类型
                string sName = GlobalObject.unescape(Funcs.Get("sName"));//搜索框值

                //分页
                int start = Int32.Parse(Funcs.Get("start"));//第一条数据的起始位置
                int length = Int32.Parse(Funcs.Get("length"));//每页显示条数

                // where条件,排序条件
                string strWhere = "1=1", strOrderBy = "";
                if (sStatus != null && sStatus != "")
                {
                    strWhere += " and status=" + sStatus;
                }
                if (sRole != null && sRole != "")
                {
                    strWhere += " and roleId=" + sRole;
                }
                if (sName != null && sName != "")
                {
                    strWhere += " and (userName like '%" + Funcs.ToSqlString(sName) + "%' or trueName like '%" + Funcs.ToSqlString(sName) + "%')";
                }
                if (orderColumn != "" && orderDir != "")
                {
                    strOrderBy = Funcs.Get("columns[" + orderColumn + "][data]") + " " + orderDir;
                }
                string strTb = "(select u.id,u.userName,case when uma.userId is null then 0 else 1 end isHave from (select * from [system_user] where status!=2)u left join (select distinct userId from  system_userMenuAction) uma on u.id=uma.userId)tt";

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_table",SqlDbType.Text){ Value = strTb },
                    new SqlParameter("@param_field",SqlDbType.VarChar){ Value = "*" },
                    new SqlParameter("@param_where",SqlDbType.Text){ Value = strWhere },
                    new SqlParameter("@param_groupBy",SqlDbType.VarChar){ Value = "" },
                    new SqlParameter("@param_orderBy",SqlDbType.VarChar){ Value = strOrderBy },
                    new SqlParameter("@param_pageNumber",SqlDbType.VarChar){ Value = start/length+1 },
                    new SqlParameter("@param_pageSize",SqlDbType.Int){ Value = length },
                    new SqlParameter("@param_isCount",SqlDbType.Int){ Value = 1 }
                };

                DataSet ds = SqlHelper.ExecProcFillDataSet("sp_GetPagingList", param);
                paging.draw = draw;
                paging.recordsTotal = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                paging.data = ds.Tables[0];
                paging.recordsFiltered = Int32.Parse(ds.Tables[1].Rows[0][0].ToString());
                return DateTimeFormat(paging, "yyyy-MM-dd HH:mm ");

            }
            catch (Exception ex)
            {
                paging.error = "获取用户列表失败:" + ex.Message;
                paging.data = null;
                return JsonConvert.SerializeObject(paging);
            }
        }


        DataTable dtMenu2 = null;
        DataRow[] menuChildren2 = null;
        StringBuilder strbMenu2 = new StringBuilder();
        // 根据用户获取菜单动作树
        private string getMenuActionTreeByUser()
        {
            MyJson json = new MyJson();
            try
            {
                string userId = Funcs.Get("userId"); //角色id

                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@userId",SqlDbType.Int){ Value = userId },
                };
                //hasPermissin 1代表用户启用 2代表用户禁用 3代表角色启用
                string strSql = @"select distinct 'menuId'+convert(varchar(20),tt.menuId) id,m.menuName,'menuId'+convert(varchar(20),m.parentId) parentId,1 type,m.sort,m.menuIcon icon,tt.menuId,tt.actionId,tt.hasPermissin
	                            from(
		                            select rma.menuId,actionId,3 hasPermissin from (select * from [system_user] where id=@userId)u 
		                            inner join (select * from system_roleMenuAction where actionId=0) rma on rma.roleId=u.roleId 
		                            where not exists(select * from system_userMenuAction where userId=@userId and menuId=rma.menuId and actionId=rma.actionId)
		                            union
		                            select uma.menuId,uma.actionId,hasPermissin from (select * from [system_user] where id=@userId)u 
		                            inner join (select * from system_userMenuAction where actionId=0) uma on uma.userId=u.id
	                            )tt
	                            inner join system_menu m on tt.menuId=m.id 
	                            union
	                            select distinct 'actionId'+convert(varchar(20),tt.actionId) id,a.actionName menuName,'menuId'+convert(varchar(20),tt.menuId) parentId,2 type,a.sort,a.actionIcon icon,tt.menuId,tt.actionId,tt.hasPermissin
	                            from(
		                            select rma.menuId,actionId,3 hasPermissin from (select * from [system_user] where id=@userId)u 
		                            inner join (select * from system_roleMenuAction where actionId!=0) rma on rma.roleId=u.roleId 
		                            where not exists(select * from system_userMenuAction where userId=@userId and menuId=rma.menuId and actionId=rma.actionId)
		                            union
		                            select uma.menuId,uma.actionId,hasPermissin from (select * from [system_user] where id=@userId)u 
		                            inner join (select * from system_userMenuAction where actionId!=0) uma on uma.userId=u.id
	                            )tt
	                            inner join system_menu m on tt.menuId=m.id 
	                            inner join system_action a on tt.actionId=a.id";

                dtMenu2 = SqlHelper.GetDataTable(strSql,param);
                strbMenu2.Append("[");
                MenuBuild2("menuId0");
                strbMenu2.Append("]");
                json.flag = 1;
                json.obj = strbMenu2.ToString();
                return JsonConvert.SerializeObject(json);
            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "根据用户获取菜单动作树错误：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        // 构建菜单
        public void MenuBuild2(string menuId)
        {
            DataRow[] List = dtMenu2.Select(string.Format("parentId='{0}'", menuId));
            for (int i = 0; i < List.Length; i++)
            {
                menuChildren2 = dtMenu2.Select(string.Format("parentId='{0}'", List[i]["id"].ToString()));
                if (menuChildren2.Length != 0)
                {
                    strbMenu2.Append("{\"id\":\"" + List[i]["id"].ToString() + "\",\"name\":\"" + List[i]["menuName"].ToString() + "\",\"icon\":\"" + List[i]["icon"].ToString() + "\",\"menuId\":\"" + List[i]["menuId"].ToString() + "\",\"actionId\":\"" + List[i]["actionId"].ToString() + "\",\"cHasPermissin\":\"" + List[i]["hasPermissin"].ToString() + "\",\"children\":[");
                    MenuBuild2(List[i]["id"].ToString());
                    strbMenu2.Append("]},");
                }
                else
                {
                    strbMenu2.Append("{\"id\":\"" + List[i]["id"].ToString() + "\",\"name\":\"" + List[i]["menuName"].ToString() + "\",\"menuId\":\"" + List[i]["menuId"].ToString() + "\",\"actionId\":\"" + List[i]["actionId"].ToString() + "\",\"cHasPermissin\":\"" + List[i]["hasPermissin"].ToString() + "\"},");
                }
                if (List.Length - 1 == i)
                {
                    strbMenu2.Remove(strbMenu2.Length - 1, 1);
                }
            }
        }

        // 根据用户保存菜单动作
        private string saveMenuActionByUser()
        {
            MyJson json = new MyJson();
            try
            {
                string userId = Funcs.Get("userId");                        //用户Id
                string menuIds = Funcs.Get("menuIds").TrimEnd(',');         //菜单Ids
                string actionIds = Funcs.Get("actionIds").TrimEnd(',');     //动作Ids
                string status = Funcs.Get("status");                        //状态


                if (!Funcs.IsNumber(userId))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_userId",SqlDbType.Int){ Value = userId },
                    new SqlParameter("@param_menuIds",SqlDbType.Text){ Value = menuIds },
                    new SqlParameter("@param_actionIds",SqlDbType.Text){ Value = actionIds },
                    new SqlParameter("@param_status",SqlDbType.Int){ Value = status }

                };
                SqlHelper.ExecProcNonQuery("sp_saveMenuActionByUser", param);
                json.flag = 1;
                json.msg = "保存成功";
                return JsonConvert.SerializeObject(json);
            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "保存失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        // 重置用户权限
        private string resetMenuActionByUser()
        {
            MyJson json = new MyJson();
            try
            {
                string userId = Funcs.Get("userId");                        //用户Id

                if (!Funcs.IsNumber(userId))
                {
                    json.flag = 0;
                    json.msg = "参数错误，请刷新重试";
                    return JsonConvert.SerializeObject(json);
                }
                SqlParameter[] param = new SqlParameter[]{
                    new SqlParameter("@param_userId",SqlDbType.Int){ Value = userId }
                };
                string strSql = "delete from system_userMenuAction where userId=@param_userId";
                SqlHelper.ExecuteNonQuery(strSql, param);
                json.flag = 1;
                json.msg = "重置成功";
                return JsonConvert.SerializeObject(json);
            }
            catch (Exception ex)
            {
                json.flag = 0;
                json.msg = "重置失败：" + ex.Message;
                return JsonConvert.SerializeObject(json);
            }
        }

        #endregion

        //构建菜单
        public string MenuBuild(int menuId,DataTable dt)
        {
            StringBuilder strBMenu = new StringBuilder();
            DataRow[] ListFirst = dt.Select(string.Format("parentId={0}", menuId));
            for (int i = 0; i < ListFirst.Length; i++)
            {
                DataRow[] firstClildren = dt.Select(string.Format("parentId={0}", Int32.Parse(ListFirst[i]["id"].ToString())));
                if (firstClildren.Length != 0)
                {
                    strBMenu.Append("<li>");
                    strBMenu.Append("<a href=\"#\">");
                    strBMenu.Append("<i class=\"" + ListFirst[i]["menuIcon"].ToString() + "\"></i>&nbsp;&nbsp;");
                    strBMenu.Append("<span class=\"nav-label\">" + ListFirst[i]["menuName"].ToString() + "</span><span class=\"fa arrow\"></span></a>");
                    strBMenu.Append("<ul class=\"nav nav-second-level\">");
                    //构建二级菜单
                    DataRow[] ListSecond = dt.Select(string.Format("parentId={0}", ListFirst[i]["id"].ToString()));
                    for (int j = 0; j < ListSecond.Length; j++)
                    {
                        DataRow[] secondClildren = dt.Select(string.Format("parentId={0}", Int32.Parse(ListSecond[j]["id"].ToString())));
                        if (secondClildren.Length != 0)
                        {
                            strBMenu.Append("<li>");
                            strBMenu.Append("<a href=\"#\" id=\"damian\">");
                            strBMenu.Append(ListSecond[j]["menuName"].ToString() + "<span class=\"fa arrow\"></span></a>");
                            strBMenu.Append("<ul class=\"nav nav-third-level\">");
                            //构建三级菜单
                            DataRow[] ListThird = dt.Select(string.Format("parentId={0}", ListSecond[j]["id"].ToString()));
                            for (int k = 0; k < ListThird.Length; k++)
                            {
                                strBMenu.Append("<li>");
                                strBMenu.Append("<a href=\"#\" title=\"" + ListThird[k]["menuUrl"].ToString() + "\">");
                                strBMenu.Append(ListThird[k]["menuName"].ToString() + "</a>");
                                strBMenu.Append("</li>");
                            }
                            strBMenu.Append("</ul>");
                            strBMenu.Append("</li>");
                        }
                        else
                        {
                            strBMenu.Append("<li>");
                            strBMenu.Append("<a href=\"#\" title=\"" + ListSecond[j]["menuUrl"].ToString() + "\">");
                            strBMenu.Append(ListSecond[j]["menuName"].ToString() + "</a>");
                            strBMenu.Append("</li>");
                        }
                    }
                    strBMenu.Append("</ul>");
                    strBMenu.Append("</li>");
                }
                else
                {
                    strBMenu.Append("<li>");
                    strBMenu.Append("<a href=\"#\" title=\"" + ListFirst[i]["menuUrl"].ToString() + "\">");
                    strBMenu.Append("<i class=\"" + ListFirst[i]["menuIcon"].ToString() + "\"></i>");
                    strBMenu.Append("<span class=\"nav-label\">" + ListFirst[i]["menuName"].ToString() + "</span></a>");
                    strBMenu.Append("</li>");
                }
            }
            return strBMenu.ToString();
        }
    }
}