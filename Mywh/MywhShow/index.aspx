<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="MywhShow.index" %>

<!DOCTYPE html>
<!-- saved from url=(0021)http://www.layui.com/ -->
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <title>Mywh.Net - 扁平化的权限框架</title>
    <meta name="keywords" content="layui,ui,前端框架,JS组件">
    <meta name="description" content="经典模块化前端框架">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="format-detection" content="telephone=no">

    <link href="assets/plugins/layui/css/layui.css" rel="stylesheet" />
    <link href="assets/css/global.css" rel="stylesheet" />
    <%--<link href="assets/css/layer.css" rel="stylesheet" />--%>
    <%--<link href="assets/css/code.css" rel="stylesheet" />--%>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/plugins/layui/layui.js"></script>
    <script src="assets/plugins/layer/layer.js"></script>
</head>
<body class="site-home" id="LAY_home" style="background-color: #eee;">
    <div class="layui-header header header-index">
        <div class="layui-main">
            <%--<a class="logo" href="http://www.layui.com/">
                <img src="./layui - 经典模块化前端框架_files/logo.png" alt="layui">
            </a>--%>
            <a class="logo" href="#" style="color:#c2c2c2;font-size : 2em;">
                Mywh.Net
            </a>
            <ul class="layui-nav">
                <li class="layui-nav-item ">
                    <a href="http://www.mywhblog.cn">博客</a>
                </li>
                <li class="layui-nav-item ">
                    <a href="http://tools.mywhblog.cn">工具</a>
                </li>
                <%--<li class="layui-nav-item">
                    <a href="javascript:;">周边<span class="layui-nav-more"></span></a>
                    <dl class="layui-nav-child">
                        <dd><a href="http://layim.layui.com/" target="_blank">即时聊天</a></dd>
                        <dd><a href="http://fly.layui.com/jie/8157.html" target="_blank">社区模板</a></dd>
                        <dd><a href="http://fly.layui.com/jie/9842.html" target="_blank">Axure组件</a></dd>
                    </dl>
                </li>--%>
                <span class="layui-nav-bar" style="width: 0px; left: 0px; opacity: 0;"></span>
            </ul>
        </div>
    </div>
    <div class="site-banner">
        <div class="site-banner-bg" style="background-image:url(/assets/img/test1.jpg); background-color: #010600;">
        </div>
        <div class="site-banner-main">
            <div class="site-zfj site-zfj-anim">
                <i class="layui-icon" style="color: #fff; color: rgba(255,255,255,.7);">&#xe600;</i>
            </div>
            <div class="layui-anim site-desc site-desc-anim">
                <cite>一个小菜整日因为权限而纠结，决定设计一套扁平化管理系统，仅供参考</cite>
            </div>
            <div class="site-download">
                <a href="javascript:void(0);" class="layui-inline site-down" style="background-color:#01aaed;" target="_blank">
                    <cite class="layui-icon" onclick="test();">&#xe623;</cite>
                    在线演示
                </a>
                <a href="javascript:void(0);" class="layui-inline site-down" target="_blank">
                    <cite class="layui-icon" onclick="test();">&#xe601;</cite>
                    立即下载
                </a>
            </div>
            <div class="site-version">
                <span>当前版本：<cite class="site-showv">1.0</cite></span>
                <%--<span><a href="#" target="_blank">更新日志</a></span>--%>
                <span>下载量：<em class="site-showdowns">666</em></span>
            </div>
            <%--<div class="site-banner-other">
                <iframe src="#" width="105" height="20"></iframe>
                <iframe src="#" width="60" height="20"></iframe>
            </div>--%>
        </div>
    </div>
    <div class="layui-main">
        <ul class="site-idea">
            <li>
                <fieldset class="layui-elem-field layui-field-title">
                    <legend>返璞归真</legend>
                    <p>身处在后台权限的日渐喧嚣之下，我们都在有意或无意地追逐。而Mywh.Net偏偏回望当初，奔赴在返璞归真的漫漫征途，自信并勇敢着，追寻于原生态的书写指令，试图以最简单的方式诠释高效。</p>
                </fieldset>
            </li>
            <li>
                <fieldset class="layui-elem-field layui-field-title">
                    <legend>极致体验</legend>
                    <p>视觉所见的外在，开发所念的简易，倾情雕琢的内在，一切本该如此。扁平化的权限系统让你享受极致体验。</p>
                </fieldset>
            </li>
            <li>
                <fieldset class="layui-elem-field layui-field-title">
                    <legend>梦之起航</legend>
                    <p>人生在世，应无所住。如果年轻，追着风走；如果相信， 跟着爱走；如果可以，随着心走；如果留恋，带着梦走；如果没有如果，也不该停留。</p>
                </fieldset>
            </li>
        </ul>

    </div>
    <div class="layui-footer footer footer-index">
        <div class="layui-main">
            <p>© 2017 梦影雾花 - 独立博客&nbsp;&nbsp;<a href="http://www.miitbeian.gov.cn/state/outPortal/loginPortal.action" target="_blank">豫ICP备17002472号-1</a>&nbsp;&nbsp;</p>
            <%--<p>© 2017 <a href="http://www.layui.com/">layui.com</a> MIT license</p>
            <p>
                <a href="#" target="_blank">案例</a>
                <a href="#" target="_blank">捐赠</a>
                <a href="#">联系</a>
                <a href="#" target="_blank">Git仓库</a>
                <a href="#" target="_blank">微信公众号</a>
            </p>--%>
        </div>
    </div>
    <div class="site-tree-mobile layui-hide">
        <i class="layui-icon"></i>
    </div>
    <div class="site-mobile-shade"></div>
    <ul class="layui-fixbar">
        <li class="layui-icon" style="" onclick="test();">&#xe606;</li>
        <li class="layui-icon layui-fixbar-top" id="returnTop" style="display: none;"></li>
    </ul>
</body>
    <script type="text/javascript">
        var x = $(window);

        $("html,body").ready(function () {
            var scrollbar = x.scrollTop();
            var isClick = 0;

            (scrollbar <= 0) ? ($("#returnTop").hide()) : ($("#returnTop").show());

            $(window).scroll(function () {
                scrollbar = x.scrollTop();
                (scrollbar <= 0) ? ($("#returnTop").hide()) : ($("#returnTop").show());
            });

            //$("#shape").hover(
            //    function () {
            //        $(".shapeColor").show();
            //    },

            //    function () {
            //        $(".shapeColor").hide();
            //    }
            //)

            $("#returnTop").click(function () {
                $("html,body").animate({ scrollTop: 0 }, "slow");
                $("#returnTop").hide();
            });
        });

        function test()
        {
            layer.msg("马上上线，现访问下我的博客吧！");
        }
    </script>
</html>
