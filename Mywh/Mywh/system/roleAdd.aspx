<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roleAdd.aspx.cs" Inherits="Mywh.system.roleAdd" %>

<!DOCTYPE html>
<html>
<head>
    <title>新增角色</title>
    <script src="/assets/plugins/validate/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/validate/messages_zh.min.js" type="text/javascript"></script>
    <script src="/assets/inspinia/js/inspinia.js" type="text/javascript"></script>
</head>
<!--防止出现阴影 -->
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2 class="sTitle">新增角色</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="#">系统管理</a>
                </li>
                <li class="active">
                    <strong class="sTitle">新增角色</strong>
                </li>
            </ol>
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5 class="sTitle">新增角色</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form id="roleForm" class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="paramsName" class="col-sm-2 control-label">
                                    角色名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="roleName" name="roleName" placeholder="角色名称"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="userStatus" class="col-sm-2 control-label">
                                状态</label>
                                <div class="col-sm-10">
                                    <select class="form-control" id="status" name="status" required>
                                        <option value="">-请选择-</option>
                                        <option value="0">禁用</option>
                                        <option value="1" selected="selected">启用</option>
                                    </select>
                                </div>
                            </div>
                        </div>
                        <!-- /.box-body -->
                        <div class="box-footer">
                            <button type="button" class="btn btn-default" onclick='$("#mainContent").load("/system/roleList.aspx");'>
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
<script type="text/javascript">
    // 全局变量
    var global = {
        roleId: 0,
        validator: null
    };

    $(function () {
        showInfo();
        validate();
    });

    //表单验证
    function validate() {
        global.validator = $("#roleForm").validate({
            submitHandler: function (form) {
                //alert("执行此方法");
            },
            errorElement: 'span',
            errorClass: 'help-block',
            highlight: function (element) {
                $(element).closest('.form-group').addClass('has-error');
            },
            errorPlacement: function (error, element) {
                element.parent('div').append(error);
            },
            success: function (label) {
                label.closest('.form-group').removeClass('has-error');
                label.remove();
            }
        });
    }

    //展示信息
    function showInfo() {
        global.roleId = '<%=Request.QueryString["roleId"] %>';
        var roleName = unescape('<%=Request.QueryString["roleName"] %>');
        var status = unescape('<%=Request.QueryString["status"] %>');
        if (global.roleId == "" || global.roleId == "undefined") {
            window.parent.layer.msg("页面地址参数不正确！");
            return;
        }
        if (global.roleId > 0) {
            $(".sTitle").text("编辑角色");
            $("#roleName").val(roleName);
            $("#status").val(status);
        }
        else {
            $(".sTitle").text('新增角色');
        }
    }

    //保存
    function save() {
        if (!global.validator.form()) {
            return;
        }
        var roleName = $("#roleName").val();
        var status = $("#status").val();
        $.ajax({
            type: "post",
            url: "/ajax/System.ashx",
            data: { action: 'addOrEditRole', 'id': global.roleId, 'roleName': escape(roleName), 'status': status },
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
                    $("#mainContent").load("/system/roleList.aspx");
                }
            }
        });
    }

</script>
</html>
