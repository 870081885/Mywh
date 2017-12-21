<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuList.aspx.cs" Inherits="Mywh.system.menuList" %>

<!DOCTYPE html>
<html>
<head>
    <title>菜单列表</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <link href="/assets/plugins/zTree/css/zTreeStyle/zTreeStyle.css" rel="stylesheet"
        type="text/css" />
    <script>!window.jQuery && document.write("<script src=\"/assets/js/jquery.min.js\">" + "<\/script>");</script>
    <script src="/assets/js/isLogin.js"></script>
    <script src="/assets/plugins/zTree/js/jquery.ztree.core.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/zTree/js/jquery.ztree.excheck.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/select2/js/select2.min.js" type="text/javascript"></script>
    <script src="/assets/inspinia/js/inspinia.js" type="text/javascript"></script>
    <script src="/assets/js/GetQueryString.js" type="text/javascript"></script>
    <script src="/assets/js/common.js" type="text/javascript"></script>
</head>
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2>
                菜单列表</h2>
            <ol class="breadcrumb">
                 <li>
                    <a href="#">系统管理</a>
                </li>
                <li class="active"><strong>菜单列表</strong> </li>
            </ol>
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>
                            菜单列表</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠"><i class="fa fa-chevron-up"></i></a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <div style="float: right;">
                            <button type="button" class="btn btn-primary btn-sm" onclick='$("#mainContent").load("/system/menuAdd.aspx");'>
                                新增导航</button>
                            <button type="button" class="btn btn-warning btn-sm" onclick='editInfo();'>
                                编辑导航</button>
                            <button type="button" class="btn btn-info btn-sm" onclick='relateAction();'>
                                关联动作</button>
                            <button type="button" class="btn btn-danger btn-sm" onclick='deleteInfo();'>
                                删除导航</button>
                        </div>
                        <br />
                        <br />
                        <div style="border: 1px solid #bbb;">
                            <ul id="menuTree" class="ztree" style="padding: 15px;">
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">

    // 全局变量
    var global = {
        zMenuTree: null,
        layerIndex:null
    };

    // zChinaTree 的参数配置
    var menuTreeSetting = {
        check: {
            enable: true,
            chkStyle: "radio",
            radioType: "all"
        }
    };

    $(function () {
        bindMenuTree();
    });

    //绑定树形菜单列表
    function bindMenuTree() {
        $.ajax({
            url: "/ajax/System.ashx",
            data: { action: 'getMenuActionTree','checkType':'radio' },
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
                    global.zMenuTree = $.fn.zTree.init($("#menuTree"), menuTreeSetting, eval("(" + my.obj + ")"));
                    global.zMenuTree.expandAll(true);
                }
            }
        });
    }

    //编辑菜单
    function editInfo() {
        var nodes = global.zMenuTree.getCheckedNodes(true);
        if (nodes.length == 0) {
            layer.msg("请先选中导航");
            return;
        }
        debugger;
        var menuId = "";
        if (nodes[0].id.trim()!="")
        {
            menuId = nodes[0].id.trim().replace("menuId", "");
        }
        $("#mainContent").load("/system/menuAdd.aspx?menuId=" + menuId);
    }

    //关联动作
    function relateAction() {
        var nodes = global.zMenuTree.getCheckedNodes(true);
        if (nodes.length == 0) {
            layer.msg("请先选中导航");
            return;
        }
        var menuId = "";
        if (nodes[0].id.trim() != "") {
            menuId = nodes[0].id.trim().replace("menuId", "");
        }
        global.layerIndex =layer.open({
            title: '关联动作',
            type: 2,
            content: ['/system/menuAction.aspx?menuId=' + menuId, 'no'],
            area: ['40%', '40%'],
            btn: ['确认', '返回'],
            yes: function (index, layero) {
                //按钮【按钮一】的回调
                var iframeWin = window[layero.find('iframe')[0]['name']]; //得到iframe页的窗口对象，执行iframe页的方法：iframeWin.method();
                var strActions = iframeWin.getCheckedActionByMenu();
                saveActionByMenu(nodes[0].id, strActions);
            }
        }); 
    }

    //根据菜单保留动作
    function saveActionByMenu(menuId, strActions)
    {
        $.ajax({
            type: "post",
            url: "/ajax/System.ashx",
            data: { action: 'saveActionByMenu', menuId: menuId, strActions: strActions },
            async: false,
            success: function (data) {
                var my = eval("(" + data + ")");
                if (my.flag == -100) {
                    layer.msg(my.msg);
                    window.location.href = "/login.aspx";
                    return;
                }
                else if (my.flag == 1) {
                    window.layer.msg(my.msg);
                    layer.close(global.layerIndex);
                    bindMenuTree();
                }
                else {
                    window.layer.msg(my.msg);
                }
            }
        });
    }

    //删除菜单
    function deleteInfo(userId) {
        var nodes = global.zMenuTree.getCheckedNodes(true);
        if (nodes.length == 0) {
            layer.msg("请先选中导航");
            return;
        }
        var menuId = "";
        if (nodes[0].id.trim() != "") {
            menuId = nodes[0].id.trim().replace("menuId", "");
        }
        window.layer.confirm('确定要删除此导航吗？', {
            btn: ['确定', '取消'] //按钮
        }, function () {
            $.ajax({
                type: "post",
                url: "/ajax/System.ashx",
                data: { action: 'deleteMenu', menuId: menuId },
                async: false,
                success: function (data) {
                    var my = eval("(" + data + ")");
                    if (my.flag == -100) {
                        layer.msg(my.msg);
                        window.location.href = "/login.aspx";
                        return;
                    }
                    else if (my.flag == 1) {
                        window.layer.msg(my.msg);
                        bindMenuTree();
                    }
                    else {
                        window.layer.msg(my.msg);
                    }
                }
            });
        });
    }

</script>
</html>
