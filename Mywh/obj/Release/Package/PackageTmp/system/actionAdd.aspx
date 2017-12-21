<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="actionAdd.aspx.cs" Inherits="Mywh.system.actionAdd" %>

<!DOCTYPE html>
<html>
<head>
    <title>新增动作</title>
    <script>!window.jQuery && document.write("<script src=\"/assets/js/jquery.min.js\">" + "<\/script>");</script>
    <script src="/assets/js/isLogin.js"></script>
    <script src="/assets/plugins/validate/jquery.validate.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/validate/messages_zh.min.js" type="text/javascript"></script>
    <script src="/assets/inspinia/js/inspinia.js" type="text/javascript"></script>
</head>
<!--防止出现阴影 -->
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2 class="sTitle">新增动作</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="#">系统管理</a>
                </li>
                <li class="active sTitle">
                    <strong>新增动作</strong>
                </li>
            </ol>
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5 class="sTitle">新增动作</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form id="actionForm" class="form-horizontal">
                        <div class="box-body">
                            <div class="form-group">
                                <label for="actionName" class="col-sm-2 control-label">
                                    动作名称</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="actionName" name="actionName" placeholder="动作名称"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="actionCode" class="col-sm-2 control-label">
                                    动作编码</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="actionCode" name="actionCode" placeholder="动作编码"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="actionIcon" class="col-sm-2 control-label">
                                    动作图标</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="actionIcon" name="actionIcon" placeholder="动作图标"
                                        required />
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="actionFunc" class="col-sm-2 control-label">
                                    动作方法</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="actionFunc" name="actionFunc" placeholder="动作方法"
                                        required />
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
                            <button type="button" class="btn btn-default" onclick='$("#mainContent").load("/system/actionList.aspx");'>
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
        actionId: 0,
        validator: null
    };

    $(function () {
        showInfo();
        validate();
    });

    //表单验证
    function validate() {
        global.validator = $("#actionForm").validate({
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
        global.actionId = '<%=Request.QueryString["actionId"] %>';
        if (global.actionId == "" || global.actionId == "undefined") {
            window.parent.layer.msg("页面地址参数不正确！");
            return;
        }
        if (global.actionId > 0) {
            $(".sTitle").text("编辑动作");
            bindActionInfo(); 
        }
        else {
            $(".sTitle").text('新增动作');          
        }
    }
    function bindActionInfo() {
        $.ajax({
            type: "post",
            url: "/ajax/System.ashx",
            data: { action: 'getActionInfo', actionId: global.actionId },
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
                $("#actionName").val(my.obj[0].actionName);
                $("#actionCode").val(my.obj[0].actionCode);
                $("#actionIcon").val(my.obj[0].actionIcon);
                $("#actionFunc").val(my.obj[0].actionFunc);
                $("#sort").val(my.obj[0].sort);
            }
        });
    }

    //保存
    function save() {
        if (!global.validator.form()) {
            return;
        }
        var actionName = $("#actionName").val();
        var actionCode = $("#actionCode").val();
        var actionIcon = $("#actionIcon").val();
        var actionFunc = $("#actionFunc").val();
        var sort = $("#sort").val();

        $.ajax({
            type: "post",
            url: "/ajax/System.ashx",
            data: { action: 'addOrEditAction', 'actionId': global.actionId, 'actionName': escape(actionName), 'actionCode': escape(actionCode), 'actionIcon': escape(actionIcon), 'actionFunc': escape(actionFunc), 'sort': escape(sort)  },
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
                    $("#mainContent").load("/system/actionList.aspx");
                }
            }
        });
    }

</script>
</html>