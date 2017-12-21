<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo3.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style>
        body {
            background: #000;
        }

        .content {
            width: 620px;
            margin: auto;
            margin-top: 100px;
        }

        #container {
            float: left;
            margin-right: 20px;
        }
    </style>
</head>
<body>
    <div class="content">
        <img id="imgLogo"  src="../demo2/banner.jpg" hidden />
        <!--文字logo-->
        <div id="container">
            <canvas width="400" height="400"></canvas>
        </div>

        <!--图片logo-->
        <div id="container2">
            <canvas width="400" height="400"></canvas>
        </div>
    </div>
    <mywh:footer ID="Footer1" runat="server" />
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="js/jqueryqr.js"></script>
    <script src="js/qrcode.js"></script>
    <script>
        $(document).ready(function () {

            //文字logo
            $("#container").erweima({
                label: 'jQuery'
            });

            //图片logo
            $('#container2').erweima({
                mode: 4,
                mSize: 20,
                image: $("#imgLogo")[0],
                text: 'http://www.mywhblog.cn'
            });
        });
    </script>
</body>
</html>
