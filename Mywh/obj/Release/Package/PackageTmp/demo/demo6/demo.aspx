<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="demo.aspx.cs" Inherits="Mywh.demo.demo6.demo" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <script src="device.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
    <script type="text/javascript">
        var isMobile = device.mobile(),
             isTable = device.tablet();

        if(isMobile || isTable){
            alert("手机");
        }
        else{
            alert("电脑");
        }
    </script>
</body>
</html>
