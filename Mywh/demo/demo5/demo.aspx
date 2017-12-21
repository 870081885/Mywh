<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo5.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="webUploader/image-upload/style.css" rel="stylesheet" />
    <link href="webUploader/webuploader.css" rel="stylesheet" />
    <script src="/assets/js/jquery.min.js"></script>
    <script src="/assets/plugins/layer/layer.js"></script>
    <script src="webUploader/webuploader.min.js"></script>
    <script src="webUploader/extend-webuploader.js"></script>
    <script>
        // 全局变量
        var global = {
            uploader: null
        };
        window.webuploader = {
            config: {
                //thumbWidth: 110, //缩略图宽度，可省略，默认为110
                //thumbHeight: 110, //缩略图高度，可省略，默认为110
                wrapId: 'uploader' //必填
            },
            //处理客户端新文件上传时，需要调用后台处理的地址, 必填
            uploadUrl: './Demo.ashx?action=upload',
            //处理客户端原有文件更新时的后台处理地址，必填
            updateUrl: './Demo.ashx?action=test',
            //当客户端原有文件删除时的后台处理地址，必填
            removeUrl: './Demo.ashx?action=test',
            //初始化客户端上传文件，从后台获取文件的地址, 可选，当此参数为空时，默认已上传的文件为空
            initUrl: './Demo.ashx?action=init'
        }
        function save() {
            var list = $("#uploader").find("li");
            var imgsSrc = "";
            var imgsRemark = "";
            $.each(list, function (i, item) {
                imgsSrc += $(item).find(".hidImg").val() + ",";
                imgsRemark += $(item).find(".remark").attr("title") + ",";
            });
            layer.msg("图片路径：" + imgsSrc + "<br/>图片备注：" + imgsRemark)
        }
        
    </script>

</head>
<body>
    <form id="form1" runat="server">
        <div id="uploader">
            <div class="queueList">
                <div id="dndArea" class="placeholder">
                    <div id="filePicker"></div>
                    <p>或将照片拖到这里，单次最多可选300张</p>
                </div>
            </div>
            <div class="statusBar" style="display: none;">
                <div class="progress">
                    <span class="text">0%</span>
                    <span class="percentage"></span>
                </div>
                <div class="info"></div>
                <div class="btns">
                    <div id="filePicker2"></div>
                    <div class="uploadBtn">开始上传</div>
                </div>
            </div>
        </div>
        <br/>
         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
       <input type="button" style="width:100px;height:40px;" value="保存" onclick="save();" />
    </form>
</body>
</html>
