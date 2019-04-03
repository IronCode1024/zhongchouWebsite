<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserInfoAdmin.aspx.cs" Inherits="zhongchouWeb.Administrators.UserInfoAdmin" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="AdminContent/CSS/AdminOverallSituationStyle.css" rel="stylesheet" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <title>众筹网用户信息-管理员</title>
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


     <div style="margin: 0px auto; width: 200px;">
            <h1>用户信息</h1>
        </div>
    <div class="InfoDataShowBox">
        <form id="form1" runat="server">
            <div>
                <div class="InfoDataBox">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <HeaderTemplate>
                            <table class="TableBox">
                                <tr>
                                    <th style="width: 0%;">编号</th>
                                    <th style="width: 0%;">用户名</th>
                                    <th style="width: 0%;">性别</th>
                                    <th style="width: 0%;">邮箱</th>
                                    <th style="width: 0%;">密码</th>
                                    <th style="width: 0%;">头像路径</th>
                                    <th style="width: 0%;">在线状态</th>
                                    <th style="width: 0%;">操作</th>
                                </tr>
                        </HeaderTemplate>

                        <ItemTemplate>
                            <%--<table class="ContentTableBox">--%>
                            <tr>
                                <td><%#Eval("Id") %></td>
                                <td><%#Eval("UserName") %></td>
                                <td><%#Eval("UserSex") %></td>
                                <td><%#Eval("UserEmail") %></td>
                                <td><%#Eval("UserPassword") %></td>
                                <td><%#Eval("UserHeadPortrait") %></td>
                                <td><%#Eval("State") %></td>
                                <td></td>
                            </tr>
                        </ItemTemplate>

                        <FooterTemplate>
                            </table>
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
            <div class="AspNetPaging">
                <div class="pull-right">
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="10" Width="100%" UrlPaging="true" LayoutType="Ul" OnPageChanged="AspNetPager1_PageChanged" CssClass="anpager" CurrentPageButtonClass="cpb">
                        <%--OnPageChanged="AspNetPager1_PageChanged"   Width="100%" UrlPaging="true" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0"
                            PageSize="1"每页数据行数  --%>
                    </webdiyer:AspNetPager>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
