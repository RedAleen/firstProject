<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="first.aspx.cs" Inherits="ajax.first" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
    <form runat="server">

        <div>
            <input type="text" id="txt" />
            <input type="button" id="btn" value="获取" />     
        </div>

    </form>
    <script type="text/javascript">
        $('#btn').click(function () {
            //post参数
            var url = "/Handlers/ChatHandler.ashx";
            var args = {
                m: $('#txt').val(),
                n: 'hello'
            };
            //post请求
            $.post(url, args, function (data) {
                var o = eval("(" + data + ")");
                alert(o.msg);
            });
        });
    </script>
</body>
</html>
