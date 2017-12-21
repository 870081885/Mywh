<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userMenuAction.aspx.cs" Inherits="Mywh.system.userMenuAction" %>

<!DOCTYPE html>
<html>
<head>
    <title>用户授权</title>
    <link href="/assets/plugins/zTree/css/zTreeStyle/zTreeStyle.css" rel="stylesheet"
        type="text/css" />
    <script src="/assets/plugins/zTree/js/jquery.ztree.core.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/zTree/js/jquery.ztree.excheck.min.js" type="text/javascript"></script>
    <link href="/assets/plugins/DataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
        type="text/css" />

    <link href="/assets/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
    <script src="/assets/plugins/DataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/DataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>

    <script src="/assets/inspinia/js/inspinia.js" type="text/javascript"></script>
        <style type="text/css">
        tr.highlight {
            color: #CC0033;
        }
    </style>
</head>
<!--防止列表下出现阴影 -->
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2>用户授权</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="#">系统管理</a>
                </li>
                <li class="active">
                    <strong>用户授权</strong>
                </li>
            </ol>
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>用户列表</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <%--<a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>--%>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div class="form-inline">
                            <div class="form-group">
                                <label class="sr-only" for="userType">
                                    用户名称</label>
                                <input type="text" class="form-control" id="userName" placeholder="用户名称" />
                            </div>
                            <button type="button" class="btn btn-success search btn-sm" onclick="search()">
                                查 询</button>
                            <button type="button" class="btn btn-danger search btn-sm" onclick="reset()">
                                重 置</button>
                        </div>
                        <br />  
                        <table id="tbUser" class="table table-bordered table-hover" cellspacing="0"
                            width="100%">
                            <thead>
                                <tr>
                                    <th>
                                        id
                                    </th>
                                    <th>
                                        用户名称
                                    </th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>用户拥有权限</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <%--<a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>--%>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <ul id="menuActionTree" class="ztree" style="padding: 15px;">
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-md-5">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>用户授权</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <%--<a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>--%>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div style="float: right;">
                            <button type="button" class="btn btn-primary btn-sm" onclick='saveMenuActionByUser(1);'>
                                启用</button>
                            <button type="button" class="btn btn-danger btn-sm" onclick='saveMenuActionByUser(2);'>
                                禁用</button>
                        </div>
                        <ul id="menuActionTree2" class="ztree" style="padding: 15px;">
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>   
</body>
<script type="text/javascript">
    // 全局变量
    var global = {
        tbUser: null,
        zMenuActionTree: null,
        zMenuActionTree2: null,
        layerIndex: null
    };

    // zChinaTree 的参数配置
    var menuActionTreeSetting = {
        check: {
            enable: false,
            chkStyle: "checkbox"
        }
    };

    var menuActionTree2Setting = {
        check: {
            enable: true,
            chkboxType: { "Y": "s", "N": "s" },
            chkStyle: "checkbox"
        }
    };

    $(function () {
        getUserList();
        bindMenuActionTreeByUser();
        bindMenuActionTree();
    });

    //获取用户列表
    function getUserList() {
        global.tbUser = $('#tbUser').DataTable({
            "select": true,
            "searching": false,
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "/ajax/System.ashx",
                "type": "POST",
                "data": function (d) {
                    d.action = "getUserList2";
                    d.roleName = escape($("#userName").val().trim());
                }
            },
            "rowCallback": function (row, data, index) {
                if (data.isHave == 1) {
                    $(row).addClass('highlight');
                }
            },
            "lengthMenu": [[999999], ["All"]],
            "language": {
                "url": "/assets/plugins/DataTables/language.txt"
            },
            "columns": [
                { "data": "id" },
                { "data": "userName" }
            ],
            "dom": 't'
        });
    }

    //根据用户绑定树形菜单动作列表
    function bindMenuActionTreeByUser() {
        global.tbUser.on('select', function (e, dt, type, indexes) {
            var userId = global.tbUser.rows({ selected: true }).data()[0].id;
            $.ajax({
                url: "/ajax/System.ashx",
                data: { action: 'getMenuActionTreeByUser', 'userId': userId },
                async: false,
                type: "POST",
                datatype: "json",
                success: function (data) {
                    var my = eval("(" + data + ")");
                    if (my.flag == -100) {
                        layer.msg(my.msg);
                        window.location.href = "/login.aspx";
                        return;
                    }
                    else if (my.flag != 1) {
                        window.layer.msg(my.msg);
                    }
                    else {
                        global.zMenuActionTree = $.fn.zTree.init($("#menuActionTree"), menuActionTreeSetting, eval("(" + my.obj + ")"));
                        global.zMenuActionTree.expandAll(true);       

                        debugger;
                        var node = global.zMenuActionTree.getNodes();
                        var nodes = global.zMenuActionTree.transformToArray(node);
                        $.each(nodes, function (i, item) {
                            debugger;
                            //1代表用户启用 2代表用户禁用 3代表角色启用
                            if (item.cHasPermissin == 1) {
                                global.zMenuActionTree.setting.view.fontCss["color"] = "#1ab394";
                            }
                            else if (item.cHasPermissin == 2) {
                                global.zMenuActionTree.setting.view.fontCss["color"] = "#ed5565";
                            }
                            else {
                                global.zMenuActionTree.setting.view.fontCss["color"] = "";
                            }
                            global.zMenuActionTree.updateNode(nodes[i]);
                        });
                    }
                }
            });
        });  
    }

    //绑定树形菜单动作列表
    function bindMenuActionTree() {
        $.ajax({
            url: "/ajax/System.ashx",
            data: { action: 'getMenuActionTree', 'checkType': 'checkbox' },
            async: false,
            type: "POST",
            datatype: "json",
            success: function (data) {
                var my = eval("(" + data + ")");
                if (my.flag == -100) {
                    layer.msg(my.msg);
                    window.location.href = "/login.aspx";
                    return;
                }
                else if (my.flag != 1) {
                    window.layer.msg(my.msg);
                }
                else {
                    global.zMenuActionTree2 = $.fn.zTree.init($("#menuActionTree2"), menuActionTree2Setting, eval("(" + my.obj + ")"));
                    global.zMenuActionTree2.expandAll(true);
                }
            }
        });
    }

    //查询
    function search() {
        global.tbUser.ajax.reload(null, true);
        global.zMenuActionTree.destroy("#menuActionTree");
        global.zMenuActionTree2.checkAllNodes(false);
    }

    //重置用户权限
    function reset()
    {
        global.tbUser.ajax.reload(null, true);
        if (global.tbUser.rows({ selected: true }).count() == 0) {
            window.layer.msg("请先选择一个用户！");
            return;
        }
        var userId = global.tbUser.rows({ selected: true }).data()[0].id;
        $.ajax({
            url: "/ajax/System.ashx",
            data: { action: 'resetMenuActionByUser', userId: userId},
            type: "POST",
            datatype: "json",
            success: function (data) {
                var my = eval("(" + data + ")");
                if (my.flag == -100) {
                    layer.msg(my.msg);
                    window.location.href = "/login.aspx";
                    return;
                }
                else if (my.flag != 1) {
                    window.layer.msg(my.msg);
                }
                else {
                    search();
                    window.layer.msg(my.msg);
                }
            }
        });

    }

    //根据用户保存菜单动作
    function saveMenuActionByUser(status)
    {
        if (global.tbUser.rows({ selected: true }).count() == 0)
        {
            window.layer.msg("请先选择一个用户！");
            return;
        }
        var userId = global.tbUser.rows({ selected: true }).data()[0].id;

        var nodes = global.zMenuActionTree2.getCheckedNodes(true);
        var menuIds = "",actionIds="";
        $.each(nodes, function (i, item) {
            if (nodes.children == null) {
                menuIds = menuIds + item.menuId + ",";
                actionIds = actionIds + item.actionId + ",";
            }
        });
        $.ajax({
            url: "/ajax/System.ashx",
            data: { action: 'saveMenuActionByUser', userId: userId, menuIds: menuIds, actionIds: actionIds,status:status },
            async: false,
            type: "POST",
            datatype: "json",
            success: function (data) {
                var my = eval("(" + data + ")");
                if (my.flag == -100) {
                    layer.msg(my.msg);
                    window.location.href = "/login.aspx";
                    return;
                }
                else if (my.flag != 1) {
                    window.layer.msg(my.msg);
                }
                else {
                    search();
                    window.layer.msg(my.msg);
                }
            }
        });
    }

</script>
</html>

