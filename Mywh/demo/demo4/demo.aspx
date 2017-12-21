<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo4.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link rel="stylesheet" href="css/toast.css"/>
    <style>
        body, html {
            margin: 0;
            left: 0;
            height: 100%;
            min-height: 100%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
            background-size: cover;
            z-index: 0;
            background-color: #F5F5F5
        }

        .test {
            width: 1200px;
            margin: 0 auto;
        }

        ul {
            height: 40px;
            background: rgba(0,0,0,0.46);
            clear: both;
            color: #fff;
            margin: 0;
            position: relative;
            z-index: 2;
            padding: 0 20px;
        }

        ul li {
                list-style: none;
                float: left;
                width: auto;
                height: 40px;
                font-size: 14px;
                padding: 5px 10px;
                line-height: 30px;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                box-sizing: border-box;
                cursor: pointer;
            }

        .line_100 {
            height: 60px;
            background: transparent;
        }

        p {
            text-indent: 20px;
            font-weight: 600;
            margin: 10px 0 20px 0;
        }
    </style>
</head>
<body>
    <div class="test">
        <p>默认样式</p>
        <ul class="ul1">
            <li>首页</li>
            <li>博客</li>
            <li>个人作品</li>
            <li>个人中心</li>
            <li>关于我们</li>
        </ul>
        <div class="line_100"></div>

        <p>随机颜色,刷新页面可查看效果,且线条位于上方</p>
        <ul class="ul2">
            <li>首页</li>
            <li class="active">博客</li>
            <li>个人作品</li>
            <li>个人中心</li>
            <li>关于我们</li>
        </ul>
        <div class="line_100"></div>
        <p>线条位置调整</p>
        <ul class="ul3">
            <li>首页</li>
            <li>博客</li>
            <li>个人作品</li>
            <li>个人中心</li>
            <li>关于我们</li>
        </ul>
        <div class="line_100"></div>
        <p>自定义线条高度</p>
        <ul class="ul4">
            <li>首页</li>
            <li>博客</li>
            <li>个人作品</li>
            <li>个人中心</li>
            <li>关于我们</li>
        </ul>

        <div class="line_100"></div>
        <p>点击回调事件(ret 有两个属性ele,index   可以通过这两个参数做一些事)</p>
        <ul class="ul5">
            <li>首页</li>
            <li>博客</li>
            <li>个人作品</li>
            <li>个人中心</li>
            <li>关于我们</li>
        </ul>


        <div class="line_100"></div>
        <p>移动的动画效果，来自jquery.easing.js</p>
        <ul class="ul7">
            <li>首页</li>
            <li>博客</li>
            <li>个人作品</li>
            <li>个人中心</li>
            <li>关于我们</li>
        </ul>
    </div>
    <mywh:footer ID="Footer1" runat="server" />
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="js/jquery.easing.js"></script>
    <script src="js/toast.js"></script>
    <script src="js/moveline.js"></script>
    <script>
        $('.ul1').moveline();
        $('.ul2').moveline({ randomColor: true, customTop: true, top: 0 });
        $('.ul3').moveline({ color: '#69BB92', position: 'inner' });
        $('.ul4').moveline({ color: '#99D1F6', position: 'inner', height: 40 });
        $('.ul5').moveline({
            color: '#EC378F',
            position: 'inner',
            click: function (ret) {
                ret.ele.addClass('active').siblings().removeClass('active');
                showMessage('点击的是第' + ret.index + '个li,当前已经被设置成active的状态');
            }
        });
        // $('.ul4').moveline({color:'#99D1F6',position:'inner',top:0,customTop:true});

        $('.ul7').moveline({ color: '#F68B3D', position: 'inner', height: 3, animateType: 'easeOutBounce' });

    </script>
</body>
</html>
