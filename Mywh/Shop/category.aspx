<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="category.aspx.cs" Inherits="Shop.category" %>

<!DOCTYPE html>
<!-- saved from url=(0035)https://m.mi.com/#/product/category -->
<html lang="zh-CN" style="font-size: 44.4444px;">
<head>
        <title>红米Note 4X_小米商城</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=0">
    <meta name="imagemode" content="force">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="小米商城直营小米公司旗下所有产品，囊括小米手机、红米手机、智能硬件及小米生活周边，同时提供小米客户服务及售后支持。">
    <meta name="keywords" content="小米,小米官网,小米手机,小米官网首页,小米商城">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" type="image/x-icon" href="https://m.mi.com/favicon.ico">
    <link rel="apple-touch-icon-precomposed" href="https://img01.mifile.cn/m/app/touch-icon.png">

    <script type="text/javascript" async="" src="./分类/xmst.js.下载"></script>
    <script src="./分类/hm.js.下载"></script>
    <script>window.mi_log_st = +new Date;</script>
    <link rel="dns-prefetch" href="https://s1.mi.com/">
    <link rel="dns-prefetch" href="https://img01.mifile.cn/">
    <link rel="dns-prefetch" href="https://img03.mifile.cn/">
    <link rel="dns-prefetch" href="https://img08.mifile.cn/">
    <link rel="dns-prefetch" href="https://hd.mi.com/">

    <style>
        body, h1, h2, h3, p, dl, dd, ol, ul, th, td, form, fieldset, input, button, textarea {
        }
    </style>
    <style>
        .gmu-media-detect {
            -webkit-transition: width 0.001ms;
            width: 0;
            position: relative;
            bottom: -999999px;
        }

        @media screen and (width: 320px) {
            #gmu-media-detect0 {
                width: 100px;
            }
        }
    </style>
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
    <style type="text/css">
        .page-category .page-category-wrap {
            position: absolute;
            top: 0;
            bottom: 0;
            left: 0;
            right: 0;
            overflow-y: auto;
            background: #fff;
            padding-bottom: 1.2rem;
            -webkit-overflow-scrolling: touch
        }

        .page-category .list-navbar {
            position: fixed;
            top: .84rem;
            bottom: .8rem;
            width: 1.52rem;
            margin-top: 1px;
            z-index: 90;
            border-right: 1px solid #efefef;
            overflow: hidden
        }

            .page-category .list-navbar > ul {
                z-index: 90;
                position: absolute;
                top: 0;
                bottom: 0;
                left: 0;
                right: -.3rem;
                padding: .2rem .3rem .2rem 0;
                background: #fefefe;
                overflow-y: auto;
                -webkit-overflow-scrolling: touch
            }

                .page-category .list-navbar > ul::-webkit-scrollbar {
                    display: none
                }

                .page-category .list-navbar > ul.fixed {
                    top: 0;
                    position: fixed
                }

                .page-category .list-navbar > ul li {
                    font-size: .34rem;
                    height: .9rem;
                    line-height: .9rem;
                    overflow: hidden;
                    text-align: center;
                    -webkit-tap-highlight-color: rgba(0,0,0,0);
                    transition: transform .1s linear;
                    transform-origin: center center;
                    transform: scale(0.76);
                    -webkit-transition: -webkit-transform .1s linear;
                    -webkit-transform-origin: center center;
                    -webkit-transform: scale(0.76)
                }

                    .page-category .list-navbar > ul li span {
                        display: inline-block
                    }

                    .page-category .list-navbar > ul li.active {
                        color: #fb7d34;
                        transform: scale(1);
                        -webkit-transform: scale(1)
                    }

        .page-category .section {
            overflow: hidden
        }

        .page-category .list-wrap {
            margin-left: 1.52rem;
            padding: 2px .32rem;
            overflow: hidden
        }

            .page-category .list-wrap > div:last-child {
                min-height: calc(100vh - .8rem)
            }
    </style>
</head>
<body>
    <script>!function(t,e){"object" == typeof exports ? module.exports = e() : "function" == typeof define && define.amd ? define(e) : t.Spinner = e()}(this,function(){"use strict";function t(t,e){var i,o=document.createElement(t||"div");for(i in e)o[i]=e[i];return o}function e(t){for(var e=1,i=arguments.length;i>e;e++)t.appendChild(arguments[e]);return t}function i(t,e,i,o){var n=["opacity",e,~~(100*t),i,o].join("-"),r=.01+i/o*100,s=Math.max(1-(1-t)/e*(100-r),t),a=c.substring(0,c.indexOf("Animation")).toLowerCase(),l=a&&"-"+a+"-"||"";return p[n]||(u.insertRule("@"+l+"keyframes "+n+"{0 % { opacity: "+s+" }"+r+"%{opacity:"+t+"}"+(r+.01)+"%{opacity:1}"+(r+e)%100+"%{opacity:"+t+"}100%{opacity:"+s+"}}",u.cssRules.length),p[n]=1),n}function o(t,e){var i,o,n=t.style;for(e=e.charAt(0).toUpperCase()+e.slice(1),o=0;o<d.length;o++)if(i=d[o]+e,void 0!==n[i])return i;return void 0!==n[e]?e:void 0}function n(t,e){for(var i in e)t.style[o(t,i)||i]=e[i];return t}function r(t){for(var e=1;e<arguments.length;e++){var i=arguments[e];for(var o in i)void 0===t[o]&&(t[o]=i[o])}return t}function s(t,e){return"string"==typeof t?t:t[e%t.length]}function a(t){this.opts = r(t || {}, a.defaults, f)}function l(){function i(e, i) { return t("<" + e + ' xmlns="urn:schemas-microsoft.com:vml" class="spin-vml">', i) }u.addRule(".spin-vml","behavior:url(#default#VML)"),a.prototype.lines=function(t,o){function r() { return n(i("group", { coordsize: d + " " + d, coordorigin: -c + " " + -c }), { width: d, height: d }) }function a(t,a,l){e(u, e(n(r(), { rotation: 360 / o.lines * t + "deg", left: ~~a }), e(n(i("roundrect", { arcsize: o.corners }), { width: c, height: o.width, left: o.radius, top: -o.width >> 1, filter: l }), i("fill", { color: s(o.color, t), opacity: o.opacity }), i("stroke", { opacity: 0 }))))}var l,c=o.length+o.width,d=2*c,p=2*-(o.width+o.length)+"px",u=n(r(),{position:"absolute",top:p,left:p});if(o.shadow)for(l=1;l<=o.lines;l++)a(l,-2,"progid:DXImageTransform.Microsoft.Blur(pixelradius=2,makeshadow=1,shadowopacity=.3)");for(l=1;l<=o.lines;l++)a(l);return e(t,u)},a.prototype.opacity=function(t,e,i,o){var n=t.firstChild;o=o.shadow&&o.lines||0,n&&e+o<n.childNodes.length&&(n=n.childNodes[e+o],n=n&&n.firstChild,n=n&&n.firstChild,n&&(n.opacity=i))}}var c,d=["webkit","Moz","ms","O"],p={},u=function(){var i=t("style",{type:"text/css"});return e(document.getElementsByTagName("head")[0],i),i.sheet||i.styleSheet}(),f={lines:11,length:8,width:4,radius:10,rotate:0,corners:1,color:"#000",direction:1,speed:3,trail:60,opacity:.25,fps:20,zIndex:2e9,className:"spinner",top:"50%",left:"50%",position:"absolute"};a.defaults={},r(a.prototype,{spin:function(e){this.stop();{var i=this,o=i.opts,r=i.el=n(t(0,{className:o.className}),{position:o.position,width:0,zIndex:o.zIndex});o.radius+o.length+o.width}if(n(r,{left:o.left,top:o.top}),e&&e.insertBefore(r,e.firstChild||null),r.setAttribute("role","progressbar"),i.lines(r,i.opts),!c){var s,a=0,l=(o.lines-1)*(1-o.direction)/2,d=o.fps,p=d/o.speed,u=(1-o.opacity)/(p*o.trail/100),f=p/o.lines;!function h(){a++;for(var t=0;t<o.lines;t++)s=Math.max(1-(a+(o.lines-t)*f)%p*u,o.opacity),i.opacity(r,t*o.direction+l,s,o);i.timeout=i.el&&setTimeout(h,~~(1e3/d))}()}return i},stop:function(){var t=this.el;return t&&(clearTimeout(this.timeout),t.parentNode&&t.parentNode.removeChild(t),this.el=void 0),this},lines:function(o,r){function a(e, i) { return n(t(), { position: "absolute", width: r.length + r.width + "px", height: r.width + "px", background: e, boxShadow: i, transformOrigin: "left", transform: "rotate(" + ~~(360 / r.lines * d + r.rotate) + "deg) translate(" + r.radius + "px,0)", borderRadius: (r.corners * r.width >> 1) + "px" }) }for(var l,d=0,p=(r.lines-1)*(1-r.direction)/2;d<r.lines;d++)l=n(t(),{position:"absolute",top:1+~(r.width/2)+"px",transform:r.hwaccel?"translate3d(0,0,0)":"",opacity:r.opacity,animation:c&&i(r.opacity,r.trail,p+d*r.direction,r.lines)+" "+1/r.speed+"s linear infinite"}),r.shadow&&e(l,n(a("#000","0 0 4px #000"),{top:"2px"})),e(o,e(l,a(s(r.color,d),"0 0 1px rgba(0,0,0,.1)")));return o},opacity:function(t,e,i){e < t.childNodes.length && (t.childNodes[e].style.opacity = i)}});var h=n(t("group"),{behavior:"url(#default#VML)"});return!o(h,"transform")&&h.adj?l():c=o(h,"animation"),a});</script>
    <script>!function(n){var e=n.document,t=e.documentElement,i=720,d=i/100,o="orientationchange"in n?"orientationchange":"resize",a=function(){var n=t.clientWidth||320;n>720&&(n=720),t.style.fontSize=n/d+"px"};e.addEventListener&&(n.addEventListener(o,a,!1),e.addEventListener("DOMContentLoaded",a,!1))}(window);</script>
    <div id="wrapper">
        <div class="page-category" data-log="商品分类">
            <div class="page-category-wrap">
                <div class="header">
                    <div class="left"><a class="home" data-stat-id="346f31c749f6e40d" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-346f31c749f6e40d&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <img src="./分类/icon_back_n.png" class="ib"></a><!--vue-if--><!--vue-if--></div>
                    <div class="tit">
                        <h2 data-log="HEAD-标题-商品分类"><span class="title">商品分类</span></h2>
                        <!--vue-if-->
                    </div>
                    <div class="right"><a href="javascript:;" data-event="30000000110001001" data-stat-id="6c93ea1c6bb6eb01" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-6c93ea1c6bb6eb01&#39;, &#39;javascript:&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="icon icon-search"></div>
                    </a></div>
                </div>
                <div class="list-wrap">
                    <div class="js-list-item category0">
                        <div class="f-list">
                            <div class="section">
                                <div class="cells_auto_fill">
                                    <div data-index="0" class="body" style="width: 5rem; height: 2rem;">
                                        <div class="items J_linksign-customize" style="width: 5rem; height: 2rem;"><a class="exposure" data-log_code="31wapcategory_newcells_auto_fill001001#rid=d925c90c28eb98c03ecf5164559bcb8a&amp;t=ad&amp;page=category_new&amp;act=product&amp;pid=5780&amp;bid=3002987.1&amp;page_id=25&amp;adp=757&amp;adm=1376" href="https://m.mi.com/#/product/view?product_id=5780" data-stat-id="41bb431077ed3b25" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-41bb431077ed3b25&#39;, &#39;/#/product/viewproduct_id=5780&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcells_auto_fill001001#rid=d925c90c28eb98c03ecf5164559bcb8a&amp;t=ad&amp;page=category_new&amp;act=product&amp;pid=5780&amp;bid=3002987.1&amp;page_id=25&amp;adp=757&amp;adm=1376&#39;]);">
                                            <div class="img">
                                                <img src="./分类/ef9e8868-06f4-f53c-b98a-f1691772f79f!500x200.webp"><!--vue-if--></div>
                                        </a></div>
                                        <!--v-repeat-body.items-->
                                    </div>
                                </div>
                            </div>
                            <div class="section">
                                <div name="m1" class="category_title"><span>手机</span></div>
                            </div>
                            <div class="section">
                                <div class="category_group">
                                    <div class="box">
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group001016#rid=e41fdcac65c8aa00ececfda9677d6e3e&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=10000041" href="https://m.mi.com/#/product/view?product_id=10000041" data-stat-id="025ab48d5607e4e1" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-025ab48d5607e4e1&#39;, &#39;/#/product/viewproduct_id=10000041&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group001016#rid=e41fdcac65c8aa00ececfda9677d6e3e&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=10000041&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//i8.mifile.cn/b2c-mimall-media/f0e283f74845939fd24d53f7fb1d35c1.png?width=120&amp;height=120" src="./分类/f0e283f74845939fd24d53f7fb1d35c1.png" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">小米6</div>
                                        </a></div>
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group002016#rid=74938593464cf20ab78a86f56350f65a&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=10000057" href="https://m.mi.com/#/product/view?product_id=10000057" data-stat-id="e0cb8bbfa3d005f8" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-e0cb8bbfa3d005f8&#39;, &#39;/#/product/viewproduct_id=10000057&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group002016#rid=74938593464cf20ab78a86f56350f65a&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=10000057&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//i8.mifile.cn/b2c-mimall-media/88bc9af6c3bd4e7a695060fe628971e8.png?width=120&amp;height=120" src="./分类/88bc9af6c3bd4e7a695060fe628971e8.png" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">小米Max 2</div>
                                        </a></div>
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group003016#rid=fca4e3390d5de6ab7c50fdb562dc98d9&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=5778" href="https://m.mi.com/#/product/view?product_id=5778" data-stat-id="3edcf3fe73f14063" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-3edcf3fe73f14063&#39;, &#39;/#/product/viewproduct_id=5778&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group003016#rid=fca4e3390d5de6ab7c50fdb562dc98d9&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=5778&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//i8.mifile.cn/b2c-mimall-media/661f8ad7f2014f352e3a47fbb5ee2939.png?width=120&amp;height=120" src="./分类/661f8ad7f2014f352e3a47fbb5ee2939.png" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">红米4X</div>
                                        </a></div>
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group001017#rid=349647440d7941938d4b48646645cf5b&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=10000021" href="https://m.mi.com/#/product/view?product_id=10000021" data-stat-id="ce1dfd23bd8f1bd3" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-ce1dfd23bd8f1bd3&#39;, &#39;/#/product/viewproduct_id=10000021&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group001017#rid=349647440d7941938d4b48646645cf5b&amp;t=normal&amp;page=category_new&amp;act=product&amp;pid=10000021&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/62c712fb35355f8f3778ccc4b4b25503.png?width=120&amp;height=120" src="./分类/62c712fb35355f8f3778ccc4b4b25503.png" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">小米Note 2</div>
                                        </a></div>
                                        <!--v-repeat-body.items-->
                                    </div>
                                </div>
                            </div>
                            <div class="section">
                                <div name="m5" class="category_title"><span>电脑</span></div>
                            </div>
                            <div class="section">
                                <div class="category_group">
                                    <div class="box">
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group001022#rid=41904dd6e7c84100daf921c61413a56d&amp;t=normal&amp;page=category_new&amp;act=cat" href="https://m.mi.com/#/product/list?id=662" data-stat-id="15a138ef69e480c1" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-15a138ef69e480c1&#39;, &#39;/#/product/listid=662&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group001022#rid=41904dd6e7c84100daf921c61413a56d&amp;t=normal&amp;page=category_new&amp;act=cat&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//i8.mifile.cn/b2c-mimall-media/f0d7f8167e14f0c70fd84aa6cb321cb6.png?width=120&amp;height=120" src="./分类/f0d7f8167e14f0c70fd84aa6cb321cb6.png" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">笔记本13.3" i5</div>
                                        </a></div>
                                        <!--v-repeat-body.items-->
                                    </div>
                                </div>
                            </div>
                            <!--v-repeat-items-->
                        </div>
                    </div>
                    <div class="js-list-item category1">
                        <div class="f-list">
                            <div class="section">
                                <div class="cells_auto_fill">
                                    <div data-index="0" class="body" style="width: 5rem; height: 2rem;">
                                        <div class="items J_linksign-customize" style="width: 5rem; height: 2rem;"><a class="exposure" data-log_code="31wapcategory_newcells_auto_fill001002#rid=77c0e1a0ab3310d995f6d5619355d074&amp;t=ad&amp;page=category_new&amp;act=product&amp;pid=2170800005&amp;bid=3002988.1&amp;page_id=25&amp;adp=758&amp;adm=1817" href="https://m.mi.com/#/product/view?product_id=2170800005" data-stat-id="499e598ed5cde41f" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-499e598ed5cde41f&#39;, &#39;/#/product/viewproduct_id=2170800005&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcells_auto_fill001002#rid=77c0e1a0ab3310d995f6d5619355d074&amp;t=ad&amp;page=category_new&amp;act=product&amp;pid=2170800005&amp;bid=3002988.1&amp;page_id=25&amp;adp=758&amp;adm=1817&#39;]);">
                                            <div class="img">
                                                <img src="./分类/6f692f20-8a4f-764e-384a-23c98e9e7ec0!500x200.webp"><!--vue-if--></div>
                                        </a></div>
                                        <!--v-repeat-body.items-->
                                    </div>
                                </div>
                            </div>
                            <div class="section">
                                <div name="m1" class="category_title"><span>小米手机</span></div>
                            </div>
                            <div class="section">
                                <div class="category_group">
                                    <div class="box">
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group001024#rid=04e93c9665bc7311c202206061f30fa8&amp;t=normal&amp;page=category_new&amp;act=cat" href="https://m.mi.com/#/product/list?id=630" data-stat-id="318076db712756e0" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-318076db712756e0&#39;, &#39;/#/product/listid=630&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group001024#rid=04e93c9665bc7311c202206061f30fa8&amp;t=normal&amp;page=category_new&amp;act=cat&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/0ed187521ff28e6616798c1c990c1788.png?width=120&amp;height=120" src="./分类/0ed187521ff28e6616798c1c990c1788.png" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">小米6</div>
                                        </a></div>
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group002024#rid=79f1584fed5016de37610fd5b8488f2b&amp;t=normal&amp;page=category_new&amp;act=cat" href="https://m.mi.com/#/product/list?id=665" data-stat-id="8bbb31b22f3cd724" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-8bbb31b22f3cd724&#39;, &#39;/#/product/listid=665&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group002024#rid=79f1584fed5016de37610fd5b8488f2b&amp;t=normal&amp;page=category_new&amp;act=cat&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//i8.mifile.cn/b2c-mimall-media/88bc9af6c3bd4e7a695060fe628971e8.png?width=120&amp;height=120" src="./分类/88bc9af6c3bd4e7a695060fe628971e8.png" style="transform-origin: 0px 0px 0px; opacity: 1; transform: scale(1, 1);"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">小米Max 2</div>
                                        </a></div>
                                        <!--v-repeat-body.items-->
                                    </div>
                                </div>
                                <!--vue-if-->
                                <!--vue-if-->
                                <!--vue-if-->
                            </div>
                            <div class="section">
                                <div name="m3" class="category_title"><span>红米手机</span></div>
                            </div>
                            <div class="section">
                                <div class="category_group">
                                    <div class="box">
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group001028#rid=9a4be0b925ae9d2dbd677a218b080080&amp;t=normal&amp;page=category_new&amp;act=cat" href="https://m.mi.com/#/product/list?id=443" data-stat-id="c8d49b2aa8970802" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-c8d49b2aa8970802&#39;, &#39;/#/product/listid=443&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group001028#rid=9a4be0b925ae9d2dbd677a218b080080&amp;t=normal&amp;page=category_new&amp;act=cat&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//i8.mifile.cn/b2c-mimall-media/ea6275142315b78422e4f047406fc76c.png?width=120&amp;height=120" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QAAAAAAAD5Q7t/AAAACXBIWXMAABYlAAAWJQFJUiTwAAAAGElEQVQY02P88vXbfwYiABMxikYVUk8hADnIA/JaV/IiAAAAAElFTkSuQmCC"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">红米Note 4X</div>
                                        </a></div>
                                        <div class="product"><a class="exposure" data-log_code="31wapcategory_newcategory_group002028#rid=35eb0ad0c347e94601e57abae9b6282e&amp;t=normal&amp;page=category_new&amp;act=cat" href="https://m.mi.com/#/product/list?id=449" data-stat-id="f35c627cac5696aa" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-f35c627cac5696aa&#39;, &#39;/#/product/listid=449&#39;, &#39;pcpid&#39;, &#39;31wapcategory_newcategory_group002028#rid=35eb0ad0c347e94601e57abae9b6282e&amp;t=normal&amp;page=category_new&amp;act=cat&#39;]);">
                                            <div class="img">
                                                <img class="big lazy" data-src="//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/661f8ad7f2014f352e3a47fbb5ee2939.png?width=120&amp;height=120" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAoAAAAKCAYAAACNMs+9AAAABGdBTUEAALGPC/xhBQAAACBjSFJNAAB6JgAAgIQAAPoAAACA6AAAdTAAAOpgAAA6mAAAF3CculE8AAAABmJLR0QAAAAAAAD5Q7t/AAAACXBIWXMAABYlAAAWJQFJUiTwAAAAGElEQVQY02P88vXbfwYiABMxikYVUk8hADnIA/JaV/IiAAAAAElFTkSuQmCC"><!--vue-if--><!--vue-if--></div>
                                            <div class="name">红米4X</div>
                                        </a></div>
                                        <!--v-repeat-body.items-->
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--v-repeat-categories-->
                </div>
            </div>
            <div class="list-navbar" style="top: 37px; bottom: 41px;">
                <ul>
                    <li class="active"><span>新品</span></li>
                    <li><span>手机</span></li>
                    <li><span>电视</span></li>
                    <li><span>电脑</span></li>
                    <li><span>家电</span></li>
                    <li><span>路由</span></li>
                    <li><span>智能</span></li>
                    <li><span>电源</span></li>
                    <li><span>耳机</span></li>
                    <li><span>音箱</span></li>
                    <li><span>礼品</span></li>
                    <li><span>生活</span></li>
                    <li><span>米粉卡</span></li>
                    <li><span>零售店</span></li>
                    <!--v-repeat-categories-->
                </ul>
            </div>
            <div class="footer">
                <ul>
                    <li><a href="https://m.mi.com/#/index" data-event="30000000110001002" data-stat-id="22e2020609e99d72" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-22e2020609e99d72&#39;, &#39;/#/index&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="nav">
                            <div class="ih ispr"></div>
                            <p>首页</p>
                        </div>
                    </a></li>
                    <li><a href="https://m.mi.com/#/product/category" data-event="30000000110001003" class="on" data-stat-id="3a200b7f58b28dcf" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-3a200b7f58b28dcf&#39;, &#39;/#/product/category&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="nav">
                            <div class="ic ispr"></div>
                            <p>分类</p>
                        </div>
                    </a></li>
                    <li><a href="https://m.mi.com/#/cart/index" data-event="30000000110001006" data-stat-id="3026740b323f6a9a" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-3026740b323f6a9a&#39;, &#39;/#/cart/index&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="nav">
                            <div class="is ispr"></div>
                            <p>购物车</p>
                        </div>
                    </a></li>
                    <li><a href="https://m.mi.com/#/user/index" data-event="30000000110001005" data-stat-id="5030c3a449186266" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-5030c3a449186266&#39;, &#39;/#/user/index&#39;, &#39;pcpid&#39;, &#39;&#39;]);">
                        <div class="nav">
                            <div class="if ispr"></div>
                            <p>我的</p>
                        </div>
                    </a></li>
                </ul>
            </div>
        </div>
        <!--v-view-->
    </div>
    <div id="info" style="display: none;"></div>
    <script src="./分类/mod-store_dd2d846.js.下载"></script>
    <script src="./分类/jweixin-1.0.0_c1c3160.js.下载"></script>
    <!-- mae_monitor-->
    <div class="gmu-media-detect" id="gmu-media-detect0"></div>
</body>
</html>
