<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="roleList.aspx.cs" Inherits="Mywh.system.roleList" %>

<!DOCTYPE html>
<html>
<head>
    <title>角色列表</title>
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
            <h2>角色列表</h2>
            <ol class="breadcrumb">
                <li>
                    <a href="#">系统管理</a>
                </li>
                <li class="active">
                    <strong>角色列表</strong>
                </li>
            </ol>
        </div>
    </div>

    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-md-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>角色列表</h5>
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
                        <div class="form-inline">
                            <div class="form-group">
                                <label class="sr-only" for="userType">
                                    角色名称</label>
                                <input type="text" class="form-control" id="roleName" placeholder="角色名称" />
                            </div>
                            <button type="button" class="btn btn-success search btn-sm" onclick="search()">
                                查 询</button>
                        </div>
                        <br />  
                        <table id="tbRole" class="table table-striped table-bordered" cellspacing="0"
                            width="100%">
                            <thead>
                                <tr>
                                    <th>
                                        id
                                    </th>
                                    <th>
                                        角色名称
                                    </th>
                                    <th>
                                        状态
                                    </th>
                                    <th>
                                        操作
                                    </th>
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
        tbRole: null
    };
    $(function () {
        getRoleList();
    });
    //获取角色列表
    function getRoleList() {
        global.tbRole = $('#tbRole').DataTable({
            "searching": false,
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "/ajax/System.ashx",
                "type": "POST",
                "data": function (d) {
                    d.action = "getRoleList";
                    d.roleName = escape($("#roleName").val().trim());
                }
            },
            "lengthMenu": [15, 30, 50, 100],
            "language": {
                "url": "/assets/plugins/DataTables/language.txt"
            },
            "columns": [
                    { "data": "id" },
                    { "data": "roleName" },
                    {
                        "data": "status",
                        "render": function (data, type, full, meta) {
                            var ss = "<span class=\"label label-danger\">禁用</span>";
                            if (data == 1) {
                                ss = "<span class=\"label label-primary\">启用</span>";
                            }
                            return ss;
                        }
                    },
                    {
                        "orderable": false, // 禁用排序
                        "DefaultContent": "",
                        "render": function (data, type, full, meta) {
                            var ss = "<a href=\"javascript:void(0)\" onclick=\"addOrEditInfo(" + full.id + ",'" + escape(full.roleName) + "'," + full.status + ")\">" +
                                "<span class=\"fa fa-pencil\" aria-hidden=\"true\" title=\"编辑\"></span></a>"+
                                "<a href=\"javascript:void(0)\" onclick=\"deleteInfo(" + full.id + ",'','')\">" +
                                "<span class=\"fa fa-trash\" aria-hidden=\"true\" style=\"padding-left:10px\" title=\"删除\"></span></a>";
                            return ss;
                        }
                    }
                ],
            "dom": '<"#tablesTools">lrtip',
            "initComplete": function (settings, json) {
                $("#tablesTools").append(
                    "<button id=\"btnAdd\" type=\"button\" class=\"btn btn-info btn-sm\" onclick=\"addOrEditInfo(0,'')\">新增</button>"
                    );
                $("#tablesTools").css("float", "right");
            }
        });
    }
    //新增或编辑
    function addOrEditInfo(roleId, roleName,status) {
        $("#mainContent").load("/system/roleAdd.aspx?roleId=" + roleId + "&roleName=" + roleName + "&status=" + status);
    }
    //删除
    function deleteInfo(roleId) {
        window.layer.confirm('确定要删除此角色吗？', {
            btn: ['确定', '取消'] //按钮
        }, function () {
            $.ajax({
                type: "post",
                url: "/ajax/System.ashx",
                data: { action: 'deleteRole', 'id': roleId },
                async: false,
                success: function (data) {
                    var my = eval("(" + data + ")");
                    if (my.flag == -100) {
                        window.layer.msg(my.msg);
                        window.location.href = "/login.aspx";
                        return;
                    }
                    else if (my.flag == 1) {
                        window.layer.msg(my.msg);
                        global.tbRole.ajax.reload(null, false);
                    }
                    else {
                        window.layer.msg(my.msg);
                    }
                }
            });
        });
    }
    //查询
    function search() {
        global.tbRole.ajax.reload(null, true);
    }
</script>
</html>
