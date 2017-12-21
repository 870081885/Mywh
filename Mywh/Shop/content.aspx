<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="content.aspx.cs" Inherits="Shop.content" %>

<!DOCTYPE html>
<!-- saved from url=(0051)https://m.mi.com/#/product/view?product_id=10000029 -->
<html lang="zh-CN" style="font-size: 44.4444px;">
<head>
    <title>红米Note 4X_小米商城</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=0">
    <meta name="imagemode" content="force">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="shortcut icon" type="image/x-icon" href="https://m.mi.com/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="https://img01.mifile.cn/m/app/touch-icon.png">
    <link rel="dns-prefetch" href="https://s1.mi.com/">

    <script type="text/javascript" async="" src="./内容页/mstr.js.下载"></script>
    <script type="text/javascript" async="" src="./内容页/jquery.statData.min.js.下载"></script>
    <script type="text/javascript" async="" src="./内容页/jquery.statData.min.js.下载"></script>
    <script type="text/javascript" async="" src="./内容页/xmst.js.下载"></script>
    <script src="./内容页/hm.js.下载"></script>


    <style type="text/css">
        .index-header {
            position: relative;
            top: 0;
            left: 0;
            right: 0;
            z-index: 100;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: center;
            -webkit-box-pack: center;
            padding: .15rem 0;
            background-color: #fafafa
        }

            .index-header .logo {
                width: 1rem;
                padding: 0 .25rem;
                box-sizing: border-box
            }

                .index-header .logo img {
                    width: .5rem;
                    height: auto
                }

            .index-header .login {
                display: block;
                white-space: nowrap;
                box-sizing: border-box;
                text-align: center
            }

                .index-header .login .text {
                    font-size: .28rem;
                    text-align: center;
                    color: #969696;
                    margin: 0 .22rem
                }

                .index-header .login .user {
                    width: 1rem
                }

                    .index-header .login .user img {
                        width: .3rem;
                        height: auto
                    }

            .index-header .search_bar {
                line-height: .34rem;
                background: url(/component/header/img/search_df67e2f.png) no-repeat;
                background-size: 101% 101%;
                width: 5.2rem;
                height: .53rem;
                border-radius: .05rem;
                border: 1px solid #e5e5e5
            }

                .index-header .search_bar > a {
                    display: block;
                    padding: .1rem .6rem
                }

                .index-header .search_bar .text {
                    font-size: .26rem;
                    color: rgba(0,0,0,.3)
                }

                .index-header .search_bar .icon-search {
                    font-size: .4rem;
                    color: #e58335;
                    padding-right: .1rem
                }
    </style>
    <style type="text/css">
        #info {
            position: fixed;
            display: none;
            z-index: 9999;
            top: 0;
            left: 0;
            width: 100%;
            text-align: center;
            height: 100%
        }
    </style>
    <style type="text/css">
        .header {
            display: box;
            display: -webkit-box;
            height: .84rem;
            box-align: center;
            -webkit-box-align: center;
            padding: 0 .2rem;
            background: #f2f2f2;
            position: relative;
            border-bottom: 1px solid #eee;
            z-index: 2
        }

            .header .icon-gouwuche {
                position: relative
            }

                .header .icon-gouwuche span {
                    line-height: .2rem;
                    min-width: .2rem;
                    text-align: center;
                    overflow: hidden;
                    -webkit-border-radius: 100%;
                    -moz-border-radius: 100%;
                    -ms-border-radius: 100%;
                    -o-border-radius: 100%;
                    border-radius: 100%;
                    position: absolute;
                    right: -.1rem;
                    top: -.1rem;
                    font-size: .15rem;
                    font-weight: 700;
                    color: #FFF;
                    padding: .02rem;
                    background: #FF5722
                }

            .header .left {
                position: relative;
                z-index: 1
            }

                .header .left a {
                    display: block
                }

                .header .left .text-home {
                    font-size: .32rem
                }

                    .header .left .text-home strong {
                        font-weight: 200;
                        color: #666
                    }

                    .header .left .text-home span {
                        font-size: .24rem;
                        color: #A5A5A5;
                        margin-left: .06rem
                    }

                .header .left .icon {
                    font-size: .5rem;
                    color: #999
                }

                .header .left .ib {
                    width: .44rem;
                    height: .44rem
                }

            .header .tit {
                -webkit-box-flex: 1;
                box-flex: 1;
                width: 100%
            }

                .header .tit h2 {
                    text-align: center;
                    position: absolute;
                    top: 0;
                    right: 0;
                    bottom: 0;
                    left: 0;
                    line-height: .84rem
                }

                .header .tit span {
                    font-size: .3rem;
                    color: #666;
                    font-weight: 400
                }

            .header .right {
                position: relative
            }

                .header .right .icon {
                    color: #999
                }

                .header .right a {
                    display: inline-block;
                    margin-left: .2rem;
                    width: .44rem;
                    height: .44rem;
                    font-size: .44rem
                }
    </style>
    <style type="text/css">
        .fixed-header {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            display: box;
            display: -webkit-box;
            height: .84rem;
            box-align: center;
            -webkit-box-align: center;
            padding: 0 .2rem;
            background-color: rgba(255,255,255,0);
            z-index: 10
        }

            .fixed-header .left {
                position: absolute;
                top: .3rem;
                left: .3rem
            }

                .fixed-header .left a {
                    display: block
                }

                .fixed-header .left .ib {
                    width: .44rem;
                    height: .44rem
                }

            .fixed-header .tit {
                -webkit-box-flex: 1;
                box-flex: 1;
                width: 100%
            }

                .fixed-header .tit h2 {
                    text-align: center;
                    position: absolute;
                    top: 0;
                    right: 0;
                    bottom: 0;
                    left: 0;
                    line-height: .84rem
                }

                .fixed-header .tit span {
                    font-size: .3rem;
                    color: #666;
                    font-weight: 400
                }

            .fixed-header .right {
                position: absolute;
                top: .3rem;
                right: .3rem
            }

                .fixed-header .right .icon {
                    color: #999
                }

                .fixed-header .right .ib {
                    width: .44rem;
                    height: .44rem
                }

                .fixed-header .right a {
                    display: block
                }
    </style>
    <style type="text/css">
        .channel-header {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            z-index: 100;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: center;
            -webkit-box-pack: center;
            padding: .15rem 0
        }

            .channel-header .logo {
                width: .8rem;
                padding: 0 .23rem;
                box-sizing: border-box
            }

                .channel-header .logo img {
                    width: auto;
                    height: .34rem
                }

            .channel-header .login {
                display: block;
                width: .8rem;
                padding: 0 .15rem;
                white-space: nowrap;
                box-sizing: border-box
            }

                .channel-header .login .user {
                    width: .5rem
                }

                    .channel-header .login .user.state1 {
                        width: .4rem
                    }

                    .channel-header .login .user img {
                        width: 100%;
                        height: auto
                    }

            .channel-header .search_bar {
                line-height: .34rem;
                background: url(/component/header/img/search333_5ab6d3c.png) no-repeat;
                background-size: 101% 101%;
                width: 5.6rem;
                height: .53rem;
                border-radius: .05rem;
                box-sizing: border-box
            }

                .channel-header .search_bar > a {
                    display: block;
                    padding: .12rem .6rem .1rem
                }

                .channel-header .search_bar .text {
                    font-size: .26rem;
                    color: #9C9C9C
                }

                .channel-header .search_bar .icon-search {
                    font-size: .4rem;
                    color: #e58335;
                    padding-right: .1rem
                }
    </style>
    <style type="text/css">
        .footer {
            position: fixed;
            bottom: 0;
            left: 0;
            right: 0;
            background: #FFF;
            z-index: 99;
            border-top: 1px solid #e0e0e0
        }

            .footer ul {
                display: box;
                display: -webkit-box;
                box-align: center;
                -webkit-box-align: center;
                box-pack: center;
                -webkit-box-pack: center
            }

            .footer .nav .ispr {
                width: .4rem;
                height: .4rem;
                background-image: url(/component/footer/img/spr1_5b2e09c.png);
                -webkit-background-size: .4rem 3.2rem;
                -moz-background-size: .4rem 3.2rem;
                -ms-background-size: .4rem 3.2rem;
                -o-background-size: .4rem 3.2rem;
                background-size: .4rem 3.2rem;
                overflow: hidden;
                margin: 0 auto .08rem
            }

                .footer .nav .ispr.ih {
                    background-position-y: -2.8rem
                }

                .footer .nav .ispr.ic {
                    background-position-y: -.4rem
                }

                .footer .nav .ispr.is {
                    background-position-y: -1.2rem
                }

                .footer .nav .ispr.if {
                    background-position-y: -2rem
                }

            .footer .nav p {
                font-size: .22rem;
                line-height: .8;
                color: #999
            }

            .footer li {
                -webkit-box-flex: 1;
                box-flex: 1;
                width: 100%;
                text-align: center
            }

                .footer li > a {
                    display: block;
                    padding: .12rem 0
                }

                    .footer li > a.on .nav p {
                        color: #FF5722
                    }

                    .footer li > a.on .nav .ispr.ih {
                        background-position-y: -2.4rem
                    }

                    .footer li > a.on .nav .ispr.ic {
                        background-position-y: 0
                    }

                    .footer li > a.on .nav .ispr.is {
                        background-position-y: -.8rem
                    }

                    .footer li > a.on .nav .ispr.if {
                        background-position-y: -1.6rem
                    }
    </style>
    <style type="text/css">
        .share-component .share-component-wxtip {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background: rgba(0,0,0,.8) url(//s1.mi.com/m/images/m/wxtip.png) 0 0 no-repeat;
            -webkit-background-size: 7.02rem 4.08rem;
            -moz-background-size: 7.02rem 4.08rem;
            -ms-background-size: 7.02rem 4.08rem;
            -o-background-size: 7.02rem 4.08rem;
            background-size: 7.02rem 4.08rem
        }

        .share-component .share-component-mask {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            background: rgba(0,0,0,.6)
        }

        .share-component .share-component-content {
            position: fixed;
            background: #FFF;
            left: 0;
            right: 0;
            bottom: 0
        }

        .share-component ul.share-nav {
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            margin: 0 .8rem
        }

            .share-component ul.share-nav li {
                -webkit-box-flex: 1;
                box-flex: 1;
                width: 100%;
                text-align: center;
                padding: .2rem 0
            }

            .share-component ul.share-nav .spr {
                width: .6rem;
                height: .6rem;
                background-image: url(//s1.mi.com/m/images/m/spr3.png);
                -webkit-background-size: .6rem 2.4rem;
                -moz-background-size: .6rem 2.4rem;
                -ms-background-size: .6rem 2.4rem;
                -o-background-size: .6rem 2.4rem;
                background-size: .6rem 2.4rem;
                margin: 0 auto;
                -webkit-border-radius: 100%;
                -moz-border-radius: 100%;
                -ms-border-radius: 100%;
                -o-border-radius: 100%;
                border-radius: 100%;
                overflow: hidden
            }

                .share-component ul.share-nav .spr.spr1 {
                    background-position-y: -1.2rem
                }

                .share-component ul.share-nav .spr.spr2 {
                    background-position-y: -.6rem
                }

                .share-component ul.share-nav .spr.spr3 {
                    background-position-y: 0
                }

                .share-component ul.share-nav .spr.spr4 {
                    background-position-y: -1.8rem
                }

            .share-component ul.share-nav .name {
                margin-top: .06rem;
                font-size: .2rem
            }
    </style>
    <style type="text/css">
        @import url(/views/index/css/slick_9aa8cd5.css);

        .slick-initialized {
        }

            .slick-initialized .swipe-tab-content {
                position: relative;
                min-height: 365px;
                overflow-x: hidden;
                overflow-y: auto
            }

            .slick-initialized .swipe-tab:nth-child(1) {
                border-bottom: 2px solid rgba(237,91,0,0);
                color: #747474
            }

            .slick-initialized .swipe-tab {
            }

                .slick-initialized .swipe-tab.active-tab {
                    border-bottom-color: #ed5b00;
                    color: #ed5b00
                }

        .slick-current .f-list {
            display: block
        }

        .sub-header {
            position: absolute;
            left: 0;
            bottom: 0;
            z-index: 2;
            background-color: #fafafa;
            height: .6rem;
            overflow-y: hidden;
            width: 100%
        }

            .sub-header .swipe-tab {
                margin: 0 .28rem;
                height: .56rem;
                font-size: .26rem;
                display: flex;
                align-items: center;
                justify-content: center;
                background: 0 0;
                border: 0;
                color: #747474;
                cursor: pointer;
                text-align: center;
                border-bottom: 2px solid rgba(237,91,0,0)
            }

            .sub-header .slick-slider .slick-track {
                transform: none
            }

            .sub-header div:nth-child(1) {
                border-bottom-color: #ed5b00;
                color: #ed5b00
            }

        .invisible {
            opacity: 0
        }

        .main-container {
            z-index: 1;
            position: relative;
            left: 0;
            top: 0;
            width: 100%;
            margin-top: 1.45rem;
            box-sizing: border-box;
            overflow-x: hidden;
            overflow-y: auto
        }

        body::-webkit-scrollbar {
            background: transparent
        }

        .page-index {
            background: #FFF;
            overflow: hidden;
            padding-bottom: .94rem
        }

            .page-index .buyshow-enter {
                opacity: 1 !important
            }

            .page-index .flex-row-justify {
                display: -webkit-box;
                display: box;
                flex-direction: row;
                flex-wrap: nowrap;
                -webkit-box-pack: justify;
                box-pack: justify
            }

            .page-index .main {
                display: -webkit-flex;
                display: flex;
                flex-direction: column;
                height: 100%;
                position: absolute;
                left: 0;
                top: 0;
                width: 100%
            }

                .page-index .main .footer {
                    position: relative
                }

            .page-index .top-header {
                position: fixed;
                top: 0;
                height: 1.45rem;
                z-index: 3
            }

            .page-index .download-app-go-top {
                position: absolute;
                left: 0;
                top: 0;
                z-index: 110;
                display: block
            }

                .page-index .download-app-go-top a {
                    display: block
                }

                    .page-index .download-app-go-top a img {
                        width: 100%;
                        height: auto
                    }

                .page-index .download-app-go-top .close {
                    position: absolute;
                    width: .5rem;
                    height: 1rem;
                    line-height: 1rem;
                    text-align: center;
                    left: 0;
                    top: 50%;
                    margin-top: -.5rem
                }

                    .page-index .download-app-go-top .close a {
                        display: block
                    }

            .page-index .download-app-go-btm {
                z-index: 111;
                position: fixed;
                bottom: 0
            }

                .page-index .download-app-go-btm a {
                    display: block
                }

                    .page-index .download-app-go-btm a img {
                        width: 100%;
                        height: auto
                    }

                .page-index .download-app-go-btm .close {
                    position: absolute;
                    width: .5rem;
                    height: 1.5rem;
                    right: 0;
                    bottom: 0
                }

            .page-index .search-botton {
                background: rgba(0,0,0,.6);
                z-index: 111;
                position: fixed;
                bottom: .9rem;
                width: 7.2rem;
                height: .9rem;
                color: #fff;
                font-size: .24rem;
                padding: .15rem .3rem .15rem .4rem;
                box-sizing: border-box;
                transform: translate3d(0,0,0);
                opacity: 0;
                transition: all 1s
            }

                .page-index .search-botton .ml2 {
                    margin-left: .2rem
                }

                .page-index .search-botton .left img {
                    width: .6rem;
                    height: auto
                }

                .page-index .search-botton .right {
                    display: -webkit-box;
                    display: box
                }

                    .page-index .search-botton .right a {
                        display: block;
                        color: #fff
                    }

                .page-index .search-botton .btn {
                    height: .6rem;
                    width: 1.5rem;
                    border-radius: 2px;
                    line-height: .6rem;
                    box-sizing: border-box;
                    text-align: center;
                    background: #f60
                }

                .page-index .search-botton .close {
                    margin: .15rem 0 .15rem .3rem
                }

                    .page-index .search-botton .close img {
                        width: .3rem;
                        height: .3rem
                    }

            .page-index .banner {
                background: #5F646E;
                display: box;
                display: -webkit-box;
                position: relative;
                padding: 0 1rem
            }

                .page-index .banner .bn1, .page-index .banner .bn2 {
                    -webkit-box-flex: 1;
                    box-flex: 1;
                    text-align: center;
                    width: 100%
                }

                    .page-index .banner .bn1 a, .page-index .banner .bn2 a {
                        display: block;
                        color: rbga(255,255,255,.8);
                        font-size: .2rem;
                        padding: .14rem 0
                    }

            .page-index .loading-logo {
                position: relative
            }

                .page-index .loading-logo .loading-anim {
                    height: 1.5rem
                }

            .page-index #top {
                position: fixed;
                bottom: 1.4rem;
                right: .26rem;
                width: .7rem;
                height: .7rem;
                z-index: 19;
                overflow: hidden;
                visibility: hidden
            }

                .page-index #top img {
                    width: 100%
                }

            .page-index .wxad img {
                width: 100%;
                height: auto
            }

            .page-index .slider {
                height: auto;
                background-color: #fff;
                overflow: hidden;
                position: relative;
                transform: translateZ(0);
                width: 7.2rem
            }

                .page-index .slider .swipe-wrap {
                    overflow: hidden;
                    position: relative;
                    max-height: 5.12rem;
                    min-height: 3rem
                }

                    .page-index .slider .swipe-wrap > div {
                        float: left;
                        position: relative;
                        text-align: center;
                        overflow: hidden
                    }

                        .page-index .slider .swipe-wrap > div a {
                            display: block
                        }

                        .page-index .slider .swipe-wrap > div img {
                            height: auto;
                            width: 7.2rem
                        }

                .page-index .slider .swipe-nav {
                    position: absolute;
                    bottom: .01rem;
                    right: .3rem;
                    text-align: right;
                    width: 100%
                }

                    .page-index .slider .swipe-nav span {
                        display: inline-block;
                        width: .1rem;
                        height: .1rem;
                        margin: 0 .1rem;
                        -webkit-border-radius: .05rem;
                        -moz-border-radius: .05rem;
                        -ms-border-radius: .05rem;
                        -o-border-radius: .05rem;
                        border-radius: .05rem;
                        background: #FFF;
                        filter: alpha(Opacity=60);
                        opacity: .6;
                        box-shadow: 0 0 1px #ccc
                    }

                        .page-index .slider .swipe-nav span.on {
                            filter: alpha(Opacity=90);
                            opacity: .9;
                            background: #f8f8f8;
                            box-shadow: 0 0 2px #ccc
                        }
    </style>
    <style type="text/css">
        .tips_view {
            text-align: center;
            position: absolute;
            top: 50%;
            left: 0;
            right: 0;
            margin-top: -5.85em
        }

            .tips_view .tips_msg {
                padding: 5em 0 2em
            }

                .tips_view .tips_msg h3 {
                    font-size: 1.7em;
                    color: #50555B;
                    margin-bottom: .44118em
                }

            .tips_view .tips_btn {
                width: 17em;
                margin: 0 auto;
                padding: 1.5em 0 3em
            }

                .tips_view .tips_btn a {
                    color: #333
                }
    </style>
    <style type="text/css">
        .default-wrap {
            position: fixed;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            z-index: 100;
            background: #F53326 url(//s1.mi.com/m/images/m/default/20160202_6.png) 0 100% no-repeat;
            -webkit-background-size: 7.2rem 4.07rem;
            -moz-background-size: 7.2rem 4.07rem;
            -ms-background-size: 7.2rem 4.07rem;
            -o-background-size: 7.2rem 4.07rem;
            background-size: 7.2rem 4.07rem
        }

            .default-wrap .dc_b1 .img {
                width: 100%
            }

                .default-wrap .dc_b1 .img img {
                    width: 100%
                }

            .default-wrap .dc_b2 {
                font-size: .34rem;
                text-align: center;
                color: #FFE05F;
                margin-top: .24rem;
                margin-bottom: .3rem
            }

            .default-wrap .dc_b3 a, .default-wrap .dc_b4 a {
                display: block;
                font-size: .36rem;
                line-height: .94rem;
                text-align: center;
                -webkit-border-radius: .1rem;
                -moz-border-radius: .1rem;
                -ms-border-radius: .1rem;
                -o-border-radius: .1rem;
                border-radius: .1rem;
                width: 3.4rem;
                margin: 0 auto;
                font-weight: 700
            }

            .default-wrap .dc_b3 {
                margin-bottom: .2rem
            }

                .default-wrap .dc_b3 a {
                    color: #F53326;
                    background: #FFE05F
                }

            .default-wrap .dc_b4 {
                filter: alpha(Opacity=80);
                opacity: .8
            }

                .default-wrap .dc_b4 a {
                    color: #FFE05F;
                    font-size: .28rem;
                    line-height: .6rem;
                    text-decoration: underline
                }
    </style>
    <style type="text/css">
        .f-list .section {
            transform: translateZ(0);
            margin-top: -1px
        }

        .f-list .mr15 {
            margin-right: .12rem
        }

        .f-list .mauto {
            margin: 0 auto
        }

        .f-list .bgw {
            background-color: #fff
        }

        .f-list .p15 {
            padding: .12rem
        }

        .f-list .w340 {
            width: 3.4rem
        }

        .f-list .buybtn {
            width: 2rem;
            background: #ff4a48;
            border-radius: .05rem;
            text-align: center;
            color: #fff;
            font-size: .24rem;
            padding: .16rem 0;
            font-weight: 700
        }

        .f-list img {
            width: 100%;
            height: 100%;
            display: block;
            vertical-align: top
        }

        .f-list .divider_line {
            margin: 0 auto !important;
            border-top: 0;
            border-left: 0;
            border-right: 0;
            box-sizing: border-box
        }

        .f-list .list_broadcast .box {
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: start;
            -webkit-box-pack: start;
            overflow: hidden;
            height: .8rem;
            width: 100%;
            font-size: .24rem;
            color: #000
        }

        .f-list .list_broadcast .img {
            width: 1.5rem
        }

            .f-list .list_broadcast .img img {
                width: 1.5rem;
                height: auto
            }

        .f-list .list_broadcast .sc_title {
            font-size: .24rem;
            line-height: .28rem;
            transition: opacity .3s;
            padding-left: .2rem;
            border-left: 1px solid #b2b2b2;
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis;
            margin: .23rem 0 .23rem .2rem;
            max-width: 5rem
        }

        .f-list .cells_auto_fill .body {
            position: relative;
            overflow: hidden;
            margin: 0 auto
        }

        .f-list .cells_auto_fill .items {
            position: absolute
        }

            .f-list .cells_auto_fill .items img {
                width: 100%
            }

            .f-list .cells_auto_fill .items .tag img {
                width: auto
            }

        .f-list .list_one_type1 .item, .f-list .list_one_type9 .item, .f-list .list_one_type10 .item, .f-list .list_one_type12 .item, .f-list .list_one_type14 .item {
            position: relative
        }

        .f-list .list_one_type2 .item {
            width: 100%
        }

        .f-list .list_one_type2 .flex {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            box-align: start;
            -webkit-box-align: start;
            overflow: hidden
        }

        .f-list .list_one_type2 .img {
            width: 3.6rem;
            height: 3.6rem
        }

        .f-list .list_one_type2 .info {
            flex: 1;
            -webkit-flex: 1;
            padding: .64rem .12rem 0 .32rem;
            box-sizing: border-box;
            width: 3.6rem;
            height: 3.6rem
        }

        .f-list .list_one_type11 .item {
            width: 100%
        }

        .f-list .list_one_type11 .flex {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

        .f-list .list_one_type11 .img {
            width: 3rem;
            height: 3rem
        }

        .f-list .list_one_type11 .info {
            flex: 1;
            -webkit-flex: 1;
            padding: .64rem .12rem 0 .32rem;
            box-sizing: border-box;
            width: 4.2rem;
            height: 3rem
        }

        .f-list .list_one_type3 .item {
            width: 100%
        }

        .f-list .list_one_type3 .flex {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            box-align: start;
            -webkit-box-align: start;
            overflow: hidden
        }

            .f-list .list_one_type3 .flex .info {
                width: 3.6rem;
                box-sizing: border-box
            }

        .f-list .list_one_type3 .img {
            width: 3.6rem;
            height: 3.6rem
        }

        .f-list .list_one_type3 .info {
            flex: -1;
            -webkit-flex: -1;
            padding: .64rem .12rem 0 .32rem
        }

        .f-list .list_one_type14 .item {
            padding: .1rem
        }

        .f-list .list_two_type1 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

        .f-list .list_two_type1 .item {
            width: 3.6rem
        }

            .f-list .list_two_type1 .item:first-child {
                margin-right: .04rem
            }

        .f-list .list_two_type1 .img {
            width: 3.6rem;
            height: 3.6rem
        }

        .f-list .list_two_type5 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

            .f-list .list_two_type5 .box .item {
                width: 3.6rem
            }

                .f-list .list_two_type5 .box .item .big {
                    width: 3.6rem;
                    height: 2.04rem
                }

                .f-list .list_two_type5 .box .item:first-child {
                    margin-right: .04rem
                }

        .f-list .list_two_type12 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

            .f-list .list_two_type12 .box .item .big {
                width: 3.6rem;
                height: 2.4rem
            }

            .f-list .list_two_type12 .box .item:first-child {
                margin-right: .04rem
            }

        .f-list .list_two_type2 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

            .f-list .list_two_type2 .box .product {
                box-sizing: border-box
            }

                .f-list .list_two_type2 .box .product:first-child {
                    width: 2.4rem;
                    margin-right: .04rem
                }

                    .f-list .list_two_type2 .box .product:first-child .big {
                        width: 2.4rem;
                        height: 3.2rem
                    }

                .f-list .list_two_type2 .box .product:last-child {
                    width: 4.8rem
                }

                    .f-list .list_two_type2 .box .product:last-child .big {
                        width: 4.8rem;
                        height: 3.2rem
                    }

        .f-list .list_two_type11 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

            .f-list .list_two_type11 .box .product {
                box-sizing: border-box
            }

                .f-list .list_two_type11 .box .product:first-child {
                    width: 2.4rem;
                    margin-right: .04rem
                }

                    .f-list .list_two_type11 .box .product:first-child .big {
                        width: 2.4rem;
                        height: 2.4rem
                    }

                .f-list .list_two_type11 .box .product:last-child {
                    width: 4.8rem
                }

                    .f-list .list_two_type11 .box .product:last-child .big {
                        width: 4.8rem;
                        height: 2.4rem
                    }

        .f-list .list_two_type3 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

        .f-list .list_two_type3 .product {
            position: relative;
            box-sizing: border-box
        }

            .f-list .list_two_type3 .product:first-child {
                width: 4.8rem;
                margin-right: .04rem
            }

                .f-list .list_two_type3 .product:first-child .big {
                    width: 4.8rem;
                    height: 3.2rem
                }

            .f-list .list_two_type3 .product:last-child {
                width: 2.4rem
            }

                .f-list .list_two_type3 .product:last-child .big {
                    width: 2.4rem;
                    height: 3.2rem
                }

        .f-list .list_two_type10 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

        .f-list .list_two_type10 .product {
            position: relative;
            box-sizing: border-box
        }

            .f-list .list_two_type10 .product:first-child {
                width: 4.8rem;
                margin-right: .04rem
            }

                .f-list .list_two_type10 .product:first-child .big {
                    width: 4.8rem;
                    height: 2.4rem
                }

            .f-list .list_two_type10 .product:last-child {
                width: 2.4rem
            }

                .f-list .list_two_type10 .product:last-child .big {
                    width: 2.4rem;
                    height: 2.4rem
                }

        .f-list .list_two_type13 .box {
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden;
            text-align: center
        }

        .f-list .list_three_type1 .box {
            width: 100%;
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: justify;
            -webkit-box-pack: justify;
            overflow: hidden
        }

        .f-list .list_three_type1 .product {
            width: 2.4rem;
            box-sizing: border-box
        }

            .f-list .list_three_type1 .product .big {
                width: 2.4rem;
                height: 2.4rem
            }

            .f-list .list_three_type1 .product:first-child {
                margin-right: .04rem
            }

            .f-list .list_three_type1 .product:last-child {
                margin-left: .04rem
            }

        .f-list .category_title {
            background: #fff;
            font-size: .28rem;
            text-align: center;
            font-weight: 400;
            margin-top: .2rem;
            height: 1.28rem;
            line-height: 1.28rem;
            overflow: hidden
        }

            .f-list .category_title span {
                position: relative
            }

                .f-list .category_title span::before, .f-list .category_title span::after {
                    content: "";
                    position: absolute;
                    top: 50%;
                    left: 0;
                    width: .4rem;
                    border-top: 1px solid #e0e0e0;
                    transform: translate3d(-150%,-50%,0);
                    -webkit-transform: translate3d(-150%,-50%,0)
                }

                .f-list .category_title span::after {
                    left: auto;
                    right: 0;
                    transform: translate3d(150%,-50%,0);
                    -webkit-transform: translate3d(150%,-50%,0)
                }

        .f-list .category_group {
            background: #fff;
            margin: -.06rem 0 0
        }

            .f-list .category_group .box {
                width: 100%;
                overflow: hidden
            }

            .f-list .category_group .product {
                float: left;
                width: 33.33333%;
                text-align: center;
                margin-top: .2rem;
                margin-bottom: .3rem;
                overflow: hidden
            }

                .f-list .category_group .product .img {
                    width: 1rem;
                    height: 1rem;
                    margin: 0 auto;
                    background: #FFF;
                    overflow: hidden
                }

                    .f-list .category_group .product .img img {
                        width: 100%
                    }

                .f-list .category_group .product .name {
                    margin-top: .28rem;
                    white-space: nowrap;
                    font-size: .23rem;
                    color: rgba(0,0,0,.54)
                }

        .f-list .list_action_title .h {
            background: #fff;
            height: 1rem;
            line-height: 1rem;
            font-size: .28rem;
            text-align: center
        }

            .f-list .list_action_title .h a {
                display: block
            }

            .f-list .list_action_title .h .ti {
                color: rgba(0,0,0,.6)
            }

        .f-list .img {
            position: relative
        }

        .f-list .tag {
            position: absolute;
            top: 0;
            left: 0
        }

            .f-list .tag img {
                height: .32rem;
                width: auto
            }

        .f-list .tagbottom {
            position: absolute;
            bottom: .16rem;
            right: .16rem
        }

            .f-list .tagbottom img {
                display: inline-block;
                width: 1rem;
                height: auto
            }

        .f-list .info {
            padding: .2rem .27rem
        }

            .f-list .info .l {
                display: box;
                display: -webkit-box;
                box-align: center;
                -webkit-box-align: center;
                box-pack: justify;
                -webkit-box-pack: justify;
                overflow: hidden
            }

                .f-list .info .l .price {
                    margin-top: 0
                }

        .f-list .name {
            font-size: .28rem;
            color: rgba(0,0,0,.87);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis
        }

        .f-list .brief {
            margin-top: .06rem;
            font-size: .23rem;
            height: .3rem;
            line-height: .3rem;
            color: rgba(0,0,0,.54);
            white-space: nowrap;
            overflow: hidden;
            text-overflow: ellipsis
        }

        .f-list .briefwarp {
            margin-top: .06rem;
            font-size: .23rem;
            line-height: .35rem;
            color: rgba(0,0,0,.54)
        }

        .f-list .price {
            display: inline-block;
            font-size: .32rem;
            color: #ff6000;
            margin-top: .08rem;
            position: relative;
            margin-left: .2rem;
            white-space: nowrap
        }

            .f-list .price.mt32 {
                margin-top: .2rem
            }

            .f-list .price::before {
                content: "￥";
                position: absolute;
                left: -.2rem;
                top: .01rem;
                font-size: .2rem;
                margin-right: .05rem;
                font-weight: 400
            }

            .f-list .price .old {
                display: inline-block;
                margin-right: .1rem;
                font-size: .22rem;
                color: rgba(0,0,0,.54)
            }

            .f-list .price span {
                display: inline-block;
                margin-left: .1rem;
                font-size: .2rem
            }
    </style>
    <style type="text/css">
        .date-picker .btnwrap {
            position: relative;
            width: 7.2rem;
            height: 1.13rem;
            line-height: 1.13rem;
            box-sizing: border-box;
            padding: 0 .3rem 0 .47rem;
            color: rgba(0,0,0,.27);
            font-size: .28rem;
            border-top: 1px solid rgba(0,0,0,.27);
            border-bottom: 1px solid rgba(0,0,0,.27);
            background-color: #fff
        }

            .date-picker .btnwrap.on {
                color: rgba(0,0,0,.72)
            }

            .date-picker .btnwrap .arrow {
                position: absolute;
                top: .36rem;
                right: .47rem;
                width: .24rem;
                height: .42rem;
                transform: rotate(90deg)
            }

                .date-picker .btnwrap .arrow.up {
                    transform: rotate(270deg)
                }
    </style>
    <style type="text/css">
        .picker {
            display: none;
            position: fixed;
            top: 0;
            z-index: 100;
            width: 100%;
            height: 100%;
            overflow: hidden;
            text-align: center;
            font-family: PingFang SC,STHeitiSC-Light,Helvetica-Light,arial,sans-serif;
            font-size: 14px;
            -moz-user-select: none;
            -webkit-user-select: none;
            -ms-user-select: none;
            user-select: none
        }

            .picker .picker-mask {
                position: absolute;
                z-index: 500;
                width: 100%;
                height: 100%;
                transition: all .5s;
                -webkit-transition: all .5s;
                background: transparent;
                opacity: 0
            }

                .picker .picker-mask.show {
                    background: rgba(0,0,0,.6);
                    opacity: 1
                }

            .picker .picker-panel {
                position: absolute;
                z-index: 600;
                bottom: 0;
                width: 100%;
                height: 243px;
                background: #fff;
                transform: translateY(243px);
                -webkit-transform: translateY(243px);
                transition: all .5s;
                -webkit-transition: all .5s
            }

                .picker .picker-panel.show {
                    transform: translateY(0);
                    -webkit-transform: translateY(0)
                }

                .picker .picker-panel .picker-choose {
                    position: relative;
                    height: 50px;
                    color: #878787;
                    font-size: 14px
                }

                    .picker .picker-panel .picker-choose .picker-title {
                        line-height: 50px;
                        font-size: 16px;
                        text-align: center;
                        color: #333
                    }

                    .picker .picker-panel .picker-choose .cancel, .picker .picker-panel .picker-choose .confirm {
                        position: absolute;
                        padding: 10px;
                        top: 6px
                    }

                    .picker .picker-panel .picker-choose .confirm {
                        right: 0;
                        color: #fa8919
                    }

                    .picker .picker-panel .picker-choose .cancel {
                        left: 0
                    }

                .picker .picker-panel .picker-content {
                    position: relative
                }

                    .picker .picker-panel .picker-content .mask-bottom, .picker .picker-panel .picker-content .mask-top {
                        position: absolute;
                        z-index: 10;
                        width: 100%;
                        height: 68px;
                        pointer-events: none;
                        transform: translateZ(0)
                    }

                    .picker .picker-panel .picker-content .mask-top {
                        top: 0;
                        background: -webkit-gradient(linear,left bottom,left top,from(hsla(0,0%,100%,.4)),to(hsla(0,0%,100%,.8)));
                        background: -o-linear-gradient(bottom,hsla(0,0%,100%,.4),hsla(0,0%,100%,.8))
                    }

                        .picker .picker-panel .picker-content .mask-top:after, .picker .picker-panel .picker-content .mask-top:before {
                            display: block;
                            position: absolute;
                            border-top: 1px solid #ccc;
                            left: 0;
                            width: 100%;
                            content: ' '
                        }

                        .picker .picker-panel .picker-content .mask-top:before {
                            display: none;
                            top: 0
                        }

                        .picker .picker-panel .picker-content .mask-top:after {
                            display: block;
                            bottom: 0
                        }

                    .picker .picker-panel .picker-content .mask-bottom {
                        bottom: 0;
                        background: -webkit-gradient(linear,left top,left bottom,from(hsla(0,0%,100%,.4)),to(hsla(0,0%,100%,.8)));
                        background: -o-linear-gradient(top,hsla(0,0%,100%,.4),hsla(0,0%,100%,.8))
                    }

                        .picker .picker-panel .picker-content .mask-bottom:after, .picker .picker-panel .picker-content .mask-bottom:before {
                            display: block;
                            position: absolute;
                            border-top: 1px solid #ccc;
                            left: 0;
                            width: 100%;
                            content: ' '
                        }

                        .picker .picker-panel .picker-content .mask-bottom:before {
                            display: block;
                            top: 0
                        }

                        .picker .picker-panel .picker-content .mask-bottom:after {
                            display: none;
                            bottom: 0
                        }

                .picker .picker-panel .wheel-wrapper {
                    display: -ms-flexbox;
                    display: -webkit-box;
                    display: flex;
                    padding: 0 10px
                }

                    .picker .picker-panel .wheel-wrapper .wheel {
                        -ms-flex: 1 1 1e-9px;
                        -webkit-box-flex: 1;
                        flex: 1;
                        flex-basis: 1e-9px;
                        width: 1%;
                        height: 173px;
                        overflow: hidden;
                        font-size: 21px
                    }

                        .picker .picker-panel .wheel-wrapper .wheel .wheel-scroll {
                            margin-top: 68px;
                            line-height: 36px
                        }

                            .picker .picker-panel .wheel-wrapper .wheel .wheel-scroll .wheel-item {
                                height: 36px;
                                overflow: hidden;
                                white-space: nowrap;
                                color: #333
                            }

            .picker .picker-footer {
                height: 20px
            }

        @media (-webkit-min-device-pixel-ratio:1.5),(min-device-pixel-ratio:1.5) {
            .border-1px:after, .border-1px:before {
                -webkit-transform: scaleY(.7);
                -webkit-transform-origin: 0 0;
                transform: scaleY(.7)
            }

            .border-1px:after {
                -webkit-transform-origin: left bottom
            }
        }

        @media (-webkit-min-device-pixel-ratio:2),(min-device-pixel-ratio:2) {
            .border-1px:after, .border-1px:before {
                -webkit-transform: scaleY(.5);
                transform: scaleY(.5)
            }
        }
    </style>
    <style type="text/css">
        .part-loading {
            position: fixed;
            z-index: 99999;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0
        }

            .part-loading .sk-box {
                position: fixed;
                width: 4rem;
                height: 3rem;
                top: 50%;
                margin-top: -1.5rem;
                left: 50%;
                margin-left: -2rem;
                background: rgba(0,0,0,.8);
                border-radius: .2rem
            }

            .part-loading .sk-circle {
                margin: 1rem auto;
                width: 1rem;
                height: 1rem;
                position: relative
            }

                .part-loading .sk-circle .sk-child {
                    width: 100%;
                    height: 100%;
                    position: absolute;
                    left: 0;
                    top: 0
                }

                    .part-loading .sk-circle .sk-child:before {
                        content: '';
                        display: block;
                        margin: 0 auto;
                        width: 15%;
                        height: 15%;
                        background-color: #fff;
                        border-radius: 100%;
                        -webkit-animation: sk-circleBounceDelay 1.2s infinite ease-in-out both;
                        animation: sk-circleBounceDelay 1.2s infinite ease-in-out both
                    }

                .part-loading .sk-circle .sk-circle2 {
                    transform: rotate(30deg)
                }

                .part-loading .sk-circle .sk-circle3 {
                    transform: rotate(60deg)
                }

                .part-loading .sk-circle .sk-circle4 {
                    transform: rotate(90deg)
                }

                .part-loading .sk-circle .sk-circle5 {
                    transform: rotate(120deg)
                }

                .part-loading .sk-circle .sk-circle6 {
                    transform: rotate(150deg)
                }

                .part-loading .sk-circle .sk-circle7 {
                    transform: rotate(180deg)
                }

                .part-loading .sk-circle .sk-circle8 {
                    transform: rotate(210deg)
                }

                .part-loading .sk-circle .sk-circle9 {
                    transform: rotate(240deg)
                }

                .part-loading .sk-circle .sk-circle10 {
                    transform: rotate(270deg)
                }

                .part-loading .sk-circle .sk-circle11 {
                    transform: rotate(300deg)
                }

                .part-loading .sk-circle .sk-circle12 {
                    transform: rotate(330deg)
                }

                .part-loading .sk-circle .sk-circle2:before {
                    animation-delay: -1.1s
                }

                .part-loading .sk-circle .sk-circle3:before {
                    animation-delay: -1s
                }

                .part-loading .sk-circle .sk-circle4:before {
                    animation-delay: -.9s
                }

                .part-loading .sk-circle .sk-circle5:before {
                    animation-delay: -.8s
                }

                .part-loading .sk-circle .sk-circle6:before {
                    animation-delay: -.7s
                }

                .part-loading .sk-circle .sk-circle7:before {
                    animation-delay: -.6s
                }

                .part-loading .sk-circle .sk-circle8:before {
                    animation-delay: -.5s
                }

                .part-loading .sk-circle .sk-circle9:before {
                    animation-delay: -.4s
                }

                .part-loading .sk-circle .sk-circle10:before {
                    animation-delay: -.3s
                }

                .part-loading .sk-circle .sk-circle11:before {
                    animation-delay: -.2s
                }

                .part-loading .sk-circle .sk-circle12:before {
                    animation-delay: -.1s
                }

        @-webkit-keyframes sk-circleBounceDelay {
            0%,80%,100% {
                transform: scale(0)
            }

            40% {
                transform: scale(1)
            }
        }

        @keyframes sk-circleBounceDelay {
            0%,80%,100% {
                transform: scale(0)
            }

            40% {
                transform: scale(1)
            }
        }
    </style>
    <style type="text/css">
        .page-product-view {
            background: #FFF;
            max-width: 7.2rem;
            padding-bottom: .86rem
        }

            .page-product-view .ui-line {
                border-bottom: .16rem solid #efeff0
            }

            .page-product-view .mr15 {
                margin-right: .12rem
            }

            .page-product-view .div {
                position: relative
            }

            .page-product-view .mt4x {
                margin-top: .32rem
            }

            .page-product-view .mt2x {
                margin-top: .16rem
            }

            .page-product-view .mr4x {
                margin-right: .32rem
            }

            .page-product-view .mr1x {
                margin-right: .08rem
            }

            .page-product-view .mb2x {
                margin-bottom: .16rem
            }

            .page-product-view .max-width2 {
                max-width: 2rem
            }

            .page-product-view .bb {
                border-bottom: 1px solid #f4f4f4
            }

            .page-product-view .vmiddle {
                box-align: center !important;
                -webkit-box-align: center !important
            }

            .page-product-view .has {
                font-size: .24rem;
                color: rgba(0,0,0,.54)
            }

            .page-product-view .img-icon {
                height: .2rem;
                width: auto
            }

            .page-product-view .fsc1 {
                font-size: .2rem;
                color: rgba(0,0,0,.54)
            }

            .page-product-view .org {
                color: #f56600
            }

            .page-product-view .flex-row {
                display: -webkit-box;
                display: -webkit-flex;
                display: flex;
                flex-direction: row;
                flex-wrap: nowrap;
                -webkit-box-pack: center;
                box-pack: center;
                justify-content: space-around;
                -webkit-box-orient: horizontal;
                align-items: center
            }

            .page-product-view .flex-row-left {
                display: box;
                display: -webkit-box;
                box-pack: start;
                -webkit-box-pack: start;
                box-align: start;
                -webkit-box-align: start
            }

                .page-product-view .flex-row-left .ui-box-flex {
                    -webkit-box-flex: 1;
                    box-flex: 1
                }

            .page-product-view .flex-row-justify {
                display: -webkit-box;
                display: -webkit-flex;
                display: flex;
                flex-direction: row;
                flex-wrap: nowrap;
                -webkit-box-pack: justify;
                box-pack: justify;
                justify-content: space-between;
                -webkit-box-orient: horizontal;
                align-items: center
            }

            .page-product-view .flex-column {
                display: -webkit-box;
                display: -webkit-flex;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
                -webkit-box-orient: vertical;
                -webkit-box-pack: justify
            }

            .page-product-view .price {
                position: relative;
                display: inline-block;
                margin-left: .25rem;
                font-size: .48rem;
                color: #f56600
            }

                .page-product-view .price::before {
                    position: absolute;
                    top: 0;
                    left: -.25rem;
                    content: '￥';
                    font-size: .32rem
                }

            .page-product-view .mt2x {
                margin-top: .16rem
            }

            .page-product-view .more:after {
                content: '\0020';
                display: block;
                width: .14rem;
                height: .14rem;
                border-top: 1px solid #ddd;
                border-right: 1px solid #ddd;
                position: absolute;
                top: 50%;
                right: 0rem;
                margin-top: -.07rem;
                -webkit-transition: .2s ease;
                -webkit-transition-delay: 0s;
                -moz-transition: .2s ease;
                -o-transition: .2s ease;
                transition: .2s ease;
                -webkit-transform: rotate(45deg);
                -moz-transform: rotate(45deg);
                -ms-transform: rotate(45deg);
                -o-transform: rotate(45deg);
                transform: rotate(45deg)
            }

            .page-product-view .slider {
                background-color: #fff;
                overflow: hidden;
                position: relative
            }

                .page-product-view .slider .swipe-wrap {
                    overflow: hidden;
                    position: relative;
                    height: 7.92rem
                }

                    .page-product-view .slider .swipe-wrap > div {
                        float: left;
                        position: relative;
                        text-align: center;
                        overflow: hidden
                    }

                        .page-product-view .slider .swipe-wrap > div a {
                            display: block
                        }

                        .page-product-view .slider .swipe-wrap > div img {
                            width: 7.2rem;
                            height: 7.92rem
                        }

                        .page-product-view .slider .swipe-wrap > div .product-video {
                            height: 7.92rem
                        }

                .page-product-view .slider .swipe-nav {
                    position: absolute;
                    bottom: .5em;
                    text-align: center;
                    width: 100%
                }

                    .page-product-view .slider .swipe-nav span {
                        display: inline-block;
                        width: .8em;
                        height: .8em;
                        margin: 0 .4em;
                        background: url(/views/product/view/img/vimg_28bfc0c.png) no-repeat;
                        background-size: contain
                    }

                        .page-product-view .slider .swipe-nav span.on {
                            background: url(/views/product/view/img/vimgon_a107ff0.png) no-repeat;
                            background-size: contain
                        }

                    .page-product-view .slider .swipe-nav .vid {
                        width: 1em;
                        height: .8em;
                        margin: 0 .4em;
                        background: url(/views/product/view/img/voff_390f368.png) no-repeat;
                        background-size: contain;
                        margin-top: -1px
                    }

                        .page-product-view .slider .swipe-nav .vid.on {
                            background: url(/views/product/view/img/von_ecfcc51.png) no-repeat;
                            background-size: contain
                        }

            .page-product-view .titleView {
                padding: .32rem .32rem 0;
                text-align: left
            }

                .page-product-view .titleView .bookinghead {
                    position: relative;
                    width: 7.2rem;
                    height: .97rem;
                    background: url(/views/product/view/img/bookinghead_477031f.jpg) no-repeat;
                    background-size: cover;
                    margin: -.32rem -.32rem 0 -.32rem;
                    box-pack: start !important;
                    -webkit-box-pack: start !important
                }

                    .page-product-view .titleView .bookinghead .bookingleft {
                        padding-left: .32rem;
                        position: relative;
                        line-height: 1;
                        text-align: left
                    }

                        .page-product-view .titleView .bookinghead .bookingleft .price {
                            color: #fff !important
                        }

                        .page-product-view .titleView .bookinghead .bookingleft .pretxt {
                            font-size: .24rem;
                            color: #fff
                        }

                    .page-product-view .titleView .bookinghead .bookingright {
                        position: absolute;
                        top: 0;
                        bottom: 0;
                        right: 0;
                        float: right;
                        height: .97rem;
                        width: 2.4rem;
                        background: url(/views/product/view/img/bookingright_8088474.png) no-repeat;
                        background-size: cover;
                        box-orient: vertical;
                        -webkit-box-orient: vertical;
                        font-size: .24rem
                    }

                        .page-product-view .titleView .bookinghead .bookingright p {
                            color: #f56600
                        }

                        .page-product-view .titleView .bookinghead .bookingright .bookingtime {
                            color: #fff
                        }

                            .page-product-view .titleView .bookinghead .bookingright .bookingtime .wh {
                                width: .36rem;
                                padding: .05rem 0;
                                border-radius: .02rem;
                                background: rgba(0,0,0,.6);
                                text-align: center
                            }

                            .page-product-view .titleView .bookinghead .bookingright .bookingtime .spe {
                                color: rgba(0,0,0,.72)
                            }

                            .page-product-view .titleView .bookinghead .bookingright .bookingtime .day {
                                color: rgba(0,0,0,.72);
                                margin-right: .1rem
                            }

                .page-product-view .titleView .activity_tips img {
                    width: 7.2rem !important;
                    margin: -.32rem -.32rem .32rem -.32rem;
                    width: 100%;
                    height: auto
                }

                .page-product-view .titleView .name {
                    font-size: .36rem;
                    line-height: .48rem;
                    color: rgba(0,0,0,.87)
                }

                    .page-product-view .titleView .name .price_tips {
                        display: inline-block;
                        height: .48rem;
                        box-sizing: border-box
                    }

                        .page-product-view .titleView .name .price_tips img {
                            height: .42rem;
                            line-height: .36rem;
                            width: auto
                        }

                .page-product-view .titleView .product_desc {
                    margin-top: .08rem;
                    font-size: .24rem;
                    color: rgba(0,0,0,.54);
                    line-height: .36rem
                }

                .page-product-view .titleView .priceBox {
                    padding: .16rem 0
                }

                .page-product-view .titleView .price_tips {
                    display: inline-block
                }

                    .page-product-view .titleView .price_tips img {
                        height: .48rem;
                        width: auto;
                        vertical-align: text-bottom
                    }

                .page-product-view .titleView .bookingprice_desc {
                    font-size: .24rem;
                    color: rgba(0,0,0,.54)
                }

                .page-product-view .titleView .market_price {
                    position: relative;
                    display: inline-block;
                    margin-left: .16rem;
                    font-size: .28rem;
                    color: rgba(0,0,0,.54)
                }

                    .page-product-view .titleView .market_price .tips {
                        display: inline-block;
                        vertical-align: top;
                        padding: .03rem;
                        margin-left: .24rem;
                        color: #fff;
                        background: #f56600;
                        border-radius: 2px;
                        font-size: .2rem
                    }

                .page-product-view .titleView .adapt {
                    margin-top: .32rem;
                    font-size: .24rem;
                    color: rgba(0,0,0,.54);
                    box-align: start;
                    -webkit-box-align: start;
                    align-items: flex-start;
                    padding-bottom: .32rem
                }

                    .page-product-view .titleView .adapt .tit {
                        width: .96rem
                    }

                    .page-product-view .titleView .adapt .alladapt {
                        -webkit-box-flex: 1;
                        flex: 1
                    }

                        .page-product-view .titleView .adapt .alladapt .span {
                            display: inline-block;
                            margin-right: .16rem
                        }

            .page-product-view .productActive {
                padding: .32rem;
                text-align: left;
                position: relative
            }

                .page-product-view .productActive .cicon-info {
                    -webkit-justify-content: flex-start;
                    justify-content: flex-start;
                    -webkit-box-pack: start;
                    box-pack: start;
                    -webkit-box-align: center;
                    box-align: center;
                    align-items: center;
                    margin-top: .16rem;
                    position: relative;
                    padding-right: 10%;
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis
                }

                .page-product-view .productActive .cicon-text {
                    font-size: .2rem;
                    color: #f56600;
                    border: 1px solid #f56600;
                    border-radius: 1px;
                    padding: .02rem .1rem;
                    margin-right: .08rem
                }

                .page-product-view .productActive .active_desc {
                    font-size: .24rem;
                    color: rgba(0,0,0,.87);
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis
                }

                .page-product-view .productActive .title {
                    font-size: .24rem;
                    color: rgba(0,0,0,.54)
                }

                .page-product-view .productActive .cicon-info {
                    margin-top: auto
                }

            .page-product-view .liveView {
                border-bottom: .16rem solid #efeff0
            }

                .page-product-view .liveView .live-left {
                    position: relative;
                    height: 2rem;
                    box-sizing: border-box;
                    padding: .32rem;
                    font-size: .24rem;
                    text-align: left;
                    white-space: nowrap
                }

                    .page-product-view .liveView .live-left .p1 {
                        color: rgba(0,0,0,.54);
                        margin-bottom: .16rem
                    }

                    .page-product-view .liveView .live-left .p2 {
                        color: rgba(0,0,0,.87);
                        margin-bottom: .16rem
                    }

                    .page-product-view .liveView .live-left .picon {
                        width: 1.33rem;
                        height: .4rem;
                        background: url(/views/product/view/img/livebg_d8dd83f.png) no-repeat;
                        background-size: cover;
                        position: relative
                    }

                        .page-product-view .liveView .live-left .picon img {
                            width: .36rem;
                            height: .36rem;
                            position: absolute;
                            top: .02rem;
                            left: .02rem;
                            animation: liveicon 2.4s infinite
                        }

                .page-product-view .liveView .liveright {
                    width: 3rem;
                    height: 2rem
                }

                    .page-product-view .liveView .liveright img {
                        width: 100%;
                        height: auto
                    }

            .page-product-view .address {
                padding: .32rem;
                text-align: left
            }

                .page-product-view .address .cicon-info {
                    -webkit-justify-content: flex-start;
                    justify-content: flex-start;
                    -webkit-box-pack: start;
                    box-pack: start;
                    -webkit-box-align: center;
                    box-align: center;
                    align-items: center;
                    margin-top: .16rem;
                    position: relative;
                    padding-right: 10%;
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis
                }

                .page-product-view .address .cicon-text {
                    font-size: .2rem;
                    color: #f56600;
                    border: 1px solid #f56600;
                    border-radius: 1px;
                    padding: .02rem .1rem;
                    margin-right: .08rem
                }

                .page-product-view .address .active_desc {
                    font-size: .24rem;
                    color: rgba(0,0,0,.87);
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis
                }

                .page-product-view .address .pl4 {
                    padding: .08rem 0 0 .44rem
                }

                .page-product-view .address .more {
                    position: relative
                }

                .page-product-view .address .active_desc {
                    text-align: left;
                    font-size: .24rem !important;
                    white-space: nowrap;
                    overflow: hidden;
                    text-overflow: ellipsis;
                    padding-right: 10%
                }

                .page-product-view .address .icon-gps {
                    width: .24rem;
                    display: inline-block;
                    margin-right: .16rem
                }

                    .page-product-view .address .icon-gps img {
                        width: 100%;
                        height: auto
                    }

                .page-product-view .address .ib {
                    display: inline-block
                }

                .page-product-view .address .on {
                    color: #f56600
                }

            .page-product-view .descdescdesc {
                height: .56rem;
                padding: 0 .32rem;
                line-height: .56rem
            }

            .page-product-view .attrsQaView {
                padding: .32rem;
                text-align: left
            }

                .page-product-view .attrsQaView .productInfo {
                    font-size: .24rem;
                    color: rgba(0,0,0,.87);
                    line-height: .4rem;
                    padding-right: .2rem
                }

            .page-product-view .bookingrule {
                padding: .32rem 0;
                text-align: left;
                font-size: .24rem
            }

                .page-product-view .bookingrule .bookingdesc {
                    color: rgba(0,0,0,.87)
                }

            .page-product-view .relatePartsView {
                text-align: left;
                padding: .16rem .32rem;
                position: relative;
                border-bottom: .16rem solid #efeff0
            }

                .page-product-view .relatePartsView .title {
                    font-size: .24rem;
                    color: rgba(0,0,0,.54)
                }

                .page-product-view .relatePartsView .info {
                    font-size: .24rem;
                    color: rgba(0,0,0,.87)
                }

            .page-product-view .coupon {
                position: relative;
                padding: .32rem;
                text-align: left;
                border-bottom: 1px solid #f4f4f4
            }

                .page-product-view .coupon .title {
                    font-size: .24rem;
                    color: rgba(0,0,0,.54)
                }

                .page-product-view .coupon .couponGroup {
                    position: relative
                }

                .page-product-view .coupon .coupont {
                    -webkit-justify-content: flex-start !important;
                    justify-content: flex-start !important;
                    -webkit-box-pack: start !important;
                    box-pack: start !important
                }

                .page-product-view .coupon .couponItem {
                    font-size: .18rem;
                    color: #fff;
                    background: #f66;
                    margin-right: .16rem;
                    position: relative;
                    height: .27rem;
                    box-sizing: border-box;
                    padding: 0 .08rem;
                    line-height: .27rem
                }

                    .page-product-view .coupon .couponItem::before {
                        content: '';
                        position: absolute;
                        top: 0;
                        left: -.05rem;
                        width: .05rem;
                        height: .27rem;
                        background: url(/views/product/view/img/icon_coupon_left_b9ba58d.png) no-repeat;
                        background-size: cover
                    }

                    .page-product-view .coupon .couponItem::after {
                        content: '';
                        position: absolute;
                        top: 0;
                        right: -.05rem;
                        width: .05rem;
                        height: .27rem;
                        background: url(/views/product/view/img/icon_coupon_right_1db39bc.png) no-repeat;
                        background-size: cover;
                        z-index: 10
                    }

            .page-product-view .commentView {
                padding: 0 .32rem .32rem;
                text-align: left;
                border-bottom: .16rem solid #efeff0
            }

                .page-product-view .commentView .header-comment {
                    position: relative;
                    padding: .32rem 0;
                    border-bottom: 1px solid #f4f4f4
                }

                    .page-product-view .commentView .header-comment .left {
                        font-size: .28rem;
                        color: rgba(0,0,0,.87)
                    }

                    .page-product-view .commentView .header-comment .right {
                        margin-right: .4rem;
                        font-size: .24rem
                    }

            .page-product-view .descTabsView {
                border-bottom: .16rem solid #efeff0
            }

                .page-product-view .descTabsView .tabs {
                    background: #fff;
                    width: 100%;
                    height: .88rem;
                    font-size: .24rem;
                    color: rgba(0,0,0,.87);
                    border-bottom: 1px solid #f4f4f4
                }

                    .page-product-view .descTabsView .tabs.fiexd {
                        position: fixed;
                        top: 0;
                        left: 0;
                        right: 0;
                        z-index: 10
                    }

                    .page-product-view .descTabsView .tabs.hidden1 {
                        display: none
                    }

                    .page-product-view .descTabsView .tabs .tab {
                        text-align: center;
                        border-right: 1px solid #E5E5E5;
                        box-flex: 1;
                        -webkit-box-flex: 1;
                        flex: 1;
                        -webkit-flex: 1
                    }

                        .page-product-view .descTabsView .tabs .tab:last-child {
                            border-right: 0
                        }

                        .page-product-view .descTabsView .tabs .tab.on {
                            color: #f56600
                        }

                            .page-product-view .descTabsView .tabs .tab.on a {
                                color: #f56600
                            }

                .page-product-view .descTabsView .tabs-views {
                    width: 100%
                }

                    .page-product-view .descTabsView .tabs-views img {
                        width: 100%;
                        height: auto
                    }

                    .page-product-view .descTabsView .tabs-views .title {
                        margin: .24rem .3rem;
                        font-size: .24rem;
                        color: #333
                    }

                    .page-product-view .descTabsView .tabs-views .content {
                        margin: .24rem .3rem;
                        font-size: .22rem;
                        line-height: .32rem;
                        color: #B0B0B0
                    }

                .page-product-view .descTabsView .showAllBtn {
                    display: block;
                    height: .88rem;
                    text-align: center;
                    line-height: .88rem;
                    font-size: .24rem;
                    color: #f56600
                }

            .page-product-view #top {
                position: fixed;
                bottom: 1.4rem;
                right: .26rem;
                width: .7rem;
                height: .7rem;
                overflow: hidden;
                visibility: hidden
            }

                .page-product-view #top img {
                    width: 100%
                }

            .page-product-view .pop {
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
                top: 0;
                width: 7.2rem;
                background-color: rgba(0,0,0,.3);
                color: #000;
                z-index: 20
            }

                .page-product-view .pop .content {
                    position: absolute;
                    bottom: 0;
                    left: 0;
                    right: 0;
                    background-color: #fff;
                    padding: .32rem .32rem 1.27rem;
                    transition: transform .3s;
                    transform: translate3d(0,100%,0)
                }

                    .page-product-view .pop .content .close {
                        position: absolute;
                        top: .16rem;
                        right: .16rem;
                        font-size: .5rem;
                        text-align: right;
                        vertical-align: top;
                        width: .5rem;
                        height: .5rem;
                        z-index: 10
                    }

                    .page-product-view .pop .content .pop-icon-close {
                        display: block;
                        background: url(/views/product/view/img/close_38467b8.png) no-repeat;
                        background-size: cover;
                        width: .4rem;
                        height: .4rem
                    }

                    .page-product-view .pop .content .h1 {
                        padding: .24rem 0;
                        text-align: center;
                        font-size: .32rem;
                        color: rgba(0,0,0,.87)
                    }

                .page-product-view .pop .minH5 {
                    min-height: 5rem
                }

                .page-product-view .pop .maxH5 {
                    max-height: 6rem;
                    overflow-y: auto;
                    overflow-x: hidden
                }

                .page-product-view .pop .maxH7 {
                    max-height: 7rem;
                    overflow-y: auto;
                    overflow-x: hidden
                }

                .page-product-view .pop .pb0 {
                    padding-bottom: 0 !important
                }

            .page-product-view .product-footer {
                position: fixed;
                bottom: 0;
                left: 0;
                right: 0;
                background-color: #fff;
                padding: 0;
                text-align: center;
                font-size: .32rem
            }

                .page-product-view .product-footer > a {
                    box-sizing: border-box;
                    display: block;
                    width: 1.45rem;
                    height: .95rem;
                    border-top: 1px solid #f4f4f4;
                    padding-top: .1rem
                }

                .page-product-view .product-footer .br {
                    border-right: 1px solid #f4f4f4
                }

                .page-product-view .product-footer .icon-gouwuche, .page-product-view .product-footer .icon-home {
                    font-size: .5rem;
                    line-height: .5rem
                }

                .page-product-view .product-footer .addCart {
                    -webkit-box-flex: 1;
                    flex: 1;
                    height: .95rem;
                    line-height: .95rem;
                    background-color: #f90;
                    color: #fff
                }

                .page-product-view .product-footer .buyNow {
                    -webkit-box-flex: 1;
                    flex: 1;
                    height: .95rem;
                    line-height: .95rem;
                    background-color: #f95b07;
                    color: #fff
                }

                .page-product-view .product-footer .p {
                    font-size: .2rem;
                    color: rgba(0,0,0,.72)
                }

            .page-product-view .specMenu .content .proInfo {
                min-height: 1.5rem
            }

            .page-product-view .specMenu .content .productImg {
                width: 2rem;
                height: 2rem;
                margin-top: -20%
            }

                .page-product-view .specMenu .content .productImg img {
                    width: 100%;
                    height: auto;
                    border-radius: 2px
                }

            .page-product-view .specMenu .content .proDesc {
                position: relative;
                -webkit-justify-content: flex-start;
                justify-content: flex-start;
                -webkit-box-pack: start;
                box-pack: start;
                -webkit-box-flex: 1;
                flex: 1;
                margin-left: .16rem;
                margin-top: -.32rem
            }

                .page-product-view .specMenu .content .proDesc .desc {
                    font-size: .28rem;
                    color: rgba(0,0,0,.87);
                    line-height: .4rem
                }

            .page-product-view .specMenu .content .specTitle {
                margin-top: .32rem;
                margin-bottom: .16rem;
                line-height: .24rem;
                font-size: .24rem;
                color: rgba(0,0,0,.87)
            }

                .page-product-view .specMenu .content .specTitle span {
                    color: #f56600
                }

            .page-product-view .specMenu .content .specs {
                flex-wrap: wrap !important;
                -webkit-box-lines: multiple !important;
                box-lines: multiple !important;
                justify-content: flex-start !important;
                -webkit-box-pack: start !important;
                box-pack: start !important;
                padding-bottom: .32rem
            }

                .page-product-view .specMenu .content .specs .specItem {
                    height: .72rem;
                    min-width: 1.45rem;
                    box-sizing: border-box;
                    padding: .24rem .08rem;
                    text-align: center;
                    border: 1px solid rgba(0,0,0,.15);
                    border-radius: 2px;
                    margin: .16rem .16rem 0 0
                }

                    .page-product-view .specMenu .content .specs .specItem.on {
                        border: 1px solid #f56600
                    }

                        .page-product-view .specMenu .content .specs .specItem.on p {
                            color: #f56600
                        }

                    .page-product-view .specMenu .content .specs .specItem.cos {
                        border-style: dashed
                    }

                    .page-product-view .specMenu .content .specs .specItem.online {
                        width: 100%;
                        box-pack: justify;
                        justify-content: space-between;
                        padding: .24rem .32rem !important
                    }

                    .page-product-view .specMenu .content .specs .specItem img {
                        width: .28rem;
                        height: auto;
                        margin-right: .12rem
                    }

                    .page-product-view .specMenu .content .specs .specItem .icon_color {
                        width: .28rem;
                        height: .28rem;
                        display: inline-block;
                        border-radius: 50%;
                        margin-right: .12rem
                    }

                    .page-product-view .specMenu .content .specs .specItem p {
                        font-size: .24rem;
                        color: rgba(0,0,0,.87)
                    }

            .page-product-view .specMenu .content .specBuy {
                justify-content: space-between !important;
                -webkit-box-pack: justify !important;
                box-pack: justify !important;
                padding: .32rem 0
            }

                .page-product-view .specMenu .content .specBuy .addNum .input-sub {
                    width: .68rem;
                    height: .68rem;
                    background: url(/views/product/view/img/-view_de185bf.png) no-repeat center;
                    background-size: 40%
                }

                .page-product-view .specMenu .content .specBuy .addNum .input-add {
                    width: .68rem;
                    height: .68rem;
                    background: url(/views/product/view/img/＋view_21ff956.png) no-repeat center;
                    background-size: 40%
                }

                .page-product-view .specMenu .content .specBuy .addNum .off {
                    opacity: .3
                }

                .page-product-view .specMenu .content .specBuy .addNum > div {
                    float: left;
                    margin: 0;
                    padding: 0;
                    width: .68rem;
                    height: .68rem;
                    border: 1px solid #f4f4f4;
                    border-left: 0;
                    box-sizing: border-box;
                    line-height: .68rem;
                    text-align: center;
                    font-size: .24rem;
                    color: #000;
                    background-color: #fff !important
                }

                    .page-product-view .specMenu .content .specBuy .addNum > div:first-child {
                        border-left: 1px solid #f4f4f4
                    }

                    .page-product-view .specMenu .content .specBuy .addNum > div.none {
                        color: #ccc
                    }

            .page-product-view .specMenu .content .contentBox {
                max-height: 4.5rem;
                overflow-y: scroll
            }

            .page-product-view .specMenu .content .batchproduct {
                justify-content: flex-start !important;
                -webkit-box-pack: start !important;
                box-pack: start !important;
                padding: .16rem 0
            }

            .page-product-view .specMenu .content .batchImg {
                width: 1rem;
                height: 1rem;
                box-sizing: border-box;
                border: 1px solid #f4f4f4;
                border-radius: 1px;
                margin-right: .32rem
            }

                .page-product-view .specMenu .content .batchImg img {
                    width: 100%;
                    height: 100%
                }

            .page-product-view .specMenu .btn {
                color: #fff;
                text-align: center;
                height: .93rem;
                line-height: .93rem;
                position: absolute;
                left: 0;
                right: 0;
                bottom: 0;
                font-size: .32rem
            }

                .page-product-view .specMenu .btn .addCart {
                    width: 3.6rem;
                    background-color: #f90
                }

                .page-product-view .specMenu .btn .buyNow {
                    width: 3.6rem;
                    background-color: #f95b07
                }

                .page-product-view .specMenu .btn .submitNow {
                    width: 7.2rem;
                    background-color: #f95b07
                }

            .page-product-view .releasepartsPop .content {
                max-height: 9.6rem
            }

            .page-product-view .releasepartsPop .part:last-child {
                border-bottom: 0
            }

            .page-product-view .releasepartsPop .part-img {
                width: 2.4rem;
                height: 2.4rem
            }

                .page-product-view .releasepartsPop .part-img img {
                    width: 2.4rem;
                    height: auto
                }

            .page-product-view .releasepartsPop .info {
                width: 100%;
                box-sizing: border-box
            }

                .page-product-view .releasepartsPop .info .name {
                    font-size: .28rem;
                    color: rgba(0,0,0,.87)
                }

                .page-product-view .releasepartsPop .info .desc {
                    font-size: .24rem;
                    color: rgba(0,0,0,.54);
                    overflow: hidden;
                    text-overflow: ellipsis;
                    display: -webkit-box;
                    -webkit-box-orient: vertical;
                    -webkit-line-clamp: 2
                }

                .page-product-view .releasepartsPop .info .price {
                    font-size: .36rem
                }

                .page-product-view .releasepartsPop .info .pricecount {
                    -webkit-box-pack: end !important;
                    box-pack: end !important;
                    justify-content: flex-end !important
                }

                .page-product-view .releasepartsPop .info .icon {
                    width: .6rem;
                    height: .6rem
                }

                .page-product-view .releasepartsPop .info .iconsub {
                    background-image: url(/views/product/view/img/-_956e62d.png);
                    background-size: cover
                }

                .page-product-view .releasepartsPop .info .iconPlus {
                    background-image: url(/views/product/view/img/+_8341968.png);
                    background-size: cover
                }

                .page-product-view .releasepartsPop .info .iconPlus1 {
                    background-image: url(/views/product/view/img/+1_3612b7c.png);
                    background-size: cover
                }

                .page-product-view .releasepartsPop .info .countNum {
                    width: .6rem;
                    line-height: .6rem;
                    font-size: .32rem;
                    color: rgba(0,0,0,.87);
                    text-align: center
                }

                .page-product-view .releasepartsPop .info .partout {
                    display: inline-block;
                    margin-left: .08rem;
                    font-size: .32rem;
                    line-height: .36rem;
                    color: rgba(0,0,0,.54)
                }

            .page-product-view .releasepartsPop .btn-add-cart {
                position: absolute;
                bottom: 0;
                left: 0;
                right: 0;
                height: .93rem;
                line-height: .93rem;
                background-color: #f95b07;
                color: #fff;
                font-size: .3rem;
                text-align: center
            }

            .page-product-view .releasepartsPop .pd93 {
                padding-bottom: .93rem
            }

            .page-product-view .releasepartsPop .activeItem {
                border-bottom: 1px solid #f4f4f4;
                line-height: 1.04rem;
                padding: .32rem 0
            }

            .page-product-view .releasepartsPop .cicon-info {
                -webkit-justify-content: flex-start;
                justify-content: flex-start;
                -webkit-box-pack: start;
                box-pack: start;
                -webkit-box-align: center;
                box-align: center;
                align-items: center;
                position: relative;
                padding-right: 10%;
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis
            }

            .page-product-view .releasepartsPop .cicon-text {
                font-size: .24rem;
                color: #f56600;
                line-height: .28rem;
                border: 1px solid #f56600;
                border-radius: 1px;
                padding: .02rem .1rem;
                margin-right: .08rem
            }

            .page-product-view .releasepartsPop .active_desc {
                font-size: .28rem;
                color: rgba(0,0,0,.87);
                white-space: nowrap;
                overflow: hidden;
                text-overflow: ellipsis
            }

            .page-product-view .releasepartsPop .ht13x {
                height: 1.04rem;
                box-sizing: border-box
            }

            .page-product-view .couponPop {
                text-align: left
            }

                .page-product-view .couponPop .h2 {
                    font-size: .24rem;
                    color: rgba(0,0,0,.54);
                    margin-top: .16rem
                }

                .page-product-view .couponPop .btn-sub {
                    position: absolute;
                    bottom: 0;
                    left: 0;
                    right: 0;
                    height: .93rem;
                    line-height: .93rem;
                    background-color: #f95b07;
                    color: #fff;
                    font-size: .3rem;
                    text-align: center
                }

                .page-product-view .couponPop .couponItem {
                    margin-top: .16rem;
                    -webkit-justify-content: flex-start !important;
                    justify-content: flex-start !important;
                    -webkit-box-pack: start !important;
                    box-pack: start !important;
                    box-sizing: border-box;
                    width: 6.56rem
                }

                    .page-product-view .couponPop .couponItem .couponTou {
                        width: 1.88rem;
                        height: 1.8rem;
                        text-align: center;
                        line-height: 1.8rem;
                        position: relative
                    }

                        .page-product-view .couponPop .couponItem .couponTou .price {
                            color: #fff
                        }

                            .page-product-view .couponPop .couponItem .couponTou .price::before {
                                top: -.04rem
                            }

                        .page-product-view .couponPop .couponItem .couponTou .yiling {
                            position: absolute;
                            bottom: .2rem;
                            left: .6rem;
                            color: #fff;
                            font-size: .24rem;
                            line-height: .24rem
                        }

                    .page-product-view .couponPop .couponItem .info {
                        width: 4.68rem;
                        box-sizing: border-box;
                        height: 1.8rem;
                        border: 1px solid #f56600;
                        padding: .16rem 0 .16rem .16rem;
                        text-align: left;
                        font-size: .28rem
                    }

                        .page-product-view .couponPop .couponItem .info .cname {
                            color: rgba(0,0,0,.87)
                        }

                        .page-product-view .couponPop .couponItem .info .cinfo, .page-product-view .couponPop .couponItem .info .ctime {
                            white-space: nowrap;
                            overflow: hidden;
                            text-overflow: ellipsis;
                            color: rgba(0,0,0,.54)
                        }

                    .page-product-view .couponPop .couponItem.l20 .couponTou {
                        background: url(/views/product/view/img/20_ec923f6.png) no-repeat;
                        background-size: cover
                    }

                    .page-product-view .couponPop .couponItem.l20 .info {
                        border-color: #f2c347
                    }

                    .page-product-view .couponPop .couponItem.l50 .couponTou {
                        background: url(/views/product/view/img/50_1e41cf8.png) no-repeat;
                        background-size: cover
                    }

                    .page-product-view .couponPop .couponItem.l50 .info {
                        border-color: #f99858
                    }

                    .page-product-view .couponPop .couponItem.g50 .couponTou {
                        background: url(/views/product/view/img/100_b0efb37.png) no-repeat;
                        background-size: cover
                    }

                    .page-product-view .couponPop .couponItem.g50 .info {
                        border-color: #fe746a
                    }

            .page-product-view .bookingrulePop .ruledetal {
                font-size: .28rem;
                color: rgba(0,0,0,.72)
            }

            .page-product-view .addressPop {
                text-align: left
            }

                .page-product-view .addressPop .hh2 {
                    font-size: .24rem;
                    color: rgba(0,0,0,.54)
                }

                .page-product-view .addressPop .btn-add-new {
                    position: absolute;
                    bottom: 0;
                    left: 0;
                    right: 0;
                    height: .93rem;
                    line-height: .93rem;
                    background-color: #f95b07;
                    color: #fff;
                    font-size: .3rem;
                    text-align: center
                }

                .page-product-view .addressPop .gray {
                    color: rgba(0,0,0,.3)
                }

                .page-product-view .addressPop .addresslist {
                    padding-bottom: .93rem
                }

                    .page-product-view .addressPop .addresslist .addressitem {
                        border-bottom: 1px solid #f4f4f4;
                        text-align: left;
                        padding: .16rem 0
                    }

                        .page-product-view .addressPop .addresslist .addressitem.active {
                            color: #f56600
                        }

                            .page-product-view .addressPop .addresslist .addressitem.active .icon {
                                background: url(/views/product/view/img/gps_90d5f88.png) no-repeat;
                                background-size: contain
                            }

                            .page-product-view .addressPop .addresslist .addressitem.active .line1, .page-product-view .addressPop .addresslist .addressitem.active .line2 {
                                color: #f56600
                            }

                        .page-product-view .addressPop .addresslist .addressitem .icon {
                            background: url(/views/product/view/img/gps1_96e2f59.png) no-repeat;
                            background-size: contain
                        }

                        .page-product-view .addressPop .addresslist .addressitem .line1 {
                            -webkit-justify-content: flex-start;
                            justify-content: flex-start;
                            -webkit-box-pack: start;
                            box-pack: start;
                            -webkit-box-align: center;
                            box-align: center;
                            align-items: center;
                            font-size: .28rem;
                            color: rgba(0,0,0,.87)
                        }

                            .page-product-view .addressPop .addresslist .addressitem .line1 .icon {
                                width: .28rem;
                                height: .28rem;
                                margin-right: .16rem
                            }

                        .page-product-view .addressPop .addresslist .addressitem .line2 {
                            padding-left: .44rem;
                            font-size: .24rem;
                            color: rgba(0,0,0,.54);
                            white-space: nowrap;
                            overflow: hidden;
                            text-overflow: ellipsis
                        }

            .page-product-view .alertSuccess {
                position: fixed;
                right: 0;
                left: 0;
                bottom: 5rem;
                line-height: .3rem;
                text-align: center;
                font-size: .24rem;
                z-index: 1000;
                color: rgba(255,255,255,0)
            }

                .page-product-view .alertSuccess .text {
                    display: inline-block;
                    border-radius: 2px;
                    padding: .2rem;
                    background: rgba(0,0,0,.8);
                    text-align: center;
                    position: relative
                }

                    .page-product-view .alertSuccess .text .icon-dui {
                        position: absolute;
                        top: .2rem;
                        left: 50%;
                        margin-left: -.4rem;
                        width: .8rem;
                        height: .8rem
                    }

                        .page-product-view .alertSuccess .text .icon-dui img {
                            width: 100%;
                            height: auto
                        }

                    .page-product-view .alertSuccess .text .icon-text {
                        margin-top: 1rem;
                        color: #fff;
                        font-size: .3rem
                    }

            .page-product-view .buyshow-enter {
                transform: translate3d(0,0,0) !important
            }

        @keyframes liveicon {
            0% {
                opacity: 1
            }

            50% {
                opacity: .1
            }

            100% {
                opacity: 1
            }
        }
    </style>
    <style type="text/css">
        .bt_mask {
            position: fixed;
            top: 0;
            display: none;
            width: 100%;
            height: 100%;
            left: 0;
            z-index: 10;
            background-color: rgba(228,226,232,.22)
        }

        .bt_panel {
            position: absolute;
            top: 30%;
            z-index: 12;
            left: 5%;
            right: 5%;
            background: #fff;
            -webkit-border-radius: .04rem;
            -moz-border-radius: .04rem;
            -ms-border-radius: .04rem;
            -o-border-radius: .04rem;
            border-radius: .04rem;
            -webkit-box-shadow: rgba(0,0,0,.2) 0 0 1em;
            -moz-box-shadow: rgba(0,0,0,.2) 0 0 1em;
            -ms-box-shadow: rgba(0,0,0,.2) 0 0 1em;
            -o-box-shadow: rgba(0,0,0,.2) 0 0 1em;
            box-shadow: rgba(0,0,0,.2) 0 0 1em;
            padding: .5rem .2rem .8rem
        }

            .bt_panel .tit {
                text-align: center;
                font-size: .3rem;
                font-weight: 700
            }

                .bt_panel .tit p {
                    font-size: 2.2em;
                    font-weight: 700;
                    color: #51555A
                }

            .bt_panel .tips {
                font-size: .3rem;
                text-align: center;
                line-height: .4rem;
                margin-top: 1em
            }

            .bt_panel .bt_close {
                display: block;
                width: .3rem;
                height: .3rem;
                position: absolute;
                top: .2rem;
                right: .2rem;
                color: #333;
                -webkit-box-sizing: border-box;
                -moz-box-sizing: border-box;
                -ms-box-sizing: border-box;
                -o-box-sizing: border-box;
                box-sizing: border-box
            }

        .loading {
            background: #FFF;
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            bottom: 0
        }

        #load {
            position: absolute;
            top: 50%;
            left: 50%;
            margin: -.5em auto auto -.5em
        }
    </style>
    <style type="text/css">
        .transitioned {
            -webkit-transition-duration: .5s;
            transition-duration: .5s;
            -webkit-transition-property: -webkit-transform;
            transition-property: transform;
            -webkit-transition-timing-function: ease-in;
            transition-timing-function: ease-in
        }

        .animated {
            -webkit-animation-duration: .3s;
            animation-duration: .3s;
            -webkit-animation-fill-mode: both;
            animation-fill-mode: both
        }

        @-webkit-keyframes fadein {
            from {
                opacity: 0
            }

            to {
                opacity: 1
            }
        }

        @keyframes fadein {
            from {
                opacity: 0
            }

            to {
                opacity: 1
            }
        }

        .fadein {
            -webkit-animation-name: fadein;
            animation-name: fadein
        }

        @-webkit-keyframes fadeout {
            from {
                opacity: 1
            }

            to {
                opacity: 0
            }
        }

        @keyframes fadeout {
            from {
                opacity: 1
            }

            to {
                opacity: 0
            }
        }

        .fadeout {
            -webkit-animation-name: fadeout;
            animation-name: fadeout
        }

        .fadein-transition {
            -webkit-animation-duration: .3s;
            animation-duration: .3s;
            -webkit-animation-fill-mode: forwards;
            animation-fill-mode: forwards
        }

        .fadein-enter {
            -webkit-animation-name: fadein;
            animation-name: fadein
        }

        .fadein-leave {
            -webkit-animation-name: fadeout;
            animation-name: fadeout
        }

        .popup-puzzle-captcha .ui-popup-layer {
            background-color: rgba(0,0,0,.4);
            position: fixed;
            left: 0;
            top: 0;
            right: 0;
            bottom: 0;
            width: 100%;
            height: 100%;
            margin: 0 auto;
            z-index: 5
        }

        .popup-puzzle-captcha .ui-popup-box {
            overflow: hidden;
            background-color: #fff;
            width: 92%;
            margin: 10% auto 0;
            padding: .5rem;
            -webkit-border-radius: .1rem;
            -moz-border-radius: .1rem;
            -ms-border-radius: .1rem;
            -o-border-radius: .1rem;
            border-radius: .1rem;
            -webkit-box-sizing: border-box;
            -moz-box-sizing: border-box;
            -ms-box-sizing: border-box;
            -o-box-sizing: border-box;
            box-sizing: border-box;
            position: relative
        }

            .popup-puzzle-captcha .ui-popup-box .fk_close {
                width: .4rem;
                height: .4rem;
                position: absolute;
                top: .2rem;
                right: .2rem;
                z-index: 2;
                border-radius: 1rem;
                padding: 2px
            }

            .popup-puzzle-captcha .ui-popup-box .tit {
                text-align: center;
                margin-bottom: .2rem;
                font-size: .46rem
            }

            .popup-puzzle-captcha .ui-popup-box .captcha-box {
                position: relative;
                margin: 0 auto;
                overflow: hidden
            }

            .popup-puzzle-captcha .ui-popup-box .captcha-img {
                overflow: hidden
            }

                .popup-puzzle-captcha .ui-popup-box .captcha-img > div {
                    float: left
                }

            .popup-puzzle-captcha .ui-popup-box .captcha-img-origin {
                position: absolute;
                left: 0;
                top: 0;
                z-index: 2
            }

            .popup-puzzle-captcha .ui-popup-box .captcha-piece {
                position: absolute;
                left: 0;
                z-index: 1;
                background-color: transparent;
                background-repeat: no-repeat;
                background-position: 0 0
            }

            .popup-puzzle-captcha .ui-popup-box .captcha-control {
                margin: .3rem 0 .1rem;
                height: .6rem;
                line-height: .6rem;
                -webkit-border-radius: .6rem;
                -moz-border-radius: .6rem;
                -ms-border-radius: .6rem;
                -o-border-radius: .6rem;
                border-radius: .6rem;
                background: linear-gradient(to right,#bababa,#959595);
                position: relative
            }

                .popup-puzzle-captcha .ui-popup-box .captcha-control .text {
                    color: #fff;
                    text-align: center;
                    filter: alpha(Opacity=60);
                    opacity: .6
                }

                .popup-puzzle-captcha .ui-popup-box .captcha-control .handle {
                    position: absolute;
                    left: 0;
                    top: -.1rem;
                    width: .8rem;
                    height: .8rem;
                    background: #eee url(/component/puzzle-captcha/img/drag-captcha-handle_12090d9.png) no-repeat 0 0;
                    -webkit-background-size: cover;
                    -moz-background-size: cover;
                    -ms-background-size: cover;
                    -o-background-size: cover;
                    background-size: cover
                }

                    .popup-puzzle-captcha .ui-popup-box .captcha-control .handle:active {
                        background-position: 0 100%
                    }

            .popup-puzzle-captcha .ui-popup-box .status-bar {
                margin: .3rem 0 0;
                font-size: .28rem
            }

                .popup-puzzle-captcha .ui-popup-box .status-bar .ui-box-flex {
                    width: 100%
                }

            .popup-puzzle-captcha .ui-popup-box .status {
                color: #949494
            }

            .popup-puzzle-captcha .ui-popup-box .status-error {
                color: #f60
            }

            .popup-puzzle-captcha .ui-popup-box .refresh img {
                display: inline-block;
                vertical-align: middle;
                width: .28rem;
                margin-right: .1rem
            }
    </style>
    <style type="text/css">
        .popup-risk-check .ui-pop-content {
            padding: .8rem 0 .4rem
        }

        .popup-risk-check .security-verify {
            padding: 0 .4rem
        }

            .popup-risk-check .security-verify .text {
                padding: 0;
                text-align: center
            }

                .popup-risk-check .security-verify .text h4 {
                    margin: 0 0 .3rem;
                    font-size: .36rem
                }

                .popup-risk-check .security-verify .text p {
                    font-size: .28rem
                }

            .popup-risk-check .security-verify .form {
                margin-top: .4rem
            }

                .popup-risk-check .security-verify .form .ui-form-item {
                    -webkit-border-radius: .1rem;
                    -moz-border-radius: .1rem;
                    -ms-border-radius: .1rem;
                    -o-border-radius: .1rem;
                    border-radius: .1rem;
                    overflow: hidden
                }

                    .popup-risk-check .security-verify .form .ui-form-item .ui-input {
                        border: 1px solid #c9c9c9;
                        height: .8rem;
                        line-height: .8rem;
                        -webkit-box-flex: 1;
                        box-flex: 1;
                        width: 100%
                    }

                        .popup-risk-check .security-verify .form .ui-form-item .ui-input input {
                            font-size: .26rem
                        }

                    .popup-risk-check .security-verify .form .ui-form-item .ui-button {
                        width: 5rem;
                        height: .8rem;
                        line-height: .8rem;
                        font-size: .26rem;
                        color: #fff;
                        -webkit-border-radius: 0;
                        -moz-border-radius: 0;
                        -ms-border-radius: 0;
                        -o-border-radius: 0;
                        border-radius: 0
                    }

                    .popup-risk-check .security-verify .form .ui-form-item .ui-button-disabled {
                        background: #c9c9c9;
                        border: 1px solid #c9c9c9
                    }

            .popup-risk-check .security-verify .action {
                margin-top: .4rem
            }

                .popup-risk-check .security-verify .action .ui-button {
                    width: 100%;
                    height: .8rem;
                    line-height: .8rem;
                    border: 1px solid #ff5722;
                    color: #ff5722;
                    background: #fff;
                    font-size: .26rem
                }

                    .popup-risk-check .security-verify .action .ui-button:first-child {
                        margin-right: .1rem
                    }

                    .popup-risk-check .security-verify .action .ui-button:last-child {
                        margin-left: .1rem
                    }

                .popup-risk-check .security-verify .action .ui-button-gray {
                    border-color: #c9c9c9;
                    color: #c9c9c9
                }

                .popup-risk-check .security-verify .action .ui-button-disabled {
                    border-color: #e6e6e6;
                    color: #e6e6e6
                }
    </style>
    <style type="text/css">
        .list-recommend {
            background: #fff
        }

            .list-recommend .recommend-loading {
                position: relative
            }

                .list-recommend .recommend-loading .recommend-loading-anim {
                    height: 1.5rem
                }

            .list-recommend .recommend-title {
                height: .8rem;
                line-height: .8rem;
                background: #fff;
                font-size: .3rem;
                padding: 0 .32rem
            }

            .list-recommend .recommend-list::after, .list-recommend .recommend-list::before {
                content: "";
                height: 0;
                clear: both;
                display: table;
                overflow: hidden
            }

            .list-recommend .recommend-list li {
                float: left;
                width: 50%;
                box-sizing: border-box;
                padding-right: .04rem
            }

                .list-recommend .recommend-list li:nth-child(2n) {
                    float: right;
                    padding-left: .04rem;
                    padding-right: 0
                }

                .list-recommend .recommend-list li .img {
                    position: relative
                }

                    .list-recommend .recommend-list li .img > img {
                        width: 100%;
                        height: auto;
                        min-height: 3.56rem;
                        border: 0
                    }

                    .list-recommend .recommend-list li .img .tag {
                        position: absolute;
                        top: 0;
                        left: 0
                    }

                        .list-recommend .recommend-list li .img .tag img {
                            height: .32rem;
                            width: auto;
                            min-height: auto
                        }

                .list-recommend .recommend-list li .recommend-info {
                    padding: .18rem .27rem
                }

                    .list-recommend .recommend-list li .recommend-info .recommend-name {
                        font-size: .28rem;
                        color: rgba(0,0,0,.87);
                        white-space: nowrap;
                        overflow: hidden
                    }

                    .list-recommend .recommend-list li .recommend-info .recommend-brief {
                        margin-top: .16rem;
                        font-size: .24rem;
                        color: rgba(0,0,0,.54);
                        line-height: .3rem;
                        height: .3rem;
                        overflow: hidden
                    }

                    .list-recommend .recommend-list li .recommend-info .recommend-price {
                        font-size: .32rem;
                        color: #ff6000;
                        margin-top: .1rem
                    }

                        .list-recommend .recommend-list li .recommend-info .recommend-price::before {
                            content: "￥";
                            font-size: .2rem;
                            vertical-align: top;
                            margin-right: .05rem;
                            font-weight: 400;
                            display: inline-block;
                            transform: translateY(0.01rem);
                            -webkit-transform: translateY(0.01rem)
                        }

                        .list-recommend .recommend-list li .recommend-info .recommend-price .old {
                            font-size: .22rem;
                            color: rgba(0,0,0,.6)
                        }

                        .list-recommend .recommend-list li .recommend-info .recommend-price span {
                            font-size: .3rem
                        }
    </style>
    <style type="text/css">
        .comment-loading {
            position: relative
        }

            .comment-loading .comment-loading-anim {
                height: 1.5rem
            }

            .comment-loading .comment-loading-more {
                height: .8rem
            }

        .comment-list .item {
            border-bottom: 1px solid #ddd;
            padding: .24rem 0 0;
            display: block
        }

            .comment-list .item:first-child:last-child {
                border-bottom: 0
            }

            .comment-list .item.padd {
                padding: .24rem .32rem .32rem
            }

        .comment-list .user {
            display: box;
            display: -webkit-box;
            box-align: center;
            -webkit-box-align: center;
            box-pack: start;
            -webkit-box-pack: start;
            padding: .16rem 0
        }

            .comment-list .user .img {
                margin-right: .24rem;
                width: .8rem;
                min-width: .8rem;
                height: .8rem;
                overflow: hidden;
                box-sizing: border-box;
                border-radius: 100%
            }

                .comment-list .user .img.nologin {
                    border: 0
                }

                .comment-list .user .img img {
                    width: 100%
                }

            .comment-list .user .name {
                box-flex: 1;
                -webkit-box-flex: 1;
                font-size: .28rem;
                color: rgba(0,0,0,.8)
            }

                .comment-list .user .name span {
                    display: block
                }

                    .comment-list .user .name span.date {
                        margin-top: .05rem;
                        font-size: .2rem;
                        color: rgba(0,0,0,.4)
                    }

            .comment-list .user .zan {
                position: relative;
                background: url(/component/comment/images/love_51c21d8.png) no-repeat 0 center;
                background-size: auto 100%;
                width: 1rem;
                height: .34rem
            }

                .comment-list .user .zan span {
                    position: absolute;
                    top: 50%;
                    right: .08rem;
                    transform: translate3d(0,-50%,0);
                    -webkit-transform: translate3d(0,-50%,0);
                    color: #ff6b00;
                    font-size: .2rem
                }

        .comment-list .content > .textbox {
            padding: .12rem 0;
            line-height: .48rem;
            font-size: .28rem;
            color: rgba(0,0,0,.86)
        }

        .comment-list .content > .photos {
            margin-bottom: .12rem
        }

            .comment-list .content > .photos.p1 img {
                height: 3rem;
                width: auto
            }

            .comment-list .content > .photos.p4 {
                width: 4rem
            }

            .comment-list .content > .photos img {
                height: 1.6rem;
                width: 1.6rem;
                max-width: 100%;
                margin: 0 .08rem .08rem 0;
                background-color: #eee;
                background-size: cover;
                background-position: center center
            }

        .comment-list .content > .date {
            font-size: .2rem;
            color: rgba(0,0,0,.4)
        }

        .comment-list .reply {
            padding: .16rem;
            line-height: .4rem;
            font-size: .24rem;
            color: rgba(0,0,0,.86);
            background: #f6f6f6
        }

            .comment-list .reply li {
                position: relative
            }

                .comment-list .reply li .avatar {
                    position: absolute;
                    left: 0;
                    top: 0;
                    width: .32rem;
                    height: .32rem;
                    border-radius: 100%;
                    overflow: hidden
                }

                    .comment-list .reply li .avatar img {
                        width: 100%
                    }

                .comment-list .reply li .tit {
                    color: rgba(255,87,18,.86)
                }

                .comment-list .reply li .textbox {
                    text-indent: .48rem
                }

                .comment-list .reply li.official .avatar {
                    background: url(/component/comment/images/mi-logo_518eb70.png) no-repeat center;
                    background-size: 100%
                }

                .comment-list .reply li.official .zan {
                    color: rgba(0,0,0,.54);
                    padding-left: .3rem;
                    margin-left: .08rem;
                    background: url(/component/comment/images/good_2301f37.png) no-repeat 0 30%;
                    background-size: auto 60%;
                    display: inline-block
                }

            .comment-list .reply .more {
                margin-top: .24rem;
                padding: .32rem 0 .16rem;
                border-top: 1px solid rgba(0,0,0,.1);
                text-align: center;
                font-size: .28rem;
                color: rgba(255,107,0,.8)
            }

        .comment-album {
            position: fixed;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            background: #000;
            z-index: 100000
        }

            .comment-album .comment-album-process {
                position: absolute;
                top: .5rem;
                left: 0;
                right: 0;
                color: #fff;
                text-align: center;
                z-index: 100;
                font-size: .24rem
            }

            .comment-album .comment-album-slider {
                overflow: hidden;
                position: relative;
                height: 100%
            }

                .comment-album .comment-album-slider .comment-album-swipe-wrap {
                    overflow: hidden;
                    height: 100%
                }

                    .comment-album .comment-album-slider .comment-album-swipe-wrap > div {
                        float: left;
                        position: relative;
                        overflow: hidden;
                        width: 7.2rem;
                        height: 100%
                    }

                        .comment-album .comment-album-slider .comment-album-swipe-wrap > div span {
                            position: absolute;
                            top: 50%;
                            left: 50%;
                            width: 100%;
                            transform: translate3d(-50%,-50%,0);
                            -webkit-transform: translate3d(-50%,-50%,0);
                            text-align: center
                        }

                        .comment-album .comment-album-slider .comment-album-swipe-wrap > div img {
                            max-width: 100%
                        }

                        .comment-album .comment-album-slider .comment-album-swipe-wrap > div .detail {
                            position: absolute;
                            bottom: 0;
                            left: 0;
                            right: 0;
                            padding: .32rem .16rem;
                            background: rgba(0,0,0,.5);
                            color: #fff
                        }

                .comment-album .comment-album-slider .comment-album-swipe-nav {
                    position: absolute;
                    bottom: .5em;
                    text-align: center;
                    width: 100%
                }

                    .comment-album .comment-album-slider .comment-album-swipe-nav span {
                        display: inline-block;
                        width: .8em;
                        height: .8em;
                        margin: 0 .4em;
                        border-radius: 100%;
                        background: #FFF;
                        opacity: .6;
                        box-shadow: 0 0 1px #ccc
                    }

                        .comment-album .comment-album-slider .comment-album-swipe-nav span.on {
                            opacity: .9;
                            background: #f8f8f8;
                            box-shadow: 0 0 2px #ccc
                        }
    </style>
    <style type="text/css">
        @-webkit-keyframes bouncedelay {
            0%,80%,100% {
                -webkit-transform: scale(0)
            }

            40% {
                -webkit-transform: scale(1)
            }
        }

        @keyframes bouncedelay {
            0%,80%,100% {
                transform: scale(0);
                -webkit-transform: scale(0)
            }

            40% {
                transform: scale(1);
                -webkit-transform: scale(1)
            }
        }

        .product-video {
            position: relative;
            background: #000
        }

        .horizontal-flex {
            display: -webkit-box;
            -webkit-box-orient: horizontal;
            -webkit-box-pack: center;
            -webkit-box-align: center;
            display: -webkit-flex;
            -webkit-align-items: center;
            -webkit-justify-content: center;
            -webkit-flex-direction: row;
            display: flex;
            align-items: center;
            justify-content: center;
            -webkit-flex-direction: row
        }

        .vertical-flex {
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-box-pack: center;
            -webkit-box-align: center;
            display: -webkit-flex;
            -webkit-align-items: center;
            -webkit-justify-content: center;
            -webkit-flex-direction: column;
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column
        }

        .mi-video-player {
            position: absolute;
            top: 50%;
            transform: translate3d(0,-50%,0);
            -webkit-transform: translate3d(0,-50%,0);
            width: 100%;
            min-height: 3.6rem;
            background: #000
        }

        .mi-video-wrapper {
            position: relative;
            width: 7.2rem;
            min-height: 4.05rem;
            overflow: hidden;
            color: #fff;
            user-select: none;
            -webkit-font-smoothing: antialiased;
            -webkit-tap-highlight-color: rgba(0,0,0,0);
            -webkit-touch-callout: none
        }

            .mi-video-wrapper button {
                position: relative;
                cursor: pointer;
                background: 0 0;
                border: 0;
                -webkit-appearance: none;
                color: #fff;
                font-size: .2rem
            }

                .mi-video-wrapper button .mi-btn-text {
                    color: #fff;
                    font-size: .2rem;
                    line-height: 15px;
                    margin: 0 0 0 10px;
                    display: inline-block
                }

        .mi-controls-mask {
            position: absolute;
            z-index: 3;
            left: 0;
            bottom: 0;
            width: 100%;
            height: 30%;
            background-image: -webkit-linear-gradient(bottom,rgba(3,0,0,.6) 0,rgba(0,0,0,0) 100%);
            opacity: 1;
            transition: opacity .15s ease-out;
            pointer-events: none
        }

        .mi-overlayer-loading, .mi-overlayer-error, .mi-overlayer-play {
            position: absolute;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
            z-index: 5
        }

        .mi-icon {
            display: inline-block;
            fill: #fff
        }

        .mi-icon-text {
            display: inline;
            color: #fff
        }

        .mi-icon-spinner {
            width: 70px;
            height: 0;
            text-align: center;
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            margin: auto
        }

            .mi-icon-spinner > div {
                width: 10px;
                height: 10px;
                background-color: #fff;
                border-radius: 100%;
                display: inline-block;
                margin: 0 4px;
                -webkit-animation: bouncedelay 1.4s infinite ease-in-out;
                animation: bouncedelay 1.4s infinite ease-in-out;
                -webkit-animation-fill-mode: both;
                animation-fill-mode: both
            }

            .mi-icon-spinner .bounce1 {
                -webkit-animation-delay: -.32s;
                animation-delay: -.32s
            }

            .mi-icon-spinner .bounce2 {
                -webkit-animation-delay: -.16s;
                animation-delay: -.16s
            }

        .mi-overlayer-play {
            z-index: 4
        }

            .mi-overlayer-play .mi-video-play-btn {
                width: 100%;
                height: 100%;
                pointer-events: auto
            }

                .mi-overlayer-play .mi-video-play-btn .mi-icon-play-lg {
                    width: 100%;
                    height: 100%
                }

            .mi-overlayer-play .mi-video-replay-btn {
                display: inline-block;
                padding: 0 22px 0 40px;
                line-height: 40px;
                text-align: center;
                background-color: rgba(59,59,59,.95);
                border-radius: 99em;
                pointer-events: auto;
                position: relative
            }

                .mi-overlayer-play .mi-video-replay-btn .mi-icon-replay {
                    position: absolute;
                    top: 50%;
                    left: 32px;
                    transform: translate(0,-50%);
                    width: 15px;
                    height: 15px
                }

        .mi-overlayer-error {
            z-index: 6;
            background: rgba(0,0,0,.75)
        }

            .mi-overlayer-error .error-text {
                font-size: .24rem;
                margin: .2rem 0;
                text-align: center
            }

        .mi-video-box {
            position: absolute;
            width: 100%;
            height: 100%;
            overflow: hidden
        }

            .mi-video-box video {
                width: 100%;
                height: 100%
            }

        .mi-controls-box {
            position: absolute;
            z-index: 2147483648;
            bottom: 0;
            left: 0;
            width: 100%;
            height: 40px;
            overflow: hidden;
            visibility: visible;
            display: -webkit-box;
            -webkit-box-orient: horizontal;
            -webkit-box-pack: center;
            -webkit-box-align: center;
            background: rgba(0,0,0,.6)
        }

            .mi-controls-box .mi-controls-left, .mi-controls-box .mi-controls-right {
                position: relative;
                float: left;
                height: 100%;
                min-width: 30px
            }

            .mi-controls-box .mi-controls-play-btn {
                width: 60px;
                height: 100%;
                border: 0;
                text-align: center;
                -webkit-box-flex: 0
            }

                .mi-controls-box .mi-controls-play-btn .mi-icon-play {
                    display: block;
                    width: 30px;
                    height: 30px;
                    fill: #fff
                }

            .mi-controls-box .mi-controls-time-box {
                height: 100%;
                padding: 4px 8px 0;
                white-space: nowrap;
                font-size: 9px;
                -webkit-box-flex: 0;
                display: -webkit-box;
                -webkit-box-pack: center;
                -webkit-box-orient: vertical
            }

                .mi-controls-box .mi-controls-time-box > div {
                    display: inline
                }

                .mi-controls-box .mi-controls-time-box span {
                    margin: 0 1px
                }

            .mi-controls-box .mi-controls-fullscreen-btn {
                position: relative;
                width: 55px;
                height: 44px;
                color: #fff;
                white-space: nowrap
            }

            .mi-controls-box .mi-controls-progress-box {
                position: relative;
                height: 100%;
                padding: 0;
                vertical-align: top;
                -webkit-box-flex: 1;
                margin-left: 10px
            }

                .mi-controls-box .mi-controls-progress-box .mi-controls-progress-bar, .mi-controls-box .mi-controls-progress-box .mi-controls-progress-played, .mi-controls-box .mi-controls-progress-box .mi-controls-progress-loaded {
                    position: absolute;
                    left: 0;
                    top: 21px;
                    width: 100%;
                    height: 2px;
                    background-color: rgba(92,92,92,.6);
                    overflow: hidden
                }

                .mi-controls-box .mi-controls-progress-box .mi-controls-progress-played {
                    top: 0;
                    background-color: #fff;
                    z-index: 2
                }

                .mi-controls-box .mi-controls-progress-box .mi-controls-progress-loaded {
                    top: 0;
                    background-color: silver;
                    z-index: 1
                }

                .mi-controls-box .mi-controls-progress-box .mi-controls-progress-vernier {
                    position: absolute;
                    width: 30px;
                    height: 40px;
                    margin-left: -10px;
                    z-index: 3
                }

                .mi-controls-box .mi-controls-progress-box .mi-controls-progress-pointer {
                    position: absolute;
                    top: 16px;
                    left: 10px;
                    width: 10px;
                    height: 10px;
                    border-radius: 99em;
                    background-color: #fff
                }

                    .mi-controls-box .mi-controls-progress-box .mi-controls-progress-pointer:after {
                        content: '';
                        position: absolute;
                        left: -4px;
                        top: -4px;
                        width: 18px;
                        height: 18px;
                        background-color: #fff;
                        opacity: .4;
                        border-radius: 99em
                    }

            .mi-controls-box .mi-icon-fullscreen {
                display: block;
                width: 30px;
                height: 30px;
                margin: auto
            }

        ::-webkit-media-controls {
            display: none !important
        }

        video::-webkit-media-controls {
            display: none !important
        }

        video::-webkit-media-controls-enclosure {
            display: none !important
        }

        .fade-enter-active, .fade-leave-active {
            transition: opacity .5s ease
        }

        .fade-enter {
            opacity: 1
        }

        .fade-leave-to {
            opacity: 0
        }

        .mi-video-list {
            position: relative;
            padding: 0 .32rem
        }

            .mi-video-list > div {
                position: relative;
                width: 100%;
                overflow-x: visible;
                white-space: nowrap;
                padding: .48rem 0;
                box-sizing: border-box;
                transition: transform .3s ease-out
            }

                .mi-video-list > div .mi-video-li {
                    position: relative;
                    display: inline-block;
                    width: 2.54rem;
                    height: 1.46rem;
                    border: 1px solid rgba(255,255,255,.2);
                    margin-right: .16rem;
                    box-sizing: border-box
                }

                    .mi-video-list > div .mi-video-li:last-child {
                        margin-right: 0
                    }

                    .mi-video-list > div .mi-video-li.mi-video-active {
                        border-color: #fff
                    }

                        .mi-video-list > div .mi-video-li.mi-video-active::before {
                            content: "";
                            position: absolute;
                            top: 0;
                            left: 50%;
                            width: 0;
                            height: 0;
                            border: 8px solid transparent;
                            border-bottom: 8px solid #fff;
                            transform: translate3d(-50%,-100%,0);
                            -webkit-transform: translate3d(-50%,-100%,0)
                        }

                        .mi-video-list > div .mi-video-li.mi-video-active .mi-video-list-title {
                            color: #fff
                        }

                    .mi-video-list > div .mi-video-li .mi-video-list-title {
                        position: absolute;
                        top: 50%;
                        left: 50%;
                        transform: translate3d(-50%,-50%,0);
                        -webkit-transform: translate3d(-50%,-50%,0);
                        color: rgba(255,255,255,.54);
                        font-size: .24rem
                    }

                    .mi-video-list > div .mi-video-li img {
                        width: 100% !important;
                        height: 100% !important
                    }
    </style>
    <script>!function (t, e) { "object" == typeof exports ? module.exports = e() : "function" == typeof define && define.amd ? define(e) : t.Spinner = e() }(this, function () { "use strict"; function t(t, e) { var i, o = document.createElement(t || "div"); for (i in e) o[i] = e[i]; return o } function e(t) { for (var e = 1, i = arguments.length; i > e; e++)t.appendChild(arguments[e]); return t } function i(t, e, i, o) { var n = ["opacity", e, ~~(100 * t), i, o].join("-"), r = .01 + i / o * 100, s = Math.max(1 - (1 - t) / e * (100 - r), t), a = c.substring(0, c.indexOf("Animation")).toLowerCase(), l = a && "-" + a + "-" || ""; return p[n] || (u.insertRule("@" + l + "keyframes " + n + "{0%{opacity:" + s + "}" + r + "%{opacity:" + t + "}" + (r + .01) + "%{opacity:1}" + (r + e) % 100 + "%{opacity:" + t + "}100%{opacity:" + s + "}}", u.cssRules.length), p[n] = 1), n } function o(t, e) { var i, o, n = t.style; for (e = e.charAt(0).toUpperCase() + e.slice(1), o = 0; o < d.length; o++)if (i = d[o] + e, void 0 !== n[i]) return i; return void 0 !== n[e] ? e : void 0 } function n(t, e) { for (var i in e) t.style[o(t, i) || i] = e[i]; return t } function r(t) { for (var e = 1; e < arguments.length; e++) { var i = arguments[e]; for (var o in i) void 0 === t[o] && (t[o] = i[o]) } return t } function s(t, e) { return "string" == typeof t ? t : t[e % t.length] } function a(t) { this.opts = r(t || {}, a.defaults, f) } function l() { function i(e, i) { return t("<" + e + ' xmlns="urn:schemas-microsoft.com:vml" class="spin-vml">', i) } u.addRule(".spin-vml", "behavior:url(#default#VML)"), a.prototype.lines = function (t, o) { function r() { return n(i("group", { coordsize: d + " " + d, coordorigin: -c + " " + -c }), { width: d, height: d }) } function a(t, a, l) { e(u, e(n(r(), { rotation: 360 / o.lines * t + "deg", left: ~~a }), e(n(i("roundrect", { arcsize: o.corners }), { width: c, height: o.width, left: o.radius, top: -o.width >> 1, filter: l }), i("fill", { color: s(o.color, t), opacity: o.opacity }), i("stroke", { opacity: 0 })))) } var l, c = o.length + o.width, d = 2 * c, p = 2 * -(o.width + o.length) + "px", u = n(r(), { position: "absolute", top: p, left: p }); if (o.shadow) for (l = 1; l <= o.lines; l++)a(l, -2, "progid:DXImageTransform.Microsoft.Blur(pixelradius=2,makeshadow=1,shadowopacity=.3)"); for (l = 1; l <= o.lines; l++)a(l); return e(t, u) }, a.prototype.opacity = function (t, e, i, o) { var n = t.firstChild; o = o.shadow && o.lines || 0, n && e + o < n.childNodes.length && (n = n.childNodes[e + o], n = n && n.firstChild, n = n && n.firstChild, n && (n.opacity = i)) } } var c, d = ["webkit", "Moz", "ms", "O"], p = {}, u = function () { var i = t("style", { type: "text/css" }); return e(document.getElementsByTagName("head")[0], i), i.sheet || i.styleSheet }(), f = { lines: 11, length: 8, width: 4, radius: 10, rotate: 0, corners: 1, color: "#000", direction: 1, speed: 3, trail: 60, opacity: .25, fps: 20, zIndex: 2e9, className: "spinner", top: "50%", left: "50%", position: "absolute" }; a.defaults = {}, r(a.prototype, { spin: function (e) { this.stop(); { var i = this, o = i.opts, r = i.el = n(t(0, { className: o.className }), { position: o.position, width: 0, zIndex: o.zIndex }); o.radius + o.length + o.width } if (n(r, { left: o.left, top: o.top }), e && e.insertBefore(r, e.firstChild || null), r.setAttribute("role", "progressbar"), i.lines(r, i.opts), !c) { var s, a = 0, l = (o.lines - 1) * (1 - o.direction) / 2, d = o.fps, p = d / o.speed, u = (1 - o.opacity) / (p * o.trail / 100), f = p / o.lines; !function h() { a++; for (var t = 0; t < o.lines; t++)s = Math.max(1 - (a + (o.lines - t) * f) % p * u, o.opacity), i.opacity(r, t * o.direction + l, s, o); i.timeout = i.el && setTimeout(h, ~~(1e3 / d)) }() } return i }, stop: function () { var t = this.el; return t && (clearTimeout(this.timeout), t.parentNode && t.parentNode.removeChild(t), this.el = void 0), this }, lines: function (o, r) { function a(e, i) { return n(t(), { position: "absolute", width: r.length + r.width + "px", height: r.width + "px", background: e, boxShadow: i, transformOrigin: "left", transform: "rotate(" + ~~(360 / r.lines * d + r.rotate) + "deg) translate(" + r.radius + "px,0)", borderRadius: (r.corners * r.width >> 1) + "px" }) } for (var l, d = 0, p = (r.lines - 1) * (1 - r.direction) / 2; d < r.lines; d++)l = n(t(), { position: "absolute", top: 1 + ~(r.width / 2) + "px", transform: r.hwaccel ? "translate3d(0,0,0)" : "", opacity: r.opacity, animation: c && i(r.opacity, r.trail, p + d * r.direction, r.lines) + " " + 1 / r.speed + "s linear infinite" }), r.shadow && e(l, n(a("#000", "0 0 4px #000"), { top: "2px" })), e(o, e(l, a(s(r.color, d), "0 0 1px rgba(0,0,0,.1)"))); return o }, opacity: function (t, e, i) { e < t.childNodes.length && (t.childNodes[e].style.opacity = i) } }); var h = n(t("group"), { behavior: "url(#default#VML)" }); return !o(h, "transform") && h.adj ? l() : c = o(h, "animation"), a });</script>
    <script>!function (n) { var e = n.document, t = e.documentElement, i = 720, d = i / 100, o = "orientationchange" in n ? "orientationchange" : "resize", a = function () { var n = t.clientWidth || 320; n > 720 && (n = 720), t.style.fontSize = n / d + "px" }; e.addEventListener && (n.addEventListener(o, a, !1), e.addEventListener("DOMContentLoaded", a, !1)) }(window);</script>
    
</head>
<body>
    <div id="wrapper">
        <div class="page-product-view" data-log="商品详情">
            <div class="bt_mask">
                <div class="bt_panel">
                    <p class="tit"></p>
                    <p class="tips"></p>
                    <img src="./内容页/close_bafbb92.png" class="bt_close"></div>
            </div>
            <div class="product-view">
                <div class="fixed-header">
                    <div class="left"><a title="小米商城" data-log="HEAD-首页" class="home" data-stat-id="39235ac2dc88b00a" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-39235ac2dc88b00a&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <img src="./内容页/icon_back_n.png" style="display: none" class="bgcicon ib"><img src="./内容页/back_48bef14.png" class="bgcicon2 ib"></a></div>
                    <div class="tit">
                        <!--vue-if-->
                    </div>
                    <div class="right"><a data-event="30000000110001001" data-stat-id="39235ac2dc88b00a" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-39235ac2dc88b00a&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div style="display: none" class="icon icon-search"></div>
                        <img src="./内容页/share_18c55d7.png" class="search ib"></a></div>
                    <div class="share-component">
                        <!--vue-if-->
                        <!--vue-if-->
                        <!--vue-if-->
                    </div>
                </div>
                <div id="slider" class="slider" style="visibility: visible;">
                    <div class="swipe-wrap" style="width: 1280px;">
                        <!--vue-if-->
                        <div data-index="0" style="width: 320px; left: 0px; transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);"><a data-stat-id="946baff7a967a35e" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-946baff7a967a35e&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);"><span class="imgurl">
                            <img src="./内容页/6cf6ba32-4311-f155-9c3b-08e4555c4f6a.webp"></span></a></div>
                        <div data-index="1" style="width: 320px; left: -320px; transition-duration: 0ms; transform: translate(320px, 0px) translateZ(0px);"><a data-stat-id="946baff7a967a35e" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-946baff7a967a35e&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);"><span class="imgurl">
                            <img src="./内容页/c7a954a9-75eb-09e6-6a74-931efc7d35f6.webp"></span></a></div>
                        <div data-index="2" style="width: 320px; left: -640px; transition-duration: 0ms; transform: translate(320px, 0px) translateZ(0px);"><a data-stat-id="946baff7a967a35e" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-946baff7a967a35e&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);"><span class="imgurl">
                            <img src="./内容页/7dff9bd7-7afe-e2dc-f927-e4638c6978c3.webp"></span></a></div>
                        <div data-index="3" style="width: 320px; left: -960px; transition-duration: 0ms; transform: translate(-320px, 0px) translateZ(0px);"><a data-stat-id="946baff7a967a35e" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-946baff7a967a35e&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);"><span class="imgurl">
                            <img src="./内容页/8b0d5b7b-01bd-7660-e999-67ee106c50df.webp"></span></a></div>
                        <!--v-repeat-gallery_img-->
                    </div>
                    <div class="swipe-nav ui-box">
                        <!--vue-if-->
                        <span class="ui-box-flex on">&nbsp;</span><span class="ui-box-flex">&nbsp;</span><span class="ui-box-flex">&nbsp;</span><span class="ui-box-flex">&nbsp;</span><!--v-repeat-gallery_img--></div>
                    <!--vue-if-->
                </div>
                <!--vue-if-->
                <div class="titleView">
                    <!--vue-if-->
                    <!--vue-if-->
                    <div class="name">
                        <!--vue-if-->
                        红米Note 4X</div>
                    <div class="product_desc">多彩金属 / 4100mAh 超长续航 / 5.5"全高清屏</div>
                    <div class="priceBox bb">
                        <div class="price">999</div>
                        <!--vue-if-->
                        <!--vue-if-->
                        <!--vue-if-->
                    </div>
                    <!--vue-if-->
                </div>
                <!--vue-if-->
                <div class="liveView J_linksign-customize bb" style="display: none;">
                    <div class="ui-box" data-stat-id="ba92415021014dcb" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-ba92415021014dcb&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="live-left ui-box-flex">
                            <p class="p1"></p>
                            <p class="p2"></p>
                            <div class="picon">
                                <img src="./内容页/liveicon_0b5c943.png" class="icon"></div>
                        </div>
                        <div class="liveright" style="display: none;">
                            <img></div>
                    </div>
                </div>
                <!--vue-if-->
                <div class="productActive J_linksign-customize bb">
                    <div class="div more flex-row-left">
                        <div class="mr4x max-width2 title">促销</div>
                        <div class="cicon-info ui-box-flex flex-row-justify">
                            <div class="cicon-text">可分期</div>
                            <!--vue-if-->
                            <div class="active_desc"></div>
                            <!--vue-if-->
                        </div>
                    </div>
                    <div class="div more flex-row-left" style="display: none;">
                        <div class="mr4x max-width2 title">促销</div>
                        <div class="cicon-info ui-box-flex flex-row-justify">
                            <div class="cicon-text">可分期</div>
                            <!--vue-if-->
                            <div class="active_desc"></div>
                            <!--vue-if-->
                        </div>
                    </div>
                    <!--v-repeat-productActive-->
                </div>
                <!--vue-if-->
                <div class="ui-line"></div>
                <div class="attrsQaView J_linksign-customize bb">
                    <div class="div more flex-row-left" data-stat-id="dd04335e19ee764e" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-dd04335e19ee764e&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="mr4x max-width2 has">已选</div>
                        <div class="ui-box-flex">
                            <div class="productInfo">红米Note 4X 全网通版 香槟金 32GB x1</div>
                            <!--vue-if-->
                        </div>
                    </div>
                    <div class="div more" data-stat-id="024abcb2dd78750b" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-024abcb2dd78750b&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);" style="display: none;">
                        <p class="has">请选择版本</p>
                    </div>
                </div>
                <div class="address J_linksign-customize bb">
                    <div class="hasPermission more flex-row-left">
                        <div class="mr4x max-width2 has">送至</div>
                        <div class="ui-box-flex">
                            <div class="active_desc"><span>北京北京市东城区永定门外街道</span></div>
                            <div class="active_desc mt2x">
                                <div class="on ib">有现货</div>
                            </div>
                            <div class="active_desc mt2x" style="display: none;">
                                <div class="on ib">有现货</div>
                                <!--vue-if-->
                                <!--vue-if-->
                            </div>
                            <!--v-repeat-delivery.datas-->
                        </div>
                    </div>
                    <!--vue-if-->
                </div>
                <!--vue-if-->
                <div class="descdescdesc J_linksign-customize bb">
                    <div class="flex-row-left" data-stat-id="1729ae1b8b081dea" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-1729ae1b8b081dea&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div style="visibility: hidden" class="mr4x max-width2 has">送至</div>
                        <div class="ui-box-flex flex-row-left">
                            <img src="./内容页/icon_dui_b333f13.png" class="img-icon mr1x"><img src="./内容页/icon_tan_3c690ff.png" class="img-icon mr1x" style="display: none;"><p class="fsc1">支持7天无理由退货</p>
                        </div>
                    </div>
                </div>
                <!--vue-if-->
                <div class="ui-line"></div>
                <!--vue-if-->
                <div class="commentView">
                    <a href="https://m.mi.com/#/comment/index/?product_id=10000029" data-stat-id="299b51d406bbca11" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-299b51d406bbca11&#39;, &#39;/#/comment/index/product_id=10000029&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="header-comment flex-row-justify more">
                            <div class="left">用户评价(59851)</div>
                            <div class="right org">97.2% 满意</div>
                            <!--vue-if-->
                        </div>
                    </a><a data-stat-id="4bb547d10863ce8f" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-4bb547d10863ce8f&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="comment">
                            <div class="comment-loading" style="display: none;">
                                <div class="comment-loading-anim">
                                    <div class="spinner" role="progressbar" style="position: absolute; width: 0px; z-index: 2000000000; left: 50%; top: 50%;">
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-0-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(0deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-1-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(32deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-2-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(65deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-3-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(98deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-4-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(130deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-5-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(163deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-6-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(196deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-7-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(229deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-8-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(261deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-9-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(294deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-10-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(327deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="comment-list">
                                <div class="page">
                                    <div class="item">
                                        <div class="user">
                                            <div class="img">
                                                <img src="./内容页/52cc4721e1eaed5af47af693906205c8.jpg"></div>
                                            <div class="name"><span>李昌澔</span><span class="date" style="display: none;">2017-06-04</span></div>
                                            <div class="zan"><span>超爱</span></div>
                                        </div>
                                        <div class="content">
                                            <div class="textbox">速度可以，只不过买了，客服妹子可即兴作诗一首，题目是，“兄弟一生就一世”</div>
                                            <div class="photos p1">
                                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAAyRpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvIiB4bWxuczp4bXBNTT0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL21tLyIgeG1sbnM6c3RSZWY9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9zVHlwZS9SZXNvdXJjZVJlZiMiIHhtcDpDcmVhdG9yVG9vbD0iQWRvYmUgUGhvdG9zaG9wIENTNiAoTWFjaW50b3NoKSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDoxMDdBNDFDMkY3MUExMUU2QTAwQ0M4NDQyQjk2NDE5NiIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDoxMDdBNDFDM0Y3MUExMUU2QTAwQ0M4NDQyQjk2NDE5NiI+IDx4bXBNTTpEZXJpdmVkRnJvbSBzdFJlZjppbnN0YW5jZUlEPSJ4bXAuaWlkOjEwN0E0MUMwRjcxQTExRTZBMDBDQzg0NDJCOTY0MTk2IiBzdFJlZjpkb2N1bWVudElEPSJ4bXAuZGlkOjEwN0E0MUMxRjcxQTExRTZBMDBDQzg0NDJCOTY0MTk2Ii8+IDwvcmRmOkRlc2NyaXB0aW9uPiA8L3JkZjpSREY+IDwveDp4bXBtZXRhPiA8P3hwYWNrZXQgZW5kPSJyIj8+3lExGwAAABpJREFUeNpi/P//PwMxgImBSDCqkDoKAQIMANUSAxFqvpFcAAAAAElFTkSuQmCC" class="lazy" data-src="//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/c473ce50e84fcba47f6eccfe89778f13.webp" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1); background-image: url(&quot;//cdn.cnbj0.fds.api.mi-img.com/b2c-data-mishop/c473ce50e84fcba47f6eccfe89778f13.webp&quot;);"><!--v-repeat-comment_images--></div>
                                            <!--vue-if-->
                                        </div>
                                        <div class="reply">
                                            <ul>
                                                <li class="official">
                                                    <div class="avatar"></div>
                                                    <div class="textbox">
                                                        <span class="tit">官方回复：
        </span>兄事肩随四十年，
弟应兄呼成活业。
一声敲彻绛河秋，
生亦岂责绛灌知。
就中年少无蹔歇，
一声敲彻绛河秋。
世宁清静验如然，感谢您对小米的支持。
                                                    </div>
                                                </li>
                                            </ul>
                                            <!--vue-if-->
                                            <ul>
                                                <!--v-repeat-user_replys-->
                                            </ul>
                                            <!--vue-if-->
                                        </div>
                                        <!--vue-if-->
                                    </div>
                                    <!--v-repeat-$value-->
                                </div>
                                <!--v-repeat-list-->
                            </div>
                            <!--vue-if-->
                            <div class="comment-loading" style="display: none;">
                                <div style="height: 0.8rem" class="comment-loading-more">
                                    <div class="spinner" role="progressbar" style="position: absolute; width: 0px; z-index: 2000000000; left: 50%; top: 50%;">
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-0-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(0deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-1-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(32deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-2-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(65deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-3-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(98deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-4-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(130deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-5-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(163deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-6-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(196deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-7-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(229deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-8-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(261deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-9-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(294deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                        <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-10-11 0.333333s linear infinite;">
                                            <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(327deg) translate(10px, 0px); border-radius: 2px;"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="comment-album" style="display: none;">
                                <div class="comment-album-slider">
                                    <div class="comment-album-swipe-wrap">
                                        <!--v-repeat-album-->
                                    </div>
                                    <div class="comment-album-swipe-nav"></div>
                                </div>
                                <div class="comment-album-process">1 / 0</div>
                            </div>
                        </div>
                        <!--vue-if-->
                    </a>
                </div>
                <!--vue-if-->
                <div class="descTabsView"><a id="anchor" name="tabsAnchor" data-stat-id="212272cb863e3bfa" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-212272cb863e3bfa&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);"></a>
                    <ul id="tabs" class="tabs flex-row">
                        <li class="tab on"><a data-stat-id="ce94de547d601d2f" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-ce94de547d601d2f&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">概述</a></li>
                        <li class="tab"><a data-stat-id="3d190e368c9aa873" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-3d190e368c9aa873&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">参数</a></li>
                        <li class="tab"><a data-stat-id="fd9eb6a2fae8417f" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-fd9eb6a2fae8417f&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">意外险</a></li>
                        <!--v-repeat-descTabsView-->
                    </ul>
                    <div class="tabs-views">
                        <div class="views">
                            <ul>
                                <li>
                                    <div style="display: none;">
                                        <div class="img">
                                            <img class="lazy" data-original="//i8.mifile.cn/v1/a1/43e08d8c-aec3-4ef6-7a4d-d48431640840!540x540.jpg"></div>
                                        <!--vue-if-->
                                        <!--vue-if-->
                                    </div>
                                    <!--vue-if-->
                                </li>
                                <li>
                                    <div style="display: none;">
                                        <div class="img">
                                            <img class="lazy" data-original="//i8.mifile.cn/v1/a1/2ad5f523-d067-17b5-8711-fe13ba27d7f0!540x540.jpg"></div>
                                        <!--vue-if-->
                                        <!--vue-if-->
                                    </div>
                                    <!--vue-if-->
                                </li>
                                <!--v-repeat-tabContent-->
                            </ul>
                        </div>
                        <div class="views" style="display: none;">
                            <ul>
                                <li>
                                    <div style="display: none;">
                                        <div class="img">
                                            <img class="lazy" data-original="//i8.mifile.cn/v1/a1/dff45872-7dc7-4110-c545-5abde13ab6c4!540x540.jpg"></div>
                                    </div>
                                    <!--vue-if-->
                                </li>
                                <li>
                                    <div style="display: none;">
                                        <div class="img">
                                            <img class="lazy" data-original="//i8.mifile.cn/v1/a1/58d6bea8-2c45-8b5d-c092-90a56485bd78!540x540.jpg"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="views" style="display: none;">
                            <ul>
                                <li>
                                    <div>
                                        <div class="img">
                                            <img class="lazy" data-original="//i8.mifile.cn/v1/a1/5e229e5e-a9b4-99e5-d74b-7b3a9e745211!540x540.png"></div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <a class="showAllBtn" data-stat-id="157f50093ddcddab" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-157f50093ddcddab&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">查看全部图文详情 &gt;</a><!--vue-if--></div>
                </div>
                <div id="recommendWrap" class="recommendWrap">
                    <div class="list-recommend">
                        <div class="recommend-loading" style="display: none;">
                            <div class="recommend-loading-anim">
                                <div class="spinner" role="progressbar" style="position: absolute; width: 0px; z-index: 2000000000; left: 50%; top: 50%;">
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-0-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(0deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-1-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(32deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-2-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(65deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-3-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(98deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-4-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(130deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-5-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(163deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-6-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(196deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-7-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(229deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-8-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(261deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-9-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(294deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                    <div style="position: absolute; top: -2px; opacity: 0.25; animation: opacity-60-25-10-11 0.333333s linear infinite;">
                                        <div style="position: absolute; width: 12px; height: 4px; background: rgb(0, 0, 0); box-shadow: rgba(0, 0, 0, 0.1) 0px 0px 1px; transform-origin: left center 0px; transform: rotate(327deg) translate(10px, 0px); border-radius: 2px;"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div>
                            <div class="recommend-title">为你推荐</div>
                            <!--vue-if-->
                            <div class="recommend-list">
                                <ul>
                                    <li class="J_linksign-customize"><a class="exposure" data-log_code="recom_product_10-0#eid=24:13:0:0:0:0:0:0:0:5206&amp;tid=DetailPageRec-78cpaAwFqwUTL0eVFuqCzg==&amp;page=product&amp;pid=5495" href="https://m.mi.com/#/product/view?product_id=5495">
                                        <div class="img">
                                            <img class="lazy" data-src="//i8.mifile.cn/v1/a1/fb4f9754-0164-b2a1-59b9-8ad995cee0ac.webp?width=720&amp;height=720"><!--vue-if--></div>
                                        <div class="recommend-info">
                                            <div class="recommend-name">红米Note 4X</div>
                                            <div class="recommend-price">1299
                                                <!--vue-if-->
                                            </div>
                                        </div>
                                    </a></li>
                                    <li class="J_linksign-customize"><a class="exposure" data-log_code="recom_product_10-1#eid=24:13:0:0:0:0:0:0:0:5206&amp;tid=DetailPageRec-78cpaAwFqwUTL0eVFuqCzg==&amp;page=product&amp;pid=10000030" href="https://m.mi.com/#/product/view?product_id=10000030">
                                        <div class="img">
                                            <img class="lazy" data-src="//i8.mifile.cn/v1/a1/f444a1cc-1bde-a410-a53f-35b02d183963.webp?width=720&amp;height=720"><!--vue-if--></div>
                                        <div class="recommend-info">
                                            <div class="recommend-name">小米5c</div>
                                            <div class="recommend-price">1299 <s class="old">￥1499</s><!--vue-if--></div>
                                        </div>
                                    </a></li>
                                    <li class="J_linksign-customize"><a class="exposure" data-log_code="recom_product_10-2#eid=24:13:0:0:0:0:0:0:0:5206&amp;tid=DetailPageRec-78cpaAwFqwUTL0eVFuqCzg==&amp;page=product&amp;pid=10000031" href="https://m.mi.com/#/product/view?product_id=10000031">
                                        <div class="img">
                                            <img class="lazy" data-src="//i8.mifile.cn/v1/a1/a78858e2-d800-4357-a8c0-ad7ef45d0a10.webp?width=720&amp;height=720"><!--vue-if--></div>
                                        <div class="recommend-info">
                                            <div class="recommend-name">红米4X</div>
                                            <div class="recommend-price">699
                                                <!--vue-if-->
                                            </div>
                                        </div>
                                    </a></li>
                                    <li class="J_linksign-customize"><a class="exposure" data-log_code="recom_product_10-3#eid=24:13:0:0:0:0:0:0:0:5206&amp;tid=DetailPageRec-78cpaAwFqwUTL0eVFuqCzg==&amp;page=product&amp;pid=10000057" href="https://m.mi.com/#/product/view?product_id=10000057">
                                        <div class="img">
                                            <img class="lazy" data-src="//i8.mifile.cn/v1/a1/c6974a87-b451-232d-870e-692594431a6a.webp?width=720&amp;height=720"><!--vue-if--></div>
                                        <div class="recommend-info">
                                            <div class="recommend-name">小米Max 2</div>
                                            <div class="recommend-price">1699
                                                <!--vue-if-->
                                            </div>
                                        </div>
                                    </a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="product-footer ui-box"><a href="https://m.mi.com/#/index" class="br" data-stat-id="e5a062731967d7ac" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-e5a062731967d7ac&#39;, &#39;/#/index&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                    <div class="home icon-home"></div>
                    <div class="p">首页</div>
                </a><a href="https://m.mi.com/#/cart/index" data-stat-id="b4f908d1d69b3232" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-b4f908d1d69b3232&#39;, &#39;/#/cart/index&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                    <div class="cart icon-gouwuche"></div>
                    <div class="p">购物车</div>
                </a>
                    <div class="ui-box-flex buyNow">加入购物车</div>
                </div>
                <a href="javascript:;" id="top" data-stat-id="d14ab9df31249b38" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-d14ab9df31249b38&#39;, &#39;javascript:&#39;, &#39;pcpid&#39;, &#39;&#39;]);" style="visibility: hidden;">
                    <img src="./内容页/top_1a2bcd9.png"></a><div class="specMenu pop" style="display: none;">
                        <div class="content">
                            <div class="close"><span class="pop-icon-close"></span></div>
                            <div class="proInfo flex-row bb">
                                <div class="productImg">
                                    <img src="./内容页/c35ee0fb-cfed-fd28-e724-64eb07958fb9!540x540.jpg"></div>
                                <div class="proDesc flex-column">
                                    <div class="price">999</div>
                                    <!--vue-if-->
                                    <div class="desc">红米Note 4X 全网通版 香槟金 32GB</div>
                                </div>
                            </div>
                            <div class="maxH5">
                                <div class="specGroups">
                                    <div class="specTitle">版本<span style="display: none;">&nbsp;&nbsp; 请选择版本</span></div>
                                    <div class="specs flex-row bb">
                                        <div class="specItem flex-row on online">
                                            <div class="flex-row left">
                                                <!--vue-if-->
                                                <p>3GB内存+32GB容量</p>
                                            </div>
                                            <p class="right">999元</p>
                                            <!--vue-if-->
                                        </div>
                                        <div class="specItem flex-row online">
                                            <div class="flex-row left">
                                                <!--vue-if-->
                                                <p>4GB内存+64GB容量</p>
                                            </div>
                                            <p class="right">1299元</p>
                                            <!--vue-if-->
                                        </div>
                                        <!--v-repeat-bo.list-->
                                    </div>
                                </div>
                                <div class="specGroups">
                                    <div class="specTitle">颜色<span style="display: none;">&nbsp;&nbsp; 请选择颜色</span></div>
                                    <div class="specs flex-row bb">
                                        <div class="specItem flex-row on">
                                            <div class="flex-row">
                                                <!--vue-if-->
                                                <p>香槟金</p>
                                            </div>
                                            <!--vue-if-->
                                        </div>
                                        <div class="specItem flex-row">
                                            <div class="flex-row">
                                                <!--vue-if-->
                                                <p>铂银灰</p>
                                            </div>
                                            <!--vue-if-->
                                        </div>
                                        <div class="specItem flex-row">
                                            <div class="flex-row">
                                                <!--vue-if-->
                                                <p>磨砂黑</p>
                                            </div>
                                            <!--vue-if-->
                                        </div>
                                        <div class="specItem flex-row">
                                            <div class="flex-row">
                                                <!--vue-if-->
                                                <p>樱花粉</p>
                                            </div>
                                            <!--vue-if-->
                                        </div>
                                        <div class="specItem flex-row cos">
                                            <div class="flex-row">
                                                <!--vue-if-->
                                                <p>蓝绿色</p>
                                            </div>
                                            <!--vue-if-->
                                        </div>
                                        <!--v-repeat-bo.list-->
                                    </div>
                                </div>
                                <!--v-repeat-buy_option-->
                                <div class="specBuy flex-row bb">
                                    <div class="specTitle">购买数量</div>
                                    <div class="addNum">
                                        <div class="sub">
                                            <div class="input-sub off"></div>
                                        </div>
                                        <div class="num input-num">1</div>
                                        <div class="add">
                                            <div class="input-add"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="ywx">
                                    <div class="specTitle">意外保险</div>
                                    <div class="specs flex-row">
                                        <div class="specItem">
                                            <p>红米Note 4X&nbsp;意外保险  79元</p>
                                        </div>
                                        <!--v-repeat-curProduct.insurance.list-->
                                    </div>
                                </div>
                                <!--vue-if-->
                            </div>
                        </div>
                        <div class="btn flex-row">
                            <div class="submitNow">加入购物车</div>
                        </div>
                    </div>
            </div>
            <div class="popup-puzzle-captcha">
                <div class="ui-popup-layer" style="display: none;">
                    <div class="ui-popup-box">
                        <div class="tit">验证码</div>
                        <!--vue-if-->
                        <div class="status-bar ui-box">
                            <div class="ui-box-flex">
                                <div class="status" style="display: none;">验证中...</div>
                                <div class="status status-error" style="display: none;"></div>
                            </div>
                            <div class="refresh">
                                <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAACJ0lEQVRIS7XWy6uNYRQG8N9xvyb3AUoukUtKrqXESBRJjJCJiWKCkvwHZGDExEwGEgMT1EmEiVySDBiKI5xyODg6Lq3T2ruv3fn2hX1W7Xbf9z7veta73rWe9XWob2OwALMxHVMxDJ/wEW/xCl/L3HSULISTzViN0Q2C+IUnuI2+AnYZegYjmIvtmJLg2BRRduEL/mACZmA+JiauFzfwMtcOob+WINKxNzeEo3t4iO8lpxiO9diASGfYxUzhcfwsEszCwQRFfi8nsEGGBpbHYzfi9GGPsAq9RYKjedxuXKjJZzMkgdmJFQVw9Q42YWPm92zmulmngYsKC4uC2FcojAGCETiVgAe41YpnrMHWemW6BHviQnAm/1vhWJpVF4FGwP2ZifDxOl4Ee0TxAlda8VzARt+MHGRvXxBEzqKeo1Hu/yNB6bYgOJwScB1Ph4LgSHbtNTwbCoL9mJfVE1XUVosUbUtRe46rbfWeZbUcu/ADpxHq2DaLE4zCyfR4B/H7HwsVXpsS3lXRoi1Yl9FHs5WpZzPEx1LO76KzKHYnUnLf43yhG5txWsFUeiqez6G7SBBSeyCR73Cp3iisYY0uDrlZmO+rJV87cCoXHriYZHEfjxtI98pU4knp/GYOqYHHwUbmIuzAuNzwLXUqRmYPfufcmInFmJy4qL4YmTGfq1Y29MdmVHHxzVgoQCc+14LLCCq4iC7yOgfTCqeKKovJ9yY/CD6URfEXK45rW+H7DL4AAAAASUVORK5CYII=">刷新</div>
                        </div>
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAB4AAAAeBAMAAADJHrORAAAAA3NCSVQICAjb4U/gAAAAGFBMVEX////8/Pz5+fn4+PjR0dG/v7+ysrL///+aDWbOAAAACHRSTlP/////////AN6DvVkAAAAJcEhZcwAACxIAAAsSAdLdfvwAAAAcdEVYdFNvZnR3YXJlAEFkb2JlIEZpcmV3b3JrcyBDUzbovLKMAAAAhUlEQVQYlWWR0Q2AIAxEG1jBAYyJIzgAPw5AIhOg+4+gpZQe1YR45R7tEWhZyb6Q6MxQ75X224BQclvDZs8AsQzojgJq6H8cFGHnRMFgljiXNeb6iq1g7lAutD/gQftXe9718/NcHp/X3UfF0QEFo+xbIwGsTwPw3gxgDgam9zoqTe8Z0wtLNCTLkqXadwAAAABJRU5ErkJggg==" class="fk_close"></div>
                </div>
            </div>
            <div class="popup-risk-check">
            </div>
        </div>
    </div>
    <div id="info" style="display: none;"></div>
    <script src="./内容页/mod-store_dd2d846.js.下载"></script>
    <script>!function (e, t) { "use strict"; var i = function (e) { if ("object" != typeof e.document) throw new Error("Cookies.js requires a `window` with a `document` object"); var i = function (e, t, n) { return 1 === arguments.length ? i.get(e) : i.set(e, t, n) }; return i._document = e.document, i._cacheKeyPrefix = "cookey.", i._maxExpireDate = new Date("Fri, 31 Dec 9999 23:59:59 UTC"), i.defaults = { path: "/", secure: !1 }, i.get = function (e) { return i._cachedDocumentCookie !== i._document.cookie && i._renewCache(), i._cache[i._cacheKeyPrefix + e] }, i.set = function (e, n, o) { return o = i._getExtendedOptions(o), o.expires = i._getExpiresDate(n === t ? -1 : o.expires), i._document.cookie = i._generateCookieString(e, n, o), i }, i.expire = function (e, n) { return i.set(e, t, n) }, i._getExtendedOptions = function (e) { return { path: e && e.path || i.defaults.path, domain: e && e.domain || i.defaults.domain, expires: e && e.expires || i.defaults.expires, secure: e && e.secure !== t ? e.secure : i.defaults.secure } }, i._isValidDate = function (e) { return "[object Date]" === Object.prototype.toString.call(e) && !isNaN(e.getTime()) }, i._getExpiresDate = function (e, t) { if (t = t || new Date, "number" == typeof e ? e = 1 / 0 === e ? i._maxExpireDate : new Date(t.getTime() + 1e3 * e) : "string" == typeof e && (e = new Date(e)), e && !i._isValidDate(e)) throw new Error("`expires` parameter cannot be converted to a valid Date instance"); return e }, i._generateCookieString = function (e, t, i) { e = e.replace(/[^#$&+\^`|]/g, encodeURIComponent), e = e.replace(/\(/g, "%28").replace(/\)/g, "%29"), t = (t + "").replace(/[^!#$&-+\--:<-\[\]-~]/g, encodeURIComponent), i = i || {}; var n = e + "=" + t; return n += i.path ? ";path=" + i.path : "", n += i.domain ? ";domain=" + i.domain : "", n += i.expires ? ";expires=" + i.expires.toUTCString() : "", n += i.secure ? ";secure" : "" }, i._getCacheFromString = function (e) { for (var n = {}, o = e ? e.split("; ") : [], s = 0; s < o.length; s++) { var a = i._getKeyValuePairFromCookieString(o[s]); n[i._cacheKeyPrefix + a.key] === t && (n[i._cacheKeyPrefix + a.key] = a.value) } return n }, i._getKeyValuePairFromCookieString = function (e) { var t = e.indexOf("="); return t = 0 > t ? e.length : t, { key: decodeURIComponent(e.substr(0, t)), value: decodeURIComponent(e.substr(t + 1)) } }, i._renewCache = function () { i._cache = i._getCacheFromString(i._document.cookie), i._cachedDocumentCookie = i._document.cookie }, i._areEnabled = function () { var e = "cookies.js", t = "1" === i.set(e, 1).get(e); return i.expire(e), t }, i.enabled = i._areEnabled(), i }, n = "object" == typeof e.document ? i(e) : i; e.Cookies = n }("undefined" == typeof window ? this : window), function () { function e(e) { var t = new RegExp("(^|[?]|&)" + e + "=([^&]*)(&|$)", "i"), i = window.location.search || window.location.hash, n = i.substr(1).match(t); return null != n ? unescape(n[2]) : null } var t = e("client_id"), i = e("masid"), n = e("edm_task"); t && Cookies.set("client_id", t, { path: "/", domain: ".mi.com", expires: 3600 }), i && Cookies.set("masid", i, { path: "/", domain: ".mi.com", expires: 3600 }), n && Cookies.set("edm_task", n, { path: "/", domain: ".mi.com", expires: 1800 }) }(); var _hmt = _hmt = _hmt || [], _gaq = _hmt; !function () { var e = document.createElement("script"); e.src = "//hm.baidu.com/hm.js?4982d57ea12df95a2b24715fb6440726"; var t = document.getElementsByTagName("script")[0]; t.parentNode.insertBefore(e, t) }(); var _msq = _msq || []; _msq.push("180100041061" === Cookies.get("client_id") ? ["setDomainId", 127] : "180100041065" === Cookies.get("client_id") ? ["setDomainId", 128] : ["setDomainId", 101]), _msq.push(["setVars", "masid", Cookies.get("masid") ? Cookies.get("masid") : ""]), _msq.push(["setVars", "client_id", Cookies.get("client_id") ? Cookies.get("client_id") : ""]), _msq.push(["setVars", "edm_task", Cookies.get("edm_task") ? Cookies.get("edm_task") : ""]), _msq.push(["trackPageView"]), function () { var e = document.createElement("script"); e.type = "text/javascript", e.async = !0, e.src = "//c1.mifile.cn/f/i/15/stat/js/xmst.js"; var t = document.getElementsByTagName("script")[0]; t.parentNode.insertBefore(e, t), window.statInit = function () { Zepto("body,.J_linksign-customize").linkSign() } }(), function (e) { e.addEventListener("hashchange", function () { _msq.push(["setVars", "masid", Cookies.get("masid") ? Cookies.get("masid") : ""]), _msq.push(["setVars", "client_id", Cookies.get("client_id") ? Cookies.get("client_id") : ""]), _msq.push(["setVars", "edm_task", Cookies.get("edm_task") ? Cookies.get("edm_task") : ""]), _msq.push(["setVars", "curl", location.href]), _msq.push(["trackPageView"]) }) }(window);</script>
    <script src="./内容页/jweixin-1.0.0_c1c3160.js.下载"></script>
    <!-- mae_monitor-->
    <div class="gmu-media-detect" id="gmu-media-detect0">
    </div>
</body>
</html>
