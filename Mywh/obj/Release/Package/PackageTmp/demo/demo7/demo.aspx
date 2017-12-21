<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo7.demo" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <title>花瓣表白</title>
    <meta name="keywords" content="在乎你，WQW我很在乎你" />
    <meta name="description" content="  这里是个人的表白页面 " />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link rel="shortcut icon" href="index/images/favicon.ico" />
    <link rel="stylesheet" href="css/reset.css" type="text/css" media="all" />
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
    <link href="mCustomScrollbar/css/jquery.mCustomScrollbar.min.css" rel="stylesheet" />
    <style>
        .scroll {
            overflow: auto;
            position: relative;
            padding: 20px;
            margin: 10px;
            max-width: 97%;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            box-sizing: border-box;
        }
        #imagelightbox {
            position: fixed;
            z-index: 9999;
            -ms-touch-action: none;
            touch-action: none;
            box-shadow: 0 0 3.125em rgba( 0, 0, 0, .75 );
        }
    </style>
</head>

<body>
    <div id="abox">
    </div>
    <div class="page_spinner">
        <div></div>
    </div>
    <div class="over">
        <div class="centre">
            <div class="main">
                <!--header -->
                <header>
                    <h1><span id="logo">
                        <img src="images/logo1.png" alt="" usemap="#logo" /></span>
                    </h1>
                    <nav class="menu">
                        <ul id="menu">
                            <li id="nav1">
                                <img src="images/nav1.png" alt="" /><span>爱情</span>
                            </li>
                            <li id="nav2">
                                <img src="images/nav2.png" alt="" /><span>记事</span>
                            </li>
                            <li id="nav3">
                                <img src="images/nav3.png" alt="" /><span>絮叨</span>
                            </li>
                            <li id="nav4">
                                <img src="images/nav4.png" alt="" /><span>留言</span>
                            </li>
                            <li id="nav5">
                                <img src="images/nav5.png" alt="" /><span>相册</span>
                            </li>
                            <li id="nav6">
                                <img src="images/nav6.png" alt="" /><span>沙漏</span>
                            </li>
                        </ul>
                    </nav>
                    <img src="images/spacer.gif" alt="" id="navigation" usemap="#navigation" />
                    <map name="navigation" class="navigation">
                    </map>
                    <map name="logo" class="map_logo"></map>
                </header>
                <!--header end-->
                <!--content -->
                <map name="back" class="map_back"></map>
                <article id="content">
                    <ul>
                        <li id="page_Home">
                            <img src="images/bg_content.png" alt="" class="bg_cont" />
                            <span class="back">
                                <img src="images/nav1.png" alt="" usemap="#back" /><a href="demo.aspx#close">返回</a></span>
                            <div class="pad">
                                <h2>爱情</h2>
                                爱情是什么，也许我不懂<br />
                                但是我知道，爱一个人愿意去包容对方的一切。<br />
                                也许，我不会说话，总惹你不开心；<br />
                                也许，你听过许多的甜言蜜语；<br />
                                但，在美丽的承诺，也只是一个美丽的泡影。<br />
                                我不知道能为你做什么，但是，我知道一定会一直对你好。		
                            </div>
                        </li>
                        <li id="page_About">
                            <img src="images/bg_content.png" alt="" class="bg_cont" />
                            <span class="back">
                                <img src="images/nav2.png" alt="" usemap="#back" /><a href="demo.aspx#close">返回</a></span>
                            <div class="pad">
                                <h2>记事</h2>
                                <div class="relative scroll">
                                    <div class="">
                                        <span>2017/11/11</span>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;记得那天你对我说你喜欢我，</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;我却不知道怎么说。</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;我的心里告诉我不要管那么多，</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;于是第二天对你说能做我女朋友吗？</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;就这样到了现在。</p>
                                    </div>
                                    <div>
                                        <span>2017/11/11</span>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;记得那天你对我说你喜欢我，</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;我却不知道怎么说。</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;我的心里告诉我不要管那么多，</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;于是第二天对你说能做我女朋友吗？</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;就这样到了现在。</p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li id="page_Talk">
                            <img src="images/bg_content.png" alt="" class="bg_cont" />
                            <span class="back">
                                <img src="images/nav3.png" alt="" usemap="#back" /><a href="demo.aspx#close">返回</a></span>
                            <div class="pad">
                                <h2>絮叨</h2>
                                <div class="relative">
                                    <div class="scroll">
                                        <div style="width: 100%; float: left; border-bottom: 1px solid #CCCCCC;">
                                            等你一起来书写。<br />
                                            <span style="float: right">--X年X月X日</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li id="page_Message">
                            <img src="images/bg_content.png" alt="" class="bg_cont" />
                            <span class="back">
                                <img src="images/nav4.png" alt="" usemap="#back" /><a href="demo.aspx#close">返回</a></span>
                            <div class="pad">
                                <h2>留言</h2>
                                <div class="relative">
                                    <div class="scroll">
                                        <div style="min-height: 300px; padding-bottom: 50px;">
                                            <div id="SOHUCS" sid="lovexiaozhu"></div>
                                            <script charset="utf-8" type="text/javascript" src="https://changyan.sohu.com/upload/changyan.js"></script>
                                            <script type="text/javascript">
                                                window.changyan.api.config({
                                                    appid: 'cysNShFuQ',
                                                    conf: 'prod_2a8b31dbf35e69bf446f39379263a5a6'
                                                });
                                            </script>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li id="page_Blog">
                            <img src="images/bg_content.png" alt="" class="bg_cont" />
                            <span class="back">
                                <img src="images/nav5.png" alt="" usemap="#back" /><a href="demo.aspx#close">返回</a></span>
                            <div class="pad">
                                <h2>相册</h2>
                                <div class="relative">
                                    <div class="scroll">
                                        <ul class="gallery fancybox">
                                            <li style="line-height: 120px">
                                                <a href="images/uploadimage/1.jpg" rel="prettyPhoto[gallery1]">
                                                    <img src="images/uploadimage/1.jpg" alt="" /></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li id="page_Time">
                            <img src="images/bg_content.png" alt="" class="bg_cont" />
                            <span class="back">
                                <img src="images/nav6.png" alt="" usemap="#back" /><a href="demo.aspx#close">返回</a></span>
                            <div class="pad">
                                <h2>沙漏</h2>
                                <div id="loveHeart" style="margin-top: 30px; font-size: 25px;">
                                    <span style="">你知道你做我女朋友多久了吗？</span>
                                    <div id="elapseClock" style="margin: 10px 0px 10px 0px;">
                                        <span id="elapseClock_day">X</span> 天 
                                        <span id="elapseClock_hour">X</span> 小时 
                                        <span id="elapseClock_minute">X</span> 分钟 
                                        <span id="elapseClock_second">X</span> 秒
                                    </div>
                                    <img src="images/1.gif" />
                                    <img src="images/2.gif" /><br />
                                    <br />
                                    <div id="loveu">
                                        爱：从2017-11-12开始，光棍节过后，你就是我的女朋友咯！<br />
                                        <div class="signature" style="float: right; margin-right: 50px;">by  </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </article>
            </div>
            <!--content end-->
        </div>
    </div>
    <audio id="myAudio" src="youDianTian.mp3" <%--autoplay="autoplay"--%> loop="loop" preload="auto" ></audio>
    <img src="images/bg_content.png" alt="" class="bg_cont" />

    <script src="/assets/js/jquery.min.js"></script>
    <%--动画效果--%>
    <script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
    <%--图片放大插件--%>
    <script src="../demo8/imageLightbox/imagelightbox.min.js"></script>
    <%--鼠标滚轮插件--%>
    <script src="mCustomScrollbar/js/jquery.mCustomScrollbar.concat.min.js"></script>
    <script type="text/javascript" src="js/content_switch.js"></script>
    <script src="js/script.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(function () {
            $('.page_spinner').fadeOut();
            $('body').css({ overflow: 'visible' });
            ////修改时光沙漏时间
            //var offsetX = $("#loveHeart").width() / 2;
            //var offsetY = $("#loveHeart").height() / 2 - 55;
            //播放音乐
            audioAutoPlay("myAudio");
            //滚动
            $(".scroll").mCustomScrollbar({
                theme: "minimal-dark"
            });
            //照片放大
            $("#page_Blog a").imageLightbox(
                {
                    animationSpeed: 250,                                // integer;
                    preloadNext: true,                                  // bool;            预加载下一张图片
                    enableKeyboard: true,                               // bool;            启用键盘方向键
                    quitOnEnd: false,                                   // bool;            看完最后一张图片退出
                    quitOnImgClick: false,                              // bool;            浏览图片点击退出
                    quitOnDocClick: true,                               // bool;            浏览图片点击除了图片的任何地方退出
                });          
            //计算时间差
            var start = new Date('2017/11/12');
            var now = null;
            setInterval(function () {
                now = new Date();
                $("#elapseClock_day").text(parseInt((now - start) / (1000* 60 * 60 * 24)));
                $("#elapseClock_hour").text(parseInt((now - start) % (1000 * 60 * 60 * 24) / (1000 * 60 * 60)));
                $("#elapseClock_minute").text(parseInt((now - start) % (1000 * 60 * 60) / (1000 * 60)));
                $("#elapseClock_second").text(parseInt((now - start) % (1000 * 60) / (1000)));
            },1000);

        });
        $(window).load(function () {
            //右击菜单事件   
            document.oncontextmenu = function () {
                alert('小猪猪，我爱你哟！');
                return false;
            }
        });

        //自动播放音乐
        function audioAutoPlay(id) {
            var audio = document.getElementById(id),
                play = function () {
                    audio.play();
                    document.removeEventListener("touchstart", play, false);
                };
            audio.play();
            document.addEventListener("WeixinJSBridgeReady", function () {
                play();
            }, false);
            document.addEventListener('YixinJSBridgeReady', function () {
                play();
            }, false);
            document.addEventListener("touchstart", play, false);
        }  

        //var together = new Date();
        //together.setFullYear(2014, 07, 07);
        //together.setHours(17);
        //together.setMinutes(0);
        //together.setSeconds(0);
        //together.setMilliseconds(0);

        //setTimeout(function () {
        //    adjustWordsPosition();
        //    startHeartAnimation();
        //}, 3000);

        //timeElapse(together);
        //setInterval(function () {
        //    timeElapse(together);
        //}, 500);

        //adjustCodePosition();
        //$("#code").typewriter();


    </script>

</body>
</html>
