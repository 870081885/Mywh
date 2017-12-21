<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuAdd.aspx.cs" Inherits="Mywh.system.menuAdd" %>

<!DOCTYPE html>
<html>
<head>
    <title>新增菜单</title>
    <script src="/assets/plugins/validate/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/validate/messages_zh.min.js" type="text/javascript"></script>
    <script src="/assets/inspinia/js/inspinia.js" type="text/javascript"></script>
</head>
<!--防止出现阴影 -->
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2 class="sTitle">
                新增菜单</h2>
            <ol class="breadcrumb">
                <li><a href="#">系统管理</a> </li>
                <li class="active sTitle"><strong>新增菜单</strong> </li>
            </ol>
        </div>
    </div>
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5 class="sTitle">
                            新增菜单</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠"><i class="fa fa-chevron-up"></i></a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form id="menuForm" class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="menuName" class="col-sm-2 control-label">
                                    菜单名称</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="menuName" name="menuName" placeholder="菜单名称"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuUrl" class="col-sm-2 control-label">
                                    菜单Url</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="menuUrl" name="menuUrl" placeholder="菜单Url"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuKey" class="col-sm-2 control-label">
                                    菜单编码</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="menuCode" name="menuCode" placeholder="菜单编码"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="parentMenu" class="col-sm-2 control-label">
                                    父菜单</label>
                                <div class="col-sm-9">
                                    <select class="form-control" id="parentMenu" name="parentMenu" required>
                                        <option value=''>-请选择文章类型-</option>
                                        <option value='0'>一级菜单</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="menuIcon" class="col-sm-2 control-label">
                                    菜单图标</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="menuIcon" name="menuIcon" placeholder="菜单图标"/>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">
                                    状态
                                </label>
                                <div class="col-sm-10">
                                    <label class="checkbox-inline i-checks"><input type="radio" name="status" id="status0" value="0" required>禁用</label>
                                    <label class="checkbox-inline i-checks"><input type="radio" name="status" id="status1" value="1" checked="checked" required>启用</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="sort" class="col-sm-2 control-label">
                                    排序</label>
                                <div class="col-sm-9">
                                    <input type="text" class="form-control" id="sort" name="sort" placeholder="排序"
                                        required />
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" class="btn btn-default" onclick='$("#mainContent").load("/system/menuList.aspx");'>
                                返回</button>
                            <button type="button" class="btn btn-info pull-right" onclick="save();">
                                保存</button>
                        </div>
                        <!-- /.box-footer -->
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<!-- 实例化编辑器 -->
<script type="text/javascript">
    // 全局变量
    var global = {
        menuId: 0,
        validator: null
    };
    $(function () {
        getFirstMenu();
        bindMenuInfo();
        validate();
    });
   
    //获取一级菜单
    function getFirstMenu() {
        $.ajax({
            type: "post",
            url: "/ajax/Common.ashx",
            data: { action: 'selectList', tableName: 'system_menu', key: 'menuName', value: 'id', orderBy: 'sort', where: 'parentId=0' },
            async: false,
            success: function (data) {
                $("#parentMenu").append(data);
            }
        });
    }

    //绑定菜单信息
    function bindMenuInfo() {
        global.menuId = '<%=Request.QueryString["menuId"] %>';
        if (global.menuId != "" && global.menuId != "undefined") {
            $.ajax({
                type: "post",
                url: "/ajax/System.ashx",
                data: { action: 'getMenuInfo', menuId: global.menuId },
                async: false,
                success: function (data) {
                    var my = eval("(" + data + ")");
                    if (my.flag == -100) {
                        window.layer.msg(my.msg);
                        window.location.href = "/login.aspx";
                        return;
                    }
                    else if (my.flag != 1) {
                        window.layer.msg(my.msg);
                        return;
                    }
                    $("#menuName").val(my.obj[0].menuName);
                    $("#menuUrl").val(my.obj[0].menuUrl);
                    $("#parentMenu").val(my.obj[0].parentId);            
                    $("#menuCode").val(my.obj[0].menuCode);    
                    $("#menuIcon").val(my.obj[0].menuIcon); 
                    if (my.obj[0].status == 0) {
                        $("#status0").prop("checked", true);
                    } else {
                        $("#status1").prop("checked", true);
                    }
                    $("#sort").val(my.obj[0].sort);
                }
            });
        }
    }

    //表单验证
    function validate() {
        global.validator = $("#menuForm").validate({
            submitHandler: function (form) {
                //alert("执行此方法");
            },
            errorElement: 'span',
            errorClass: 'help-block',
            highlight: function (element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            errorPlacement: function (error, element) {
                element.closest('div').append(error);
            },
            success: function (label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            }
        });
    }

    //保存
    function save() {
        if (!global.validator.form()) {
            return;
        }
        var menuName = $("#menuName").val();
        var menuUrl = $("#menuUrl").val();
        var menuCode = $("#menuCode").val();
        var menuIcon = $("#menuIcon").val();       
        var parentId = $("#parentMenu").val();   
        var status = $("input[name=status]:checked").val();
        var sort = $("#sort").val();
        $.ajax({
            type: "post",
            url: "/ajax/System.ashx",
            data: { action: 'addOrEditMenu', 'menuId': global.menuId, 'menuName': escape(menuName), 'menuUrl': escape(menuUrl), 'menuCode': escape(menuCode), 'menuIcon': menuIcon, 'parentId': parentId, 'status': status, 'sort': sort },
            async: false,
            success: function (data) {
                var my = eval("(" + data + ")");
                if (my.flag == -100) {
                    window.parent.layer.msg(my.msg);
                    window.location.href = "/login.aspx";
                    return;
                }
                else if (my.flag != 1) {
                    window.parent.layer.msg(my.msg);
                }
                else {
                    $("#mainContent").load("/system/menuList.aspx");
                }
            }
        });
    }
</script>
</html>