<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserCommentaryInfoAdmin.aspx.cs" Inherits="zhongchouWeb.Administrators.UserCommentaryInfoAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <title>众筹网用户评论信息-管理员</title>
</head>
<body>
    <!-- 顶部导航 -->
    <div class="headerpage"></div>
    <!--顶部导航 over-->

    <script>
        $(function () {
            /*公共部分
             * 导航栏
             * footer CopyRight
             */
            $(".headerpage").load("HeaderAdmin.aspx");//引用页眉
            //$(".footerpage").load("footer.html");
        });
    </script>


    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
</body>
</html>
