<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="helloworld.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Ajax</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js"></script>
    <script type="text/javascript">
        function loadXMLDoc()
        {
            var xmlhttp;
            if (window.XMLHttpRequest) {
                xmlhttp = new XMLHttpRequest();
            }
            else {
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }
            xmlhttp.onreadystatechange = function () {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    document.getElementById("myDiv").innerHTML = xmlhttp.responseText;
                }
            }
            xmlhttp.open("GET", "./ajax_info.txt", true);
            xmlhttp.send();
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div id="myDiv">
      <h2>使用Ajax修改该文本的内容</h2>
    </div>
        <button type="button" onclick="loadXMLDoc();">修改内容</button>
    </form>
</body>
</html>
