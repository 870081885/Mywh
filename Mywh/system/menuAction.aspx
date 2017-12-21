<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="menuAction.aspx.cs" Inherits="Mywh.system.menuAction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="/assets/plugins/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Mainly scripts -->

    <script src="/assets/js/jquery-2.1.1.js" type="text/javascript"></script>
    <script src="/assets/js/isLogin.js"></script>
    <script src="/assets/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <link href="/assets/plugins/DataTables/css/dataTables.bootstrap.min.css" rel="stylesheet"
        type="text/css" />
    <script src="/assets/plugins/DataTables/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="/assets/plugins/DataTables/js/dataTables.bootstrap.min.js" type="text/javascript"></script>
</head>
<body>
    <table id="tbMenuAction" class="table table-striped table-bordered" cellspacing="0"width="100%">
        <thead>
            <tr>
                <th>
                    <input id="checkall" type="checkbox" />
                </th>
                <th>
                    id
                </th>
                <th>
                    动作名称
                </th>
                <th>
                    动作方法
                </th>
            </tr>
        </thead>
     </table>
</body>
    <script type="text/javascript">
        // 全局变量
        var global = {
            menuId: <%=Request.QueryString["menuId"] %>,
            tbMenuAction: null
        };
        $(function () {
            getActionByMenu();
        });
        //全选
        function checkAll() {
            $("#checkall").click(function () {
                if ($(this).prop("checked") == true) {
                    $("input[name='action']").prop("checked", true);
                }
                else {
                    $("input[name='action']").prop("checked", false);
                }
            });

            $("input[name='action']").click(function () {
                if ($("input[name='action']").length == $("input[name='action']:checked").length) {
                    $("#checkall").prop("checked", true);
                }
                else {
                    $("#checkall").prop("checked", false);
                }
            });
        }
        //获取动作列表
        function getActionByMenu() {
            global.tbMenuAction = $('#tbMenuAction').DataTable({
                "searching": false,
                "processing": true,
                "serverSide": true,
                "order": [[1, 'asc']],
                "ajax": {
                    "url": "/ajax/System.ashx",
                    "type": "POST",
                    "data": function (d) {
                        d.action = "getActionByMenu";
                        d.menuId = global.menuId;
                    }
                },
                "lengthMenu": [[999999], ["All"]],
                "language": {
                    "url": "/assets/plugins/DataTables/language.txt"
                },
                "columns": [
                        {
                            "data": "checkStatus",
                            "orderable": false, // 禁用排序
                            "render": function (data, type, full, meta) {
                                ss = "<input name=\"action\" type=\"checkbox\" data-id=\"" + full.id + "\" />";
                                if (data == 1) {
                                    ss = "<input name=\"action\" checked=\"checked\" type=\"checkbox\" data-id=\"" + full.id + "\" />";
                                }
                                return ss;
                            }
                        },
                        { "data": "id" },
                        { "data": "actionName" },
                        { "data": "actionFunc" }
                    ],
                "dom": 't',
                "initComplete": function (settings, json) {
                    checkAll();
                }
            });
        }
        //根据菜单获取动作
        function getCheckedActionByMenu()
        {
            var actionList = $('input[name="action"]:checked');
            var actionString = '';
            if (actionList.length == 0) {
                window.parent.layer.msg("请至少选择一个动作！");
                return;
            }
            for (var i = 0; i < actionList.length; i++) {
                actionString += $(actionList[i]).data("id") + ",";
            }
            return actionString;
        }

    </script>
</html>
