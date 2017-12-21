<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo8.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

    <style>
        ul li {
            display: inline-block;
            margin: 0.625em;
        }

        li img {
            width: 200px;
            border: 0.625em solid rgba( 255, 255, 255, .5 );
        }

        #imagelightbox {
            position: fixed;
            z-index: 9999;
            -ms-touch-action: none;
            touch-action: none;
            box-shadow: 0 0 3.125em rgba( 0, 0, 0, .75 );
        }
    </style>
    <link href="imageLightbox/my.css" rel="stylesheet" />
</head>
<body>
    <ul>
        <li>
            <a href="demo.jpg">
                <img src="demo.jpg" />
            </a>
        </li>
        <li>
            <a href="demo2.jpg">
                <img src="demo2.jpg" />
            </a>
        </li>
        <li>
            <a href="demo3.jpg">
                <img src="demo3.jpg" />
            </a>
        </li>
    </ul>

    <script src="../../assets/js/jquery.min.js"></script>
    <script src="imageLightbox/imagelightbox.min.js"></script>
    <script src="imageLightbox/my.js"></script>
    <script>
        $(function () {
            var imageLightbox = $("a").imageLightbox(
                {
                    animationSpeed: 250,                                // integer;
                    preloadNext: true,                                  // bool;            预加载下一张图片
                    enableKeyboard: true,                               // bool;            启用键盘方向键
                    quitOnEnd: false,                                   // bool;            看完最后一张图片退出
                    quitOnImgClick: false,                              // bool;            浏览图片点击退出
                    quitOnDocClick: true,                               // bool;            浏览图片点击除了图片的任何地方退出
                });
        });


    </script>
</body>
</html>
