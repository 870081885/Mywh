<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="Shop.index" %>

<!DOCTYPE html>

<!-- saved from url=(0017)https://m.mi.com/ -->
<html lang="zh-CN" style="font-size: 55.5556px;">

<head>
    <title>小米商城-小米官方网站，小米手机、红米手机正品专卖</title>
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=0">
    <meta name="imagemode" content="force">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta name="format-detection" content="telephone=no">
    <meta name="description" content="小米商城直营小米公司旗下所有产品，囊括小米手机、红米手机、智能硬件及小米生活周边，同时提供小米客户服务及售后支持。">
    <meta name="keywords" content="小米,小米官网,小米手机,小米官网首页,小米商城">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <%--    <script type="text/javascript" async="" src="./首页/mstr.js"></script>
    <script type="text/javascript" async="" src="./首页/mstr(1).js"></script>
    <script type="text/javascript" async="" src="./首页/mstr(2).js"></script>
    <script type="text/javascript" async="" src="./首页/mstr(3).js"></script>--%>
    <script type="text/javascript" async="" src="./首页/jquery.statData.min.js"></script>
    <script type="text/javascript" async="" src="./首页/xmst.js"></script>
    <%--    <link rel="dns-prefetch" href="https://s1.mi.com/">
    <link rel="apple-touch-icon-precomposed" href="https://img01.mifile.cn/m/app/touch-icon.png">--%>
        <link href="assets/mi/css/slickSlider.css" rel="stylesheet" />
    <link href="demo1.css" rel="stylesheet" />
    <link href="assets/mi/css/demo15.css" rel="stylesheet" />
    <link href="assets/mi/css/demo14.css" rel="stylesheet" />
    <link href="assets/mi/css/demo13.css" rel="stylesheet" />
    <link href="assets/mi/css/demo12.css" rel="stylesheet" />
    <link href="assets/mi/css/demo11.css" rel="stylesheet" />
    <link href="assets/mi/css/demo10.css" rel="stylesheet" />
    <link href="assets/mi/css/footer.css" rel="stylesheet" />
    <link href="assets/mi/css/demo8.css" rel="stylesheet" />
    <link href="assets/mi/css/demo7.css" rel="stylesheet" />
    <link href="assets/mi/css/demo6.css" rel="stylesheet" />
    <link href="assets/mi/css/demo5.css" rel="stylesheet" />
    <link href="assets/mi/css/demo4.css" rel="stylesheet" />
    <link href="assets/mi/css/demo3.css" rel="stylesheet" />
    <link href="assets/mi/css/demo2.css" rel="stylesheet" />
    <link href="assets/mi/css/demo1.css" rel="stylesheet" />

    <style>
        body, h1, h2, h3, p, dl, dd, ol, ul, th, td, form, fieldset, input, button, textarea {
            margin:0px;
            padding:0px;
        }
    </style>
</head>
<body>
    <script>
        !function (t, e) {
            "object" == typeof exports ? module.exports = e() : "function" == typeof define && define.amd ? define(e) : t.Spinner = e()
        }(this, function () {
            "use strict"; function t(t, e) {
                var i, o = document.createElement(t || "div"); for (i in e) o[i] = e[i]; return o
            } function e(t) {
                for (var e = 1, i = arguments.length; i > e; e++)t.appendChild(arguments[e]); return t
            } function i(t, e, i, o) {
                var n = ["opacity", e, ~~(100 * t), i, o].join("-"), r = .01 + i / o * 100, s = Math.max(1 - (1 - t) / e * (100 - r), t), a = c.substring(0, c.indexOf("Animation")).toLowerCase(), l = a && "-" + a + "-" || ""; return p[n] || (u.insertRule("@" + l + "keyframes " + n + "{0%{opacity:" + s + "}" + r + "%{opacity:" + t + "}" + (r + .01) + "%{opacity:1}" + (r + e) % 100 + "%{opacity:" + t + "}100%{opacity:" + s + "}}", u.cssRules.length), p[n] = 1), n
            } function o(t, e) {
                var i, o, n = t.style; for (e = e.charAt(0).toUpperCase() + e.slice(1), o = 0; o < d.length; o++)if (i = d[o] + e, void 0 !== n[i]) return i; return void 0 !== n[e] ? e : void 0
            } function n(t, e) {
                for (var i in e) t.style[o(t, i) || i] = e[i]; return t
            } function r(t) {
                for (var e = 1; e < arguments.length; e++) { var i = arguments[e]; for (var o in i) void 0 === t[o] && (t[o] = i[o]) } return t
            } function s(t, e) {
                return "string" == typeof t ? t : t[e % t.length]
            } function a(t) {
                this.opts = r(t || {}, a.defaults, f)
            } function l() {
                function i(e, i) {
                    return t("<" + e + ' xmlns="urn:schemas-microsoft.com:vml" class="spin-vml">', i)
                } u.addRule(".spin-vml", "behavior:url(#default#VML)"), a.prototype.lines = function (t, o) {
                    function r() {
                        return n(i("group", { coordsize: d + " " + d, coordorigin: -c + " " + -c }), { width: d, height: d })
                    } function a(t, a, l) {
                        e(u, e(n(r(), { rotation: 360 / o.lines * t + "deg", left: ~~a }), e(n(i("roundrect", { arcsize: o.corners }), { width: c, height: o.width, left: o.radius, top: -o.width >> 1, filter: l }), i("fill", { color: s(o.color, t), opacity: o.opacity }), i("stroke", { opacity: 0 }))))
                    } var l, c = o.length + o.width, d = 2 * c, p = 2 * -(o.width + o.length) + "px", u = n(r(), { position: "absolute", top: p, left: p }); if (o.shadow) for (l = 1; l <= o.lines; l++)a(l, -2, "progid:DXImageTransform.Microsoft.Blur(pixelradius=2,makeshadow=1,shadowopacity=.3)"); for (l = 1; l <= o.lines; l++)a(l); return e(t, u)
                }, a.prototype.opacity = function (t, e, i, o) {
                    var n = t.firstChild; o = o.shadow && o.lines || 0, n && e + o < n.childNodes.length && (n = n.childNodes[e + o], n = n && n.firstChild, n = n && n.firstChild, n && (n.opacity = i))
                }
            } var c, d = ["webkit", "Moz", "ms", "O"], p = {}, u = function () {
                var i = t("style", { type: "text/css" }); return e(document.getElementsByTagName("head")[0], i), i.sheet || i.styleSheet
            }(), f = {
                lines: 11, length: 8, width: 4, radius: 10, rotate: 0, corners: 1, color: "#000", direction: 1, speed: 3, trail: 60, opacity: .25, fps: 20, zIndex: 2e9, className: "spinner", top: "50%", left: "50%", position: "absolute"
                }; a.defaults = {}, r(a.prototype, {
                    spin: function (e) {
                        this.stop(); {
                            var i = this, o = i.opts, r = i.el = n(t(0, { className: o.className }), { position: o.position, width: 0, zIndex: o.zIndex }); o.radius + o.length + o.width
                        } if (n(r, { left: o.left, top: o.top }), e && e.insertBefore(r, e.firstChild || null), r.setAttribute("role", "progressbar"), i.lines(r, i.opts), !c) {
                            var s, a = 0, l = (o.lines - 1) * (1 - o.direction) / 2, d = o.fps, p = d / o.speed, u = (1 - o.opacity) / (p * o.trail / 100), f = p / o.lines; !function h() {
                                a++; for (var t = 0; t < o.lines; t++)s = Math.max(1 - (a + (o.lines - t) * f) % p * u, o.opacity), i.opacity(r, t * o.direction + l, s, o); i.timeout = i.el && setTimeout(h, ~~(1e3 / d))
                            }()
                        } return i
                    }, stop: function () {
                        var t = this.el; return t && (clearTimeout(this.timeout), t.parentNode && t.parentNode.removeChild(t), this.el = void 0), this
                    }, lines: function (o, r) {
                        function a(e, i) {
                            return n(t(), {
                                position: "absolute", width: r.length + r.width + "px", height: r.width + "px", background: e, boxShadow: i, transformOrigin: "left", transform: "rotate(" + ~~(360 / r.lines * d + r.rotate) + "deg) translate(" + r.radius + "px,0)", borderRadius: (r.corners * r.width >> 1) + "px"
                            })
                        } for (var l, d = 0, p = (r.lines - 1) * (1 - r.direction) / 2; d < r.lines; d++)l = n(t(), { position: "absolute", top: 1 + ~(r.width / 2) + "px", transform: r.hwaccel ? "translate3d(0,0,0)" : "", opacity: r.opacity, animation: c && i(r.opacity, r.trail, p + d * r.direction, r.lines) + " " + 1 / r.speed + "s linear infinite" }), r.shadow && e(l, n(a("#000", "0 0 4px #000"), { top: "2px" })), e(o, e(l, a(s(r.color, d), "0 0 1px rgba(0,0,0,.1)"))); return o
                    }, opacity: function (t, e, i) {
                        e < t.childNodes.length && (t.childNodes[e].style.opacity = i)
                    }
            }); var h = n(t("group"), {
                behavior: "url(#default#VML)"
            }); return !o(h, "transform") && h.adj ? l() : c = o(h, "animation"), a
        });</script>
    <script>!function (n) {
    var e = n.document, t = e.documentElement, i = 720, d = i / 100, o = "orientationchange" in n ? "orientationchange" : "resize", a = function () {
        var n = t.clientWidth || 320; n > 720 && (n = 720), t.style.fontSize = n / d + "px"
    }; e.addEventListener && (n.addEventListener(o, a, !1), e.addEventListener("DOMContentLoaded", a, !1))
        }(window);</script>
    <div id="wrapper">
        <div class="page-index" id="home" data-log="首页">
            <div class="top-header">
                <div class="index-header">
                    <div class="logo">
                        <img src="assets/mi/images/logo.png">
                    </div>
                    <div class="search_bar">
                        <a href="#"><span class="text">搜索商品名称</span></a>
                    </div>
                    <div class="login">
                        <div class="text">登录</div>
                    </div>
                </div>
                <div class="sub-header">
                    <div class="swipe-tabs slick-slider slick-initialized">
                        <div aria-live="polite" class="slick-list">
                            <div class="slick-track" style="width: 30000px;">
                                <div class="swipe-tab slick-slide slick-current slick-active active-tab" data-slick-index="0" aria-hidden="false">推荐</div>
                                <div data-channel="1864" class="swipe-tab slick-slide slick-active" data-slick-index="1" aria-hidden="false">手机</div>
                                <div data-channel="1860" class="swipe-tab slick-slide slick-active" data-slick-index="2" aria-hidden="false">智能</div>
                                <div data-channel="1866" class="swipe-tab slick-slide slick-active" data-slick-index="3" aria-hidden="false">电视</div>
                                <div data-channel="1865" class="swipe-tab slick-slide slick-active" data-slick-index="4" aria-hidden="false">电脑</div>
                                <div data-channel="1861" class="swipe-tab slick-slide slick-active" data-slick-index="5" aria-hidden="false">生活周边</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="main-container">
                <div class="swipe-tabs-container slick-slider slick-initialized">
                    <div aria-live="polite" class="slick-list">
                        <div class="slick-track" style="width: 2400px; transform: translate3d(0px, 0px, 0px);">
                            <!--6块导航-->
                            <div class="swipe-tab-content slick-slide slick-c slick-current slick-active" data-slick-index="0" aria-hidden="false" style="width: 400px;">
                                <!--幻灯片开始-->
                                <div class="slider" id="slider0" style="height: 3.6rem; visibility: visible;">
                                    <div class="swipe-wrap" style="width: 1200px;">
                                        <div data-index="0" style="width: 400px; left: 0px; transition-duration: 300ms; transform: translate(-400px, 0px) translateZ(0px);">
                                            <a class="exposure" href="#">
                                                <span class="imgurl">
                                                    <img class="cancel-touch" src="assets/mi/images/hdp3.jpg">
                                                </span>

                                            </a>
                                        </div>
                                        <div data-index="1" style="width: 400px; left: -400px; transition-duration: 300ms; transform: translate(0px, 0px) translateZ(0px);">
                                            <a class="exposure"  href="#">
                                                <span class="imgurl">
                                                    <img class="cancel-touch" src="assets/mi/images/hdp3.jpg">
                                                </span>
                                            </a>
                                        </div>
                                        <div data-index="2" style="width: 400px; left: -800px; transition-duration: 0ms; transform: translate(400px, 0px) translateZ(0px);">
                                            <a class="exposure" href="#">
                                                <span class="imgurl">
                                                    <img class="cancel-touch" src="assets/mi/images/hdp3.jpg">
                                                </span>
                                            </a>
                                        </div>
                                        <!--v-repeat-body.gallery-->
                                    </div>
                                    <div class="swipe-nav">
                                        <span class="">&nbsp;</span>
                                        <span class="on">&nbsp;</span>
                                        <span class="">&nbsp;</span>
                                    </div>
                                </div>
                                <!--幻灯片结束-->
                                <div class="first">
                                    <div class="f-list">
                                        <div class="section">
                                            <div class="divider_line" style="width: 100%; height: 0.16rem; border-bottom: 0.16rem solid #f5f5f5"></div>
                                        </div>
                                        <div class="section">
                                            <div class="first list_broadcast">
                                                <a href="#">
                                                    <div class="box">
                                                        <div class="img">
                                                            <img src="assets/mi/images/img1.png" />
                                                        </div>
                                                        <div id="sc_title" class="sc_title" style="opacity: 1;">我是第一个标题</div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                        <div class="section">
                                            <div class="divider_line" style="width: 100%; height: 0.04rem; border-bottom: 0.04rem solid #f5f5f5"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="second">
                                    <div class="f-list">
                                        <div class="section">
                                            <div class="list_two_type1">
                                                <div class="box">
                                                    <div class="item J_linksign-customize">
                                                        <a class="exposure" href="#">
                                                            <div class="img">
                                                                <img class="big lazy" src="assets/mi/images/img2.jpg" />
                                                                <%--<img class="big lazy" data-src="//i8.mifile.cn/v1/a1/9bbc24af-8b4d-e321-f30e-8062e54c3be4.webp?width=360&amp;height=360">--%>
                                                            </div>
                                                            <div class="info">
                                                                <div class="name">红米3 翻盖保护套</div>
                                                                <div class="brief">一体式设计 仿羊皮手感</div>
                                                                <div class="price">29</div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="item J_linksign-customize">
                                                        <a class="exposure"  href="#">
                                                            <div class="img">                 
                                                                 <img class="big lazy" src="assets/mi/images/img2.jpg" />
                                                            </div>
                                                            <div class="info">
                                                                <div class="name">米兔百变贴纸</div>
                                                                <div class="brief">多种用途DIY，印刷细腻</div>
                                                                <div class="price">19.9</div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section">
                                            <div class="list_two_type1">
                                                <div class="box">
                                                    <div class="item J_linksign-customize">
                                                        <a class="exposure" href="#">
                                                            <div class="img">
                                                                <img class="big lazy" src="assets/mi/images/img2.jpg" />
                                                                <%--<img class="big lazy" data-src="//i8.mifile.cn/v1/a1/9bbc24af-8b4d-e321-f30e-8062e54c3be4.webp?width=360&amp;height=360">--%>
                                                            </div>
                                                            <div class="info">
                                                                <div class="name">红米3 翻盖保护套</div>
                                                                <div class="brief">一体式设计 仿羊皮手感</div>
                                                                <div class="price">29</div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="item J_linksign-customize">
                                                        <a class="exposure"  href="#">
                                                            <div class="img">                 
                                                                 <img class="big lazy" src="assets/mi/images/img2.jpg" />
                                                            </div>
                                                            <div class="info">
                                                                <div class="name">米兔百变贴纸</div>
                                                                <div class="brief">多种用途DIY，印刷细腻</div>
                                                                <div class="price">19.9</div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="section">
                                            <div class="list_two_type1">
                                                <div class="box">
                                                    <div class="item J_linksign-customize">
                                                        <a class="exposure" href="#">
                                                            <div class="img">
                                                                <img class="big lazy" src="assets/mi/images/img2.jpg" />
                                                                <%--<img class="big lazy" data-src="//i8.mifile.cn/v1/a1/9bbc24af-8b4d-e321-f30e-8062e54c3be4.webp?width=360&amp;height=360">--%>
                                                            </div>
                                                            <div class="info">
                                                                <div class="name">红米3 翻盖保护套</div>
                                                                <div class="brief">一体式设计 仿羊皮手感</div>
                                                                <div class="price">29</div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                    <div class="item J_linksign-customize">
                                                        <a class="exposure"  href="#">
                                                            <div class="img">                 
                                                                 <img class="big lazy" src="assets/mi/images/img2.jpg" />
                                                            </div>
                                                            <div class="info">
                                                                <div class="name">米兔百变贴纸</div>
                                                                <div class="brief">多种用途DIY，印刷细腻</div>
                                                                <div class="price">19.9</div>
                                                            </div>
                                                        </a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <%--                            <div data-channel="1864" class="swipe-tab-content slick-slide" data-slick-index="1" aria-hidden="true" style="width: 400px;">
                                                                        <div class="slider" id="slider1864" style="height: 3.6rem">
                                                                            <div class="swipe-wrap">
                                                                                <div data-event="311864waptabgallery001001#rid=ae6f72254edaefde20dfe57aa201b1b8&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000057&amp;bid=3001095.1&amp;adp=988&amp;adm=2095">
                                                                                    <a class="exposure" data-log_code="311864waptabgallery001001#rid=ae6f72254edaefde20dfe57aa201b1b8&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000057&amp;bid=3001095.1&amp;adp=988&amp;adm=2095" href="https://m.mi.com/#/product/view?product_id=10000057" data-stat-id="afb891b2b9522078" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-afb891b2b9522078&#39;, &#39;/#/product/viewproduct_id=10000057&#39;, &#39;pcpid&#39;, &#39;311864waptabgallery001001#rid=ae6f72254edaefde20dfe57aa201b1b8&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000057&amp;bid=3001095.1&amp;adp=988&amp;adm=2095&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/027bef429008df94de494c13c6c98f05.jpg"></span></a>
                                                                                </div>
                                                                                <div data-event="311864waptabgallery002001#rid=2822822b8a82e41e22e06999d2ef5741&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000029&amp;bid=3001095.2&amp;adp=989&amp;adm=2013">
                                                                                    <a class="exposure" data-log_code="311864waptabgallery002001#rid=2822822b8a82e41e22e06999d2ef5741&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000029&amp;bid=3001095.2&amp;adp=989&amp;adm=2013" href="https://m.mi.com/#/product/view?product_id=10000029" data-stat-id="db7d28b0a0592776" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-db7d28b0a0592776&#39;, &#39;/#/product/viewproduct_id=10000029&#39;, &#39;pcpid&#39;, &#39;311864waptabgallery002001#rid=2822822b8a82e41e22e06999d2ef5741&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000029&amp;bid=3001095.2&amp;adp=989&amp;adm=2013&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/e6185981-a300-b8da-7137-b6c41f799bfe.webp"></span></a>
                                                                                </div>
                                                                                <div data-event="311864waptabgallery003001#rid=c70a8028880c54b72065f0f29684551e&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000031&amp;bid=3001095.3&amp;adp=987&amp;adm=2001">
                                                                                    <a class="exposure" data-log_code="311864waptabgallery003001#rid=c70a8028880c54b72065f0f29684551e&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000031&amp;bid=3001095.3&amp;adp=987&amp;adm=2001" href="https://m.mi.com/#/product/view?product_id=10000031" data-stat-id="54f92522dc529d81" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-54f92522dc529d81&#39;, &#39;/#/product/viewproduct_id=10000031&#39;, &#39;pcpid&#39;, &#39;311864waptabgallery003001#rid=c70a8028880c54b72065f0f29684551e&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000031&amp;bid=3001095.3&amp;adp=987&amp;adm=2001&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/7f7526f7-6d8c-ac62-36ad-16074020bd9b.webp"></span></a>
                                                                                </div>
                                                                                <!--v-repeat-body.gallery-->
                                                                            </div>
                                                                            <div class="swipe-nav"><span class="">&nbsp;</span><span class="">&nbsp;</span><span class="">&nbsp;</span><!--v-repeat-body.gallery--></div>
                                                                            <!--vue-if-->
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <div class="first">
                                                                            <div class="f-list">
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="0" class="body">
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                    <!--vue-if-->
                                                                                    <div class="divider_line" style="width: 100%; height: 0.16rem; border-bottom: 0.16rem solid #f5f5f5"></div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="1" class="body" style="width: 7.2rem; height: 0.8rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 0.8rem;">
                                                                                                <a class="exposure" data-log_code="311864waptabcells_auto_fill001003#rid=4b733036c6ec86f2a671e1bff239cb0d&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001097.1" data-stat-id="9ad86bd161144745" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-9ad86bd161144745&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;311864waptabcells_auto_fill001003#rid=4b733036c6ec86f2a671e1bff239cb0d&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001097.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/43912258-85b0-cb72-355d-b7e193979fd9!720x80.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="2" class="body" style="width: 7.2rem; height: 3.59rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 3.6rem;">
                                                                                                <a class="exposure" data-log_code="311864waptabcells_auto_fill001007#rid=e808264b4a20e6612b02ada95dafbab7&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=10000029&amp;bid=3005232.1" href="https://m.mi.com/#/product/view?product_id=10000029" data-stat-id="ada5e5b17e7c6c35" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-ada5e5b17e7c6c35&#39;, &#39;/#/product/viewproduct_id=10000029&#39;, &#39;pcpid&#39;, &#39;311864waptabcells_auto_fill001007#rid=e808264b4a20e6612b02ada95dafbab7&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=10000029&amp;bid=3005232.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/d42246a2-ea4c-b4be-c723-c1ca46dab08e!720x360.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--v-repeat-items-->
                                                                            </div>
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <!--vue-if-->
                                                                    </div>
                                                                    <div data-channel="1860" class="swipe-tab-content slick-slide" data-slick-index="2" aria-hidden="true" style="width: 400px;">
                                                                        <div class="slider" id="slider1860" style="height: 3.6rem">
                                                                            <div class="swipe-wrap">
                                                                                <div data-event="311860waptabgallery001001#rid=b5d725b0a0617bb53f325f46070d7851&amp;t=ad&amp;page=tab&amp;act=webview&amp;bid=3000504.1&amp;adp=1004&amp;adm=2151">
                                                                                    <a class="exposure" data-log_code="311860waptabgallery001001#rid=b5d725b0a0617bb53f325f46070d7851&amp;t=ad&amp;page=tab&amp;act=webview&amp;bid=3000504.1&amp;adp=1004&amp;adm=2151" href="https://s1.mi.com/m/ghd/2017/zl0712/index.html?needValidHost=false&amp;client_id=180100031058&amp;masid=17409.0072" data-stat-id="766a4481c4a2f970" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-766a4481c4a2f970&#39;, &#39;https://s1.mi.com/m/ghd/2017/zl0712/index.html&#39;, &#39;pcpid&#39;, &#39;311860waptabgallery001001#rid=b5d725b0a0617bb53f325f46070d7851&amp;t=ad&amp;page=tab&amp;act=webview&amp;bid=3000504.1&amp;adp=1004&amp;adm=2151&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/0393eb3f-a1af-9be1-3d36-2a90d649e55a.webp"></span></a>
                                                                                </div>
                                                                                <div data-event="311860waptabgallery002001#rid=40e9a1ebcb6cf87159b3120a9e1e903d&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=6079&amp;bid=3000504.2&amp;adp=1003&amp;adm=2082">
                                                                                    <a class="exposure" data-log_code="311860waptabgallery002001#rid=40e9a1ebcb6cf87159b3120a9e1e903d&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=6079&amp;bid=3000504.2&amp;adp=1003&amp;adm=2082" href="https://m.mi.com/#/product/view?product_id=6079" data-stat-id="f20d6c4909e5ea12" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-f20d6c4909e5ea12&#39;, &#39;/#/product/viewproduct_id=6079&#39;, &#39;pcpid&#39;, &#39;311860waptabgallery002001#rid=40e9a1ebcb6cf87159b3120a9e1e903d&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=6079&amp;bid=3000504.2&amp;adp=1003&amp;adm=2082&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/2e443a9b-34be-19c9-16b0-29297f864acb.webp"></span></a>
                                                                                </div>
                                                                                <!--v-repeat-body.gallery-->
                                                                            </div>
                                                                            <div class="swipe-nav"><span class="">&nbsp;</span><span class="">&nbsp;</span><!--v-repeat-body.gallery--></div>
                                                                            <!--vue-if-->
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <div class="first">
                                                                            <div class="f-list">
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="0" class="body">
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                    <!--vue-if-->
                                                                                    <div class="divider_line" style="width: 100%; height: 0.16rem; border-bottom: 0.16rem solid #f5f5f5"></div>
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                    <!--vue-if-->
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="1" class="body" style="width: 7.2rem; height: 0.8rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 0.8rem;">
                                                                                                <a class="exposure" data-log_code="311860waptabcells_auto_fill001003#rid=90b84959069dde671618e62b7aded1ad&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3000506.1" data-stat-id="9ad86bd161144745" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-9ad86bd161144745&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;311860waptabcells_auto_fill001003#rid=90b84959069dde671618e62b7aded1ad&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3000506.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/c21f909e46d307623279de7bc2706f56.png"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="list_two_type1">
                                                                                        <div class="box">
                                                                                            <div class="item J_linksign-customize">
                                                                                                <a class="exposure" data-log_code="311860waptablist_two_type1001004#rid=7261ec26e9cc0e2c2ebd57c3162a3f1f&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3001880.1&amp;pid=4348" href="https://m.mi.com/#/product/view?product_id=4348" data-stat-id="06b74bf62dba0129" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-06b74bf62dba0129&#39;, &#39;/#/product/viewproduct_id=4348&#39;, &#39;pcpid&#39;, &#39;311860waptablist_two_type1001004#rid=7261ec26e9cc0e2c2ebd57c3162a3f1f&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3001880.1&amp;pid=4348&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="big lazy" data-src="//i8.mifile.cn/v1/a1/5f78e5ba-cd16-0c67-3784-c64651596f94.webp?width=360&amp;height=360"><!--vue-if--><!--vue-if-->
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <div class="name">米家扫地机器人</div>
                                                                                                        <div class="brief">智商高，扫得干净扫得快</div>
                                                                                                        <div class="price">1699.00<!--vue-if--><!--vue-if--></div>
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <div class="item J_linksign-customize">
                                                                                                <a class="exposure" data-log_code="311860waptablist_two_type1002004#rid=6dce04afd4594d7cad072dae22a2f3c9&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3001880.2&amp;pid=3377" href="https://m.mi.com/#/product/view?product_id=3377" data-stat-id="d6766fba403d8012" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-d6766fba403d8012&#39;, &#39;/#/product/viewproduct_id=3377&#39;, &#39;pcpid&#39;, &#39;311860waptablist_two_type1002004#rid=6dce04afd4594d7cad072dae22a2f3c9&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3001880.2&amp;pid=3377&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="big lazy" data-src="//i8.mifile.cn/v1/a1/6f19ca85-2326-8e80-0ecc-16134c33a89b.webp?width=360&amp;height=360"><div class="tag">
                                                                                                            <img class="lazy" data-src="//i8.mifile.cn/v1/a1/e2a54df3-0df5-d530-a0b4-22c21f5552f5.webp">
                                                                                                        </div>
                                                                                                        <!--vue-if-->
                                                                                                        <!--vue-if-->
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <div class="name">小米净水器（厨下式）</div>
                                                                                                        <div class="brief">400加仑大流量，隐藏安装</div>
                                                                                                        <div class="price">1999.00<!--vue-if--><!--vue-if--></div>
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="list_one_type12">
                                                                                        <div class="item J_linksign-customize">
                                                                                            <a class="exposure" data-log_code="311860waptablist_one_type12001005#rid=248c784b9b4987b58317a592941527e5&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3003322.1&amp;pid=5004" href="https://m.mi.com/#/product/view?product_id=5004" data-stat-id="92e77cf0ec8184e5" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-92e77cf0ec8184e5&#39;, &#39;/#/product/viewproduct_id=5004&#39;, &#39;pcpid&#39;, &#39;311860waptablist_one_type12001005#rid=248c784b9b4987b58317a592941527e5&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3003322.1&amp;pid=5004&#39;]);">
                                                                                                <div class="flex">
                                                                                                    <div class="img">
                                                                                                        <img class="big lazy" data-src="//i8.mifile.cn/v1/a1/7a6f4f8a-922f-4a06-3d17-1ee72457fce6.webp"><!--vue-if--><!--vue-if-->
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <div class="l l1">
                                                                                                            <div class="name">小米移动电源2  20000mAh </div>
                                                                                                            <div class="price">149.00<!--vue-if--></div>
                                                                                                        </div>
                                                                                                        <div class="l l2">
                                                                                                            <div class="brief">超大电量，小长假出行必备</div>
                                                                                                            <!--vue-if-->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </a>
                                                                                        </div>
                                                                                        <!--v-repeat-body.items-->
                                                                                    </div>
                                                                                </div>
                                                                                <!--v-repeat-items-->
                                                                            </div>
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <!--vue-if-->
                                                                    </div>
                                                                    <div data-channel="1866" class="swipe-tab-content slick-slide" data-slick-index="3" aria-hidden="true" style="width: 400px;">
                                                                        <div class="slider" id="slider1866" style="height: 3.6rem">
                                                                            <div class="swipe-wrap">
                                                                                <div data-event="311866waptabgallery001001#rid=7aea9666f41b8a8ed486dbcab3b34c03&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=5348&amp;bid=3001605.1&amp;adp=985&amp;adm=1400">
                                                                                    <a class="exposure" data-log_code="311866waptabgallery001001#rid=7aea9666f41b8a8ed486dbcab3b34c03&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=5348&amp;bid=3001605.1&amp;adp=985&amp;adm=1400" href="https://m.mi.com/#/product/view?product_id=5348" data-stat-id="8a433095c7411695" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-8a433095c7411695&#39;, &#39;/#/product/viewproduct_id=5348&#39;, &#39;pcpid&#39;, &#39;311866waptabgallery001001#rid=7aea9666f41b8a8ed486dbcab3b34c03&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=5348&amp;bid=3001605.1&amp;adp=985&amp;adm=1400&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/d1639bf3-c4aa-60d4-5328-fe27ab6f2826.webp"></span></a>
                                                                                </div>
                                                                                <!--v-repeat-body.gallery-->
                                                                            </div>
                                                                            <!--vue-if-->
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <div class="first">
                                                                            <div class="f-list">
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="0" class="body" style="width: 7.2rem; height: 2.8rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 2.8rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001002#rid=1e9c83ef59408e6419b104d0ee9423af&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5351&amp;bid=3001663.1" href="https://m.mi.com/#/product/view?product_id=5351" data-stat-id="64bc6438df39f7e1" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-64bc6438df39f7e1&#39;, &#39;/#/product/viewproduct_id=5351&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001002#rid=1e9c83ef59408e6419b104d0ee9423af&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5351&amp;bid=3001663.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/4f2fbebb-6f6d-0a5b-abde-5ce916510822!720x280.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="1" class="body" style="width: 7.2rem; height: 0.8rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 0.8rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001003#rid=054e507fb582142eeacd522006a1a355&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001664.1" data-stat-id="9ad86bd161144745" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-9ad86bd161144745&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001003#rid=054e507fb582142eeacd522006a1a355&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001664.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/3f392af3206de6bee0b4c5c88036e88b.jpg"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="2" class="body" style="width: 7.2rem; height: 5.05rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001004#rid=e2ff6a77736058a2f550afb86a8d38ef&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5352&amp;bid=3001665.1" href="https://m.mi.com/#/product/view?product_id=5352" data-stat-id="fd4c4e3253c78d4f" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-fd4c4e3253c78d4f&#39;, &#39;/#/product/viewproduct_id=5352&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001004#rid=e2ff6a77736058a2f550afb86a8d38ef&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5352&amp;bid=3001665.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/a9929531-6736-5395-4ad2-f54c0c8a7976!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem; left: 3.6rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill002004#rid=597f67d9f49c78dd3a862092a20b4686&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5350&amp;bid=3001665.2" href="https://m.mi.com/#/product/view?product_id=5350" data-stat-id="48a1f84b0f0442ac" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-48a1f84b0f0442ac&#39;, &#39;/#/product/viewproduct_id=5350&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill002004#rid=597f67d9f49c78dd3a862092a20b4686&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5350&amp;bid=3001665.2&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/2f38100b-0fb0-babe-aa55-afb156780479!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="3" class="body" style="width: 7.2rem; height: 5.05rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001005#rid=31b175f7bcb62fe5d941788d0b2e2401&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5349&amp;bid=3003318.1" href="https://m.mi.com/#/product/view?product_id=5349" data-stat-id="aa080bf640e0be50" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-aa080bf640e0be50&#39;, &#39;/#/product/viewproduct_id=5349&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001005#rid=31b175f7bcb62fe5d941788d0b2e2401&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5349&amp;bid=3003318.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/2219a47a-75e6-302b-cc87-f4ef941abfba!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem; left: 3.6rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill002005#rid=2ed82bb53dcaf426ecc68fece1b8d331&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5353&amp;bid=3003318.2" href="https://m.mi.com/#/product/view?product_id=5353" data-stat-id="cbfeb2a0363880b6" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-cbfeb2a0363880b6&#39;, &#39;/#/product/viewproduct_id=5353&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill002005#rid=2ed82bb53dcaf426ecc68fece1b8d331&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5353&amp;bid=3003318.2&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/66a37503-31bb-38d2-001a-11caca1ba532!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="4" class="body" style="width: 7.2rem; height: 5.05rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001006#rid=e42791d3b4dd9e6c58ef7db49beb3d38&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=4140&amp;bid=3001667.1" href="https://m.mi.com/#/product/view?product_id=4140" data-stat-id="2b72f996ca2e5893" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-2b72f996ca2e5893&#39;, &#39;/#/product/viewproduct_id=4140&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001006#rid=e42791d3b4dd9e6c58ef7db49beb3d38&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=4140&amp;bid=3001667.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/bfc79663-5396-21c0-aba7-8b3d186869fa!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem; left: 3.6rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill002006#rid=119ece1514ea3afa8d8aa76513e147a3&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5354&amp;bid=3001667.2" href="https://m.mi.com/#/product/view?product_id=5354" data-stat-id="80a90f6093ce22f2" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-80a90f6093ce22f2&#39;, &#39;/#/product/viewproduct_id=5354&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill002006#rid=119ece1514ea3afa8d8aa76513e147a3&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5354&amp;bid=3001667.2&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/e8426b74-f8e1-6f92-e704-8f25873fb64f!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="5" class="body" style="width: 7.2rem; height: 0.8rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 0.8rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001007#rid=72b56d2db1c653dfb0e76303738d8365&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001669.1" data-stat-id="9ad86bd161144745" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-9ad86bd161144745&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001007#rid=72b56d2db1c653dfb0e76303738d8365&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001669.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/cf4ff323-bf00-be6f-e993-832385f28b12!720x80.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="6" class="body" style="width: 7.2rem; height: 4.5rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 4.5rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001008#rid=7b41aa0d6c2b3d4bee154bb73a8444b7&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5712&amp;bid=3001670.1" href="https://m.mi.com/#/product/view?product_id=5712" data-stat-id="945451d9b4855cdc" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-945451d9b4855cdc&#39;, &#39;/#/product/viewproduct_id=5712&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001008#rid=7b41aa0d6c2b3d4bee154bb73a8444b7&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5712&amp;bid=3001670.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/5572ec2a-fb80-caf0-f4fc-fbde3de6ea64!720x450.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="7" class="body" style="width: 7.2rem; height: 4.5rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 4.5rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001009#rid=0d95b28d44a3c68791c9bf65b80a4f4e&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5712&amp;bid=3003367.1" href="https://m.mi.com/#/product/view?product_id=5712" data-stat-id="945451d9b4855cdc" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-945451d9b4855cdc&#39;, &#39;/#/product/viewproduct_id=5712&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001009#rid=0d95b28d44a3c68791c9bf65b80a4f4e&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5712&amp;bid=3003367.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/a376e67f-ac00-d3f9-50d4-c6515f9069c9!720x450.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="8" class="body" style="width: 7.2rem; height: 4.4rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 4.4rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001010#rid=ae5111b70ec5ff06a4fb1ae12601b5d9&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5892&amp;bid=3001671.1" href="https://m.mi.com/#/product/view?product_id=5892" data-stat-id="e977cac8f0466836" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-e977cac8f0466836&#39;, &#39;/#/product/viewproduct_id=5892&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001010#rid=ae5111b70ec5ff06a4fb1ae12601b5d9&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=5892&amp;bid=3001671.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/556fb824-9c59-c86a-46de-b05da8fdcaae!720x440.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="9" class="body" style="width: 7.2rem; height: 0.8rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 0.8rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001011#rid=9ee99ef8dd44a16250d9a425a198549e&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001672.1" data-stat-id="9ad86bd161144745" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-9ad86bd161144745&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001011#rid=9ee99ef8dd44a16250d9a425a198549e&amp;t=normal&amp;page=tab&amp;act=other&amp;bid=3001672.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/d384f7bf-4b71-09b6-814d-609273b7c24d!720x80.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="10" class="body" style="width: 7.2rem; height: 5.05rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001012#rid=3e01bf1f397700ead34a7cce8d51fba8&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=4654&amp;bid=3001673.1" href="https://m.mi.com/#/product/view?product_id=4654" data-stat-id="8d81d007c0d92ceb" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-8d81d007c0d92ceb&#39;, &#39;/#/product/viewproduct_id=4654&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001012#rid=3e01bf1f397700ead34a7cce8d51fba8&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=4654&amp;bid=3001673.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/5d2c10c0-da0c-3646-585f-d1da0eb95f3d!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 5.05rem; left: 3.6rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill002012#rid=d2c54cdd2f6bbbf7ef03e901f7a841ac&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=4141&amp;bid=3001673.2" href="https://m.mi.com/#/product/view?product_id=4141" data-stat-id="5c81d6053979a093" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-5c81d6053979a093&#39;, &#39;/#/product/viewproduct_id=4141&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill002012#rid=d2c54cdd2f6bbbf7ef03e901f7a841ac&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=4141&amp;bid=3001673.2&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/0a1ce275-a5dc-f158-2530-e8116805efa8!360x505.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="11" class="body" style="width: 7.2rem; height: 4.4rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 4.4rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001013#rid=ea8acdd1ea1234586930e74db5723ba2&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=3381&amp;bid=3003282.1" href="https://m.mi.com/#/product/view?product_id=3381" data-stat-id="2209e2f3d5248f6f" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-2209e2f3d5248f6f&#39;, &#39;/#/product/viewproduct_id=3381&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001013#rid=ea8acdd1ea1234586930e74db5723ba2&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=3381&amp;bid=3003282.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/f02618c8-f9eb-778c-3eb8-f7ae27aa1993!720x440.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="divider_line" style="width: 100%; height: 0.10666666666666666rem; border-bottom: 0.10666666666666666rem solid #d5d9c1"></div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="13" class="body" style="width: 7.2rem; height: 4.94rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 4.94rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill001015#rid=b47ca4e622bfcdfca989137b42815ed5&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=3380&amp;bid=3001674.1" href="https://m.mi.com/#/product/view?product_id=3380" data-stat-id="264a03caea30ffe6" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-264a03caea30ffe6&#39;, &#39;/#/product/viewproduct_id=3380&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill001015#rid=b47ca4e622bfcdfca989137b42815ed5&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=3380&amp;bid=3001674.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/7020fecd-e304-376d-ffcc-f31eb010697e!360x494.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <div class="items J_linksign-customize" style="width: 3.6rem; height: 4.94rem; left: 3.6rem;">
                                                                                                <a class="exposure" data-log_code="311866waptabcells_auto_fill002015#rid=a51fcdb4f85811c7c76123b6ddfe98b6&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=3078&amp;bid=3001674.2" href="https://m.mi.com/#/product/view?product_id=3078" data-stat-id="b8ab6191af54d053" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-b8ab6191af54d053&#39;, &#39;/#/product/viewproduct_id=3078&#39;, &#39;pcpid&#39;, &#39;311866waptabcells_auto_fill002015#rid=a51fcdb4f85811c7c76123b6ddfe98b6&amp;t=normal&amp;page=tab&amp;act=product&amp;pid=3078&amp;bid=3001674.2&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="lazy" data-src="//i8.mifile.cn/v1/a1/b1da3f64-52d9-1e71-f533-519bf56a4a3a!360x494.webp"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>

                                                                                <!--v-repeat-items-->
                                                                            </div>
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <!--vue-if-->
                                                                    </div>
                                                                    <div data-channel="1865" class="swipe-tab-content slick-slide" data-slick-index="4" aria-hidden="true" style="width: 400px;">
                                                                        <div class="slider" id="slider1865" style="height: 3.6rem">
                                                                            <div class="swipe-wrap">
                                                                                <div data-event="311865waptabgallery001001#rid=f93439d0037639ee949908af918e3e38&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000061&amp;bid=3001006.1&amp;adp=991&amp;adm=1804">
                                                                                    <a class="exposure" data-log_code="311865waptabgallery001001#rid=f93439d0037639ee949908af918e3e38&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000061&amp;bid=3001006.1&amp;adp=991&amp;adm=1804" href="https://m.mi.com/#/product/view?product_id=10000061" data-stat-id="fe5a77de8b4f4763" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-fe5a77de8b4f4763&#39;, &#39;/#/product/viewproduct_id=10000061&#39;, &#39;pcpid&#39;, &#39;311865waptabgallery001001#rid=f93439d0037639ee949908af918e3e38&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=10000061&amp;bid=3001006.1&amp;adp=991&amp;adm=1804&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/2de44281cec804e3fbb91f336350cb84.jpg"></span></a>
                                                                                </div>
                                                                                <div data-event="311865waptabgallery002001#rid=52f0602de43a6563806e6c780c274e67&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=2170700004&amp;bid=3001006.2&amp;adp=992&amp;adm=1788">
                                                                                    <a class="exposure" data-log_code="311865waptabgallery002001#rid=52f0602de43a6563806e6c780c274e67&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=2170700004&amp;bid=3001006.2&amp;adp=992&amp;adm=1788" href="https://m.mi.com/#/product/view?product_id=2170700004" data-stat-id="3c8be5414086a3dc" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-3c8be5414086a3dc&#39;, &#39;/#/product/viewproduct_id=2170700004&#39;, &#39;pcpid&#39;, &#39;311865waptabgallery002001#rid=52f0602de43a6563806e6c780c274e67&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=2170700004&amp;bid=3001006.2&amp;adp=992&amp;adm=1788&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/ad04a4704313b6178b2081d813798dec.jpg"></span></a>
                                                                                </div>
                                                                                <!--v-repeat-body.gallery-->
                                                                            </div>
                                                                            <div class="swipe-nav"><span class="">&nbsp;</span><span class="">&nbsp;</span><!--v-repeat-body.gallery--></div>
                                                                            <!--vue-if-->
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <div class="first">
                                                                            <div class="f-list">
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="0" class="body">
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                    <div class="divider_line" style="width: 100%; height: 0.16rem; border-bottom: 0.16rem solid #f5f5f5"></div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="1" class="body" style="width: 7.2rem; height: 0.8rem;">
                                                                                            <div class="items J_linksign-customize" style="width: 7.2rem; height: 0.8rem;">
                                                                                                <a class="exposure" data-log_code="311865waptabcells_auto_fill001003#rid=fe62f683762b331996239b17e1b318c5&amp;t=normal&amp;page=tab&amp;act=cat&amp;bid=3001008.1" data-stat-id="9ad86bd161144745" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-9ad86bd161144745&#39;, &#39;&#39;, &#39;pcpid&#39;, &#39;311865waptabcells_auto_fill001003#rid=fe62f683762b331996239b17e1b318c5&amp;t=normal&amp;page=tab&amp;act=cat&amp;bid=3001008.1&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img src="./首页/a379499885bc8112acc4cc27cd091642.png"><!--vue-if-->
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <!--v-repeat-items-->
                                                                            </div>
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <!--vue-if-->
                                                                    </div>
                                                                    <div data-channel="1861" class="swipe-tab-content slick-slide" data-slick-index="5" aria-hidden="true" style="width: 400px;">
                                                                        <div class="slider" id="slider1861" style="height: 3.6rem; visibility: visible;">
                                                                            <div class="swipe-wrap" style="width: 400px;">
                                                                                <div data-event="311861waptabgallery001001#rid=32241640f1706b0c6c7aabfc17cd2bdc&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=4375&amp;bid=3003400.1&amp;adp=1043&amp;adm=2123" data-index="0" style="width: 400px; left: 0px; transition-duration: 0ms; transform: translate(0px, 0px) translateZ(0px);">
                                                                                    <a class="exposure" data-log_code="311861waptabgallery001001#rid=32241640f1706b0c6c7aabfc17cd2bdc&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=4375&amp;bid=3003400.1&amp;adp=1043&amp;adm=2123" href="https://m.mi.com/#/product/view?product_id=4375" data-stat-id="0c62b89d5ca48ec6" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-0c62b89d5ca48ec6&#39;, &#39;/#/product/viewproduct_id=4375&#39;, &#39;pcpid&#39;, &#39;311861waptabgallery001001#rid=32241640f1706b0c6c7aabfc17cd2bdc&amp;t=ad&amp;page=tab&amp;act=product&amp;pid=4375&amp;bid=3003400.1&amp;adp=1043&amp;adm=2123&#39;]);"><span class="imgurl">
                                                                                        <img class="cancel-touch" src="./首页/07eb8edd-aaa2-e614-c833-4ba59e6f2b19.webp"></span></a>
                                                                                </div>
                                                                                <!--v-repeat-body.gallery-->
                                                                            </div>
                                                                            <!--vue-if-->
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <div class="first">
                                                                            <div class="f-list">
                                                                                <div class="section">
                                                                                    <!--vue-if-->
                                                                                    <div class="cells_auto_fill">
                                                                                        <div data-index="0" class="body">
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                    <!--vue-if-->
                                                                                    <div class="divider_line" style="width: 100%; height: 0.16rem; border-bottom: 0.16rem solid #f5f5f5"></div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="list_two_type1">
                                                                                        <div class="box">
                                                                                            <div class="item J_linksign-customize">
                                                                                                <a class="exposure" data-log_code="311861waptablist_two_type1001003#rid=0d5928e09900f347101c328cfc39474d&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3002719.1&amp;pid=5365" href="https://m.mi.com/#/product/view?product_id=5365" data-stat-id="6bf5b4fd9471da15" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-6bf5b4fd9471da15&#39;, &#39;/#/product/viewproduct_id=5365&#39;, &#39;pcpid&#39;, &#39;311861waptablist_two_type1001003#rid=0d5928e09900f347101c328cfc39474d&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3002719.1&amp;pid=5365&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="big lazy" data-src="//i8.mifile.cn/v1/a1/375f60e3-42e4-f0b1-692f-a9f0e7829149.webp?width=360&amp;height=360"><!--vue-if--><!--vue-if-->
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <div class="name">米家运动鞋智能版</div>
                                                                                                        <div class="brief">新时尚，“芯”改变</div>
                                                                                                        <div class="price">249.00<!--vue-if--><!--vue-if--></div>
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <div class="item J_linksign-customize">
                                                                                                <a class="exposure" data-log_code="311861waptablist_two_type1002003#rid=98051a63518ed32141dc402517e84350&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3002719.2&amp;pid=2839" href="https://m.mi.com/#/product/view?product_id=2839" data-stat-id="39c7092ebd346e50" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-39c7092ebd346e50&#39;, &#39;/#/product/viewproduct_id=2839&#39;, &#39;pcpid&#39;, &#39;311861waptablist_two_type1002003#rid=98051a63518ed32141dc402517e84350&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3002719.2&amp;pid=2839&#39;]);">
                                                                                                    <div class="img">
                                                                                                        <img class="big lazy" data-src="//i8.mifile.cn/v1/a1/d5899104-e7a8-6d82-0cc5-11c1dd6a7f19.webp?width=360&amp;height=360"><!--vue-if--><!--vue-if-->
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <div class="name">极简都市双肩包</div>
                                                                                                        <div class="brief">方形立体设计</div>
                                                                                                        <div class="price">149.00<!--vue-if--><!--vue-if--></div>
                                                                                                    </div>
                                                                                                </a>
                                                                                            </div>
                                                                                            <!--v-repeat-body.items-->
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                                <div class="section">
                                                                                    <div class="list_one_type12">
                                                                                        <div class="item J_linksign-customize">
                                                                                            <a class="exposure" data-log_code="311861waptablist_one_type12001004#rid=408ee00f5288c788c03197b9f3609543&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3002718.1&amp;pid=5673" href="https://m.mi.com/#/product/view?product_id=5673" data-stat-id="4a8227b0943b89c5" onclick="_msq.push([&#39;trackEvent&#39;, &#39;aa6b36fbc8a2bd55-4a8227b0943b89c5&#39;, &#39;/#/product/viewproduct_id=5673&#39;, &#39;pcpid&#39;, &#39;311861waptablist_one_type12001004#rid=408ee00f5288c788c03197b9f3609543&amp;t=product&amp;page=tab&amp;act=cat&amp;bid=3002718.1&amp;pid=5673&#39;]);">
                                                                                                <div class="flex">
                                                                                                    <div class="img">
                                                                                                        <img class="big lazy" data-src="//cdn.cnbj0.fds.api.mi-img.com/b2c-mimall-media/1844e6e6533bd4c20e3dbc0fba23bd17.jpg"><!--vue-if--><!--vue-if-->
                                                                                                    </div>
                                                                                                    <div class="info">
                                                                                                        <div class="l l1">
                                                                                                            <div class="name">TS 尼龙偏光太阳镜米家定制版</div>
                                                                                                            <div class="price">199.00<span>起</span><!--vue-if--></div>
                                                                                                        </div>
                                                                                                        <div class="l l2">
                                                                                                            <div class="brief">尼龙偏光TM 镜片，有效隔离眩光</div>
                                                                                                            <!--vue-if-->
                                                                                                        </div>
                                                                                                    </div>
                                                                                                </div>
                                                                                            </a>
                                                                                        </div>
                                                                                        <!--v-repeat-body.items-->
                                                                                    </div>
                                                                                </div>
                                                                                <!--v-repeat-items-->
                                                                            </div>
                                                                        </div>
                                                                        <!--vue-if-->
                                                                        <!--vue-if-->
                                                                    </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <a href="javascript:void(0);" id="top">
                <img src="assets/mi/images/top.png">
            </a>
            <div class="loading2" style="display: none;">
                <div class="loading-logo">
                    <div id="globalLoadingAnim" class="loading-anim"></div>
                </div>
            </div>
            <div class="footer">
                <ul>
                    <li><a href="#">
                        <div class="nav">
                            <div class="ih ispr"></div>
                            <p>首页</p>
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="nav">
                            <div class="ic ispr"></div>
                            <p>分类</p>
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="nav">
                            <div class="is ispr"></div>
                            <p>购物车</p>
                        </div>
                    </a></li>
                    <li><a href="#">
                        <div class="nav">
                            <div class="if ispr"></div>
                            <p>我的</p>
                        </div>
                    </a></li>
                </ul>
            </div>
        </div>
    </div>
    <div id="info" style="display: none;"></div>
    <%--    <script src="./首页/mod-store_dd2d846.js"></script>
    <script src="./首页/jweixin-1.0.0_c1c3160.js"></script>--%>
    <!-- mae_monitor-->
    <div class="gmu-media-detect" id="gmu-media-detect0"></div>
</body>
</html>
