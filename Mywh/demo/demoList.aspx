<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demoList.aspx.cs" Inherits="Mywh.demo.demoList" %>

<!DOCTYPE html>
<html>
<head>
    <title>Demo列表</title>
    <link href="/assets/plugins/DataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
        type="text/css" />
    <script src="/assets/plugins/DataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/DataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
    <script src="/assets/inspinia/js/inspinia.js" type="text/javascript"></script>
</head>
<!--防止列表下出现阴影 -->
<body>
    <div class="row wrapper border-bottom white-bg page-heading">
        <div class="col-sm-4">
            <h2>Demo列表</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="#">Demo</a>
                </li>
                <li class="active">
                    <strong>Demo列表</strong>
                </li>
            </ol>
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Demo列表</h5>
                        <div class="ibox-tools">
                            <a class="collapse-link" title="折叠">
                                <i class="fa fa-chevron-up"></i>
                            </a>
                            <%--<a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>--%>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <table id="tbDemo" class="table table-striped table-bordered" cellspacing="0"
                            width="100%">
                            <thead>
                                <tr>
                                    <th>id</th>
                                    <th>Demo名称</th>
                                </tr>
                            </thead>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
<script type="text/javascript">
    // 全局变量
    var global = {
        tbDemo: null
    };
    $(function () {
        getDemoList();
    });
    //获取Demo列表
    function getDemoList() {
        var dataSet = [
            ['1', 'win8风'],
            ['2', '幻灯片'],
            ['3', '二维码生成'],
            ['4', '滑动导航'],
            ['5', 'webUploader百度多图上传插件'],
            ['6', '设备判断'],
            ['7', '表白插件']
        ];
        global.tbDemo = $('#tbDemo').DataTable({
            "data": dataSet,       
            "language": {
                "url": "/assets/plugins/DataTables/language.txt"
            },
             "columnDefs": [{
                 "targets": 1,
                 "render": function (data, type, row) {
                     return "<a href='/demo/demo" + row[0]+"/demo.aspx' target='_blank'>" + data + "</a>";
                 }
            }]
        });
    }
</script>
</html>
