<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Mywh.login" %>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<title>test</title>
	<meta content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" name="viewport" />

    <link href="assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css" />

    <link href="assets/login/animate.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/login/style.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/login/style-responsive.min.css" rel="stylesheet" type="text/css" />

</head>
<body>
	<!-- begin #page-loader -->
	<div id="page-loader" class="fade in"><span class="spinner"></span></div>
	<!-- end #page-loader -->
	
	<!-- begin #page-container -->
	<div id="page-container" class="fade">
	    <!-- begin login -->
        <div class="login bg-black animated fadeInDown">
            <!-- begin brand -->
            <div class="login-header">
                <div class="brand">
                    <span class="logo"></span> test
                    <small>test system</small>
                </div>
                <div class="icon">
                    <i class="fa fa-sign-in"></i>
                </div>
            </div>
            <!-- end brand -->
            <div class="login-content">
                <form  class="margin-bottom-0">
                    <div class="form-group m-b-20">
                        <input id="userName" name="userName" placeholder="userName" type="text" class="form-control input-lg" />
                    </div>
                    <div class="form-group m-b-20">
                        <input id="password" name="password" placeholder="password" type="password" class="form-control input-lg" />
                    </div>
                    <div class="checkbox m-b-20">
                        <label>
                            <input name="remember" id="remember" type="checkbox"/> 记住密码                        
                        </label>
                    </div>
                    <div class="login-buttons">
                        <button type="button" class="btn btn-success btn-block btn-lg" onclick=login();>登录</button>
                    </div>
                </form>
            </div>
        </div>
        <!-- end login -->
        
	</div>
	<!-- end page container -->
	
    <script src="assets/js/jquery.min.js" type="text/javascript"></script>
    <script src="assets/login/jquery-migrate-1.1.0.min.js" type="text/javascript"></script>
    <script src="assets/login/jquery-ui.min.js" type="text/javascript"></script>
    <script src="assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="assets/js/jquery.cookie.js" type="text/javascript"></script>
    <script src="assets/plugins/layer/layer.js" type="text/javascript"></script>
    <script src="assets/login/apps.min.js" type="text/javascript"></script>
	
	<script type="text/javascript">
	    $(function () {
	        App.init();
            onKeypress();
            readUserPwd();
            $("#userName").focus();
        });
        //读取用户密码
        function readUserPwd() {
            if ($.cookie('user_name') && $.cookie('user_pwd')) {
                $("#userName").val($.cookie('user_name'));
                $("#password").val($.cookie('user_pwd'));
                $("#remember").attr("checked", true);
            }
        }
        //按键事件
        function onKeypress() {
            document.onkeypress = function (e) {
                var currKey = 0, e = e || event;
                if (e.keyCode == 13) login();
            }
        }
        //登录
        function login() {
            var uname = $("#userName").val();
            var pwd = $("#password").val();
            var isRemember = 0;
            if (uname.length < 1) {
                $("#userName").focus();
                layer.msg("用户名不能为空");
                return;
            }
            if (pwd.length < 1) {
                $("#password").focus();
                layer.msg("密码不能为空");
                return;
            }
            if ($("#remember").attr("checked")) {
                isRemember = 1;
            }
            $.ajax({
                url: "./ajax/System.ashx",
                data: { action: 'userLogin', userName: uname, pwd: pwd, isRemember: isRemember },
                async: true,
                type: "POST",
                datatype: "json",
                success: function (json) {
                    var my = eval("(" + json + ")");
                    if (my.flag == 1) {
                        //if ($("#remember").attr("checked") == "checked") {
                        if ($('#remember').is(':checked')) {
                            $.cookie('user_name', uname);
                            $.cookie('user_pwd', pwd);
                        }
                        else {
                            $.cookie('user_name', null);
                            $.cookie('user_pwd', null);
                        }
                        location.href = "main.aspx";
                    }
                    else {
                        layer.msg(my.msg);
                    }
                }
            });
        }       
	</script>
</body>
</html>
