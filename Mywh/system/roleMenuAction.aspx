<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roleMenuAction.aspx.cs" Inherits="Mywh.system.roleMenuAction" %>

<!DOCTYPE html>
<html>
<head>
    <title>角色授权</title>
    <link href="/assets/plugins/zTree/css/zTreeStyle/zTreeStyle.css" rel="stylesheet"
        type="text/css" />
    <script>!window.jQuery && document.write("<script src=\"/assets/js/jquery.min.js\">" + "<\/script>");</script>
    <script src="/assets/js/isLogin.js"></script>
    <script src="/assets/plugins/zTree/js/jquery.ztree.core.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/zTree/js/jquery.ztree.excheck.min.js" type="text/javascript"></script>
    <link href="/assets/plugins/DataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
        type="text/css" />

    <link href="/assets/plugins/DataTables/extensions/Select/css/select.bootstrap.min.css" rel="stylesheet" />
    <script src="/assets/plugins/DataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/DataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/DataTables/extensions/Select/js/dataTables.select.min.js"></script>

    <script src="/assets/inspinia/js/inspinia.js" type="text/javascript"></script>
</head>
<!--防止列表下出现阴影 -->
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2>角色授权</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="#">系统管理</a>
                </li>
                <li class="active">
                    <strong>角色授权</strong>
                </li>
            </ol>
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-3">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>角色列表</h5>
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
                                    角色名称</label>
                                <input type="text" class="form-control" id="roleName" placeholder="角色名称" />
                            </div>
                            <button type="button" class="btn btn-success search btn-sm" onclick="search()">
                                查 询</button>
                        </div>
                        <br />  
                        <table id="tbRole" class="table table-bordered table-hover" cellspacing="0"
                            width="100%">
                            <thead>
                                <tr>
                                    <th>
                                        id
                                    </th>
                                    <th>
                                        角色名称
                                    </th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>菜单动作关联</h5>
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
                            <button type="button" class="btn btn-primary btn-sm" onclick='saveMenuActionByRole();'>
                                保存</button>
                        </div>
                        <ul id="menuActionTree" class="ztree" style="padding: 15px;">
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
        tbRole: null,
        zMenuActionTree: null,
        layerIndex: null
    };
    // zChinaTree 的参数配置
    var menuActionTreeSetting = {
        check: {
            enable: true,
            chkStyle: "checkbox"
        }
    };

    $(function () {
        getRoleList();
        bindMenuActionTree();
        getMenuActionByRole();
    });
    //获取角色列表
    function getRoleList() {
        global.tbRole = $('#tbRole').DataTable({
            "select": true,
            "searching": false,
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "/ajax/System.ashx",
                "type": "POST",
                "data": function (d) {
                    d.action = "getRoleList";
                    d.roleName = escape($("#roleName").val().trim());
                }
            },
            "lengthMenu": [[999999], ["All"]],
            "language": {
                "url": "/assets/plugins/DataTables/language.txt"
            },
            "columns": [
                    { "data": "id" },
                    { "data": "roleName" }
                ],
            "dom": 't'
        });
    }

    //根据角色获取菜单动作
    function getMenuActionByRole()
    {
        global.tbRole.on('select', function (e, dt, type, indexes) {
            var roleId = global.tbRole.rows({ selected: true }).data()[0].id;
            $.ajax({
                url: "/ajax/System.ashx",
                data: { action: 'getMenuActionByRole', roleId: roleId},
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
                        global.zMenuActionTree.checkAllNodes(false);
                        $.each(my.obj, function (i, item) {
                            node = global.zMenuActionTree.getNodesByParam("id", item.id, null);
                            global.zMenuActionTree.checkNode(node[0], true, false, true);
                        });
                    }
                }
            });
        });
    }

    //查询
    function search() {
        global.tbRole.ajax.reload(null, true);
        global.zMenuActionTree.checkAllNodes(false);
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
                    global.zMenuActionTree = $.fn.zTree.init($("#menuActionTree"), menuActionTreeSetting, eval("(" + my.obj + ")"));
                    global.zMenuActionTree.expandAll(true);
                }
            }
        });
    }

    //根据角色保存菜单动作
    function saveMenuActionByRole()
    {
        if (global.tbRole.rows({ selected: true }).count() == 0)
        {
            window.layer.msg("请先选择一个角色！");
            return;
        }
        var roleId = global.tbRole.rows({ selected: true }).data()[0].id;

        var node = global.zMenuActionTree.getCheckedNodes(true);
        var menuIds = "",actionIds="";
        $.each(node, function (i, item) {
            if (node.children == null) {
                menuIds = menuIds + item.menuId + ",";
                actionIds = actionIds + item.actionId + ",";
            }
        });
        $.ajax({
            url: "/ajax/System.ashx",
            data: { action: 'saveMenuActionByRole', roleId: roleId, menuIds: menuIds, actionIds: actionIds },
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
                    window.layer.msg(my.msg);
                }
            }
        });
    }

</script>
</html>
