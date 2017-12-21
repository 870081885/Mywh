<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo2.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="swiper/css/swiper.min.css" rel="stylesheet" />
    <style>
        .swiper-pagination-bullet {
            background: #ffffff;
            width:14px;
            height:14px;
        }

        .swiper-slide p {
            color: #ffffff;
            background: #373d41;
            z-index: 150;
            position: absolute;
            bottom: 0px;
            left: 0px;
            margin: 0;
            padding: 10px; 
            width: 100%;
            opacity: 0.7;
        }
       .swiper-pagination {
            text-align:right;
            margin-right:15px;
       }
    </style>
</head>
<body>
    <div>
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <a href="javascript:void(0);" title="黄昏">
                        <img src="banner.jpg" class="img-responsive" alt="黄昏"  style="display:block;width:100%;"/>
                    </a>
                    <p class="lead hidden-xs">黄昏</p>
                </div>
            </div>
            <div class="swiper-pagination">
            </div>
            <div class="swiper-button-prev swiper-button-white hidden-xs">
            </div>
            <div class="swiper-button-next swiper-button-white hidden-xs">
            </div>
        </div>
        <mywh:footer ID="Footer1" runat="server" />
    </div>
    <script src="../../assets/js/jquery.min.js"></script>
    <script src="swiper/js/swiper.min.js"></script>
    <script type="text/javascript">
        $(function () {
            //轮播
            var swiper = new Swiper('.swiper-container', {
                pagination: '.swiper-pagination',
                paginationClickable: true,
                prevButton: '.swiper-button-prev',
                nextButton: '.swiper-button-next',
                autoplay: 5000,
                loop: true
            });
        });

    </script>
</body>
</html>
