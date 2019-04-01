<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectInfoAdmin.aspx.cs" Inherits="zhongchouWeb.Administrators.ProjectInfoAdmin" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="AdminContent/CSS/AdminOverallSituationStyle.css" rel="stylesheet" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <title>众筹网项目信息-管理员</title>
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
    <div style="margin:0px auto;width: 1500px">
        <div style="margin: 0px auto; width: 200px;">
            <h1>项目信息</h1>
        </div>
        <form id="form1" runat="server">

            <div class="InfoDataBox" style="margin:0px auto;width: 1500px"> <!--设置宽度-->
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <table class="TableBox">
                            <tr>
                                <th style="width: 0%;">编号</th>
                                <th style="width: 0%;">项目封面</th>
                                <th style="width: 0%;">关联用户表</th>
                                <th style="width: 0%;">发起人邮箱</th>
                                <th style="width: 0%;">项目类型</th>
                                <th style="width: 0%;">项目名称</th>
                                <th style="width: 0%;">目标众筹天数</th>
                                <th style="width: 0%;">项目概述</th>
                                <th style="width: 0%;">项目详情（内容）</th>
                                <th style="width: 0%;">目标金额</th>
                                <th style="width: 0%;">项目支持人数</th>
                                <th style="width: 0%;">已筹金额</th>
                                <th style="width: 0%;">项目发起地址</th>
                                <th style="width: 0%;">发布状态</th>
                                <th style="width: 0%;">项目更新时间</th>
                                <th style="width: 0%;">发布日期（发布日的日期）</th>
                            </tr>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <%--<table class="ContentTableBox">--%>
                        <tr>
                            <td><%#Eval("ProjectID") %></td>
                            <td><%#Eval("ProjectCover") %></td>
                            <td><%#Eval("UserID") %></td>
                            <td><%#Eval("UserEmail") %></td>
                            <td><%#Eval("ProjectType") %></td>
                            <td><%#Eval("ProjectName") %></td>
                            <td><%#Eval("ProjectTargetDays") %></td>
                            <td><%#Eval("ProjectOverview") %></td>
                            <td><%#Eval("ProjectDetailedPictures") %></td>
                            <td><%#Eval("TargetAmountOfMoney") %></td>
                            <td><%#Eval("AlreadyRaisedMoney") %></td>
                            <td><%#Eval("ProjectAddress") %></td>
                            <td><%#Eval("NumberOfProjectSupport") %></td>
                            <td><%#Eval("ProjectUpdateTime") %></td>
                            <td><%#Eval("ReleaseStatus") %></td>

                            <td></td>
                        </tr>
                    </ItemTemplate>

                    <FooterTemplate>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>
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
