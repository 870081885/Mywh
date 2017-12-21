<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo1.demo" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>导航</title>

    <link href="../../assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/demo-styles.css" />
</head>
<body>
    <div class="demo-wrapper" style="height: 100%;">
        <div class="page todos">
            <h2 class="page-title">My Todos</h2>
            <ul contenteditable>
                <li>Finish my 3D demo<span class="delete-button">x</span></li>
                <li>Design my blog<span class="delete-button">x</span></li>
                <li>Buy groceries<span class="delete-button">x</span></li>
                <li>Finish my todo app<span class="delete-button">x</span></li>
                <li>Organize my bookmarks<span class="delete-button">x</span></li>
            </ul>
            <div class="close-button">x</div>
        </div>

        <div class="page random-page">
            <h2 class="page-title">Some Awesome App!</h2>
            <div class="close-button">x</div>
        </div>
        <%----------------------------------------------------------------------------------------------------%>
        <div class="dashboard clearfix">
            <div class="col1 clearfix fadeInForward-1">
                <div class="big col1-1-1" data-page="todos">
                    <i class="fa fa-user-circle icon-font" aria-hidden="true"></i>
                    <p>
                        梦影雾花个人博客
                        <span class="col1-1-1-span">一款优质的个人博客</span>
                    </p>
                </div>
                <div class="small col1-2-1">
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                </div>
                <div class="small last col1-2-2" data-page="random-page" >
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                </div>            
                <div class="big col1-3-1" data-page="random-page">
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                    <p>暂定</p>
                </div>
            </div>
            <div class="col2 clearfix fadeInForward-2">
                <div class="big col2-1-1" data-page="random-page">
                    <i class="fa fa-star-o icon-font" aria-hidden="true"></i>
                    <p>
                        Mywh.Net
                        <span class="col2-1-1-span">扁平化权限管理框架</span>
                    </p>
                </div>        
                <div class="big col2-2-1" data-page="random-page">
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                    <p>暂定</p>
                </div>
                <div class="small col2-3-1" data-page="random-page">
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                </div>
                <div class="small last col2-3-2" data-page="random-page">
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                </div>
            </div>
            <div class="col3 clearfix fadeInForward-3">
                <div class="big col3-1-1" data-page="random-page">
                    <i class="fa fa-cog icon-font" aria-hidden="true"></i>
                    <p>开发工具</p>
                </div>
                <div class="small col3-2-1" data-page="random-page">
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                </div>
                <div class="small last col3-2-2" data-page="random-page">
                    <i class="fa fa-smile-o icon-font" aria-hidden="true"></i>
                </div>
                <div class="big col3-3-1" data-page="random-page">
                    <i class="fa fa-cog icon-font" aria-hidden="true"></i>
                    <p>开发工具</p>
                </div>    
            </div>
        </div>
        <mywh:footer ID="Footer1" runat="server" />
    </div>

    <script src="js/jquery-1.8.2.min.js"></script>
    <script type="text/javascript">
        //显示
        function showDashBoard() {
            for (var i = 1; i <= 3; i++) {
                $('.col' + i).each(function () {
                    $(this).addClass('fadeInForward-' + i).removeClass('fadeOutback');
                });
            }
        }
        //隐藏
        function fadeDashBoard() {
            for (var i = 1; i <= 3; i++) {
                $('.col' + i).addClass('fadeOutback').removeClass('fadeInForward-' + i);
            }
        }
        //打开事件
        $('.big, .small').each(function () {
            var $this = $(this), page = $this.data('page');
            $this.on('click', function () {
                $('.page.' + page).addClass('openpage');
                fadeDashBoard();
            })
        });
        //关闭事件
        //slideDemoOverlayUp
        //slidePageInFromLeft
        $('.close-button').click(function () {
            $(this).parent().addClass('slidePageLeft').one("click", function (e) {
                $(this).removeClass('slidePageLeft').removeClass('openpage');
            });
            showDashBoard();
        });
  </script>
</body>
</html>
