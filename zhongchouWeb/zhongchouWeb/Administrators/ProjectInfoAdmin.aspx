<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProjectInfoAdmin.aspx.cs" Inherits="zhongchouWeb.Administrators.ProjectInfoAdmin" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="AdminContent/CSS/AdminOverallSituationStyle.css" rel="stylesheet" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <title>众筹网项目信息-管理员</title>
    <style type="text/css">
        /*编辑样式*/
        .operation {
            width: 50px;
            text-align: center;
        }

        .edit {
            cursor: pointer;
            border: none;
            border-radius: 10px;
            background-color: none;
        }

            .edit:hover {
                color: #f16e0c;
            }

        /*编辑弹框样式*/
        .ProjectEdits {
            display: none;
            background-color: #FFFFFF;
            z-index: 111;
            width: 400px;
            height: 200px;
            position: fixed;
            top: 0;
            right: 0;
            left: 0;
            bottom: 0;
            margin: auto;
        }

        .bgLayers {
            display: none;
            background-color: #B3B3B3;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            z-index: 10;
            -moz-opacity: 0.8;
            opacity: .80;
            filter: alpha(opacity=80); /* 只支持IE6、7、8、9 */
        }

        .close {
            border-top-left-radius:10px;
            text-align: right;
            margin-right: 5px;
            background-color: #F8F8F8;
        }
        .content {
            margin-top:20px;
            margin-left:-30px;
        }
        .contentBox {
            border-radius:10px;
            resize:both;
            width:150px;
            height:30px;
        }
    </style>
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
    <div style="margin: 0px auto; width: 1500px">
        <div style="margin: 0px auto; width: 200px;">
            <h1>项目信息</h1>
        </div>
        <form id="form1" runat="server">

            <div class="InfoDataBox" style="margin: 0px auto; width: 1500px">
                <!--设置宽度-->
                <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                    <HeaderTemplate>
                        <table class="TableBox">
                            <tr>
                                <th style="width: 0%;">编号</th>
                                <%--<th style="width: 0%;">项目封面</th>--%>
                                <th style="width: 0%;">关联用户表</th>
                                <th style="width: 0%;">发起人邮箱</th>
                                <th style="width: 0%;">项目类型</th>
                                <th style="width: 0%;">项目名称</th>
                                <th style="width: 0%;">目标众筹天数</th>
                                <th style="width: 0%;">项目概述</th>
                                <%--<th style="width: 0%;">项目详情（内容）</th>--%>
                                <th style="width: 0%;">目标金额</th>
                                <th style="width: 0%;">已筹金额</th>
                                <th style="width: 0%;">项目支持人数</th>
                                <th style="width: 0%;">项目发起地址</th>
                                <th style="width: 0%;">发布状态</th>
                                <th style="width: 0%;">项目更新时间</th>
                                <th style="width: 0%;">发布日期（发布日的日期）</th>
                                <th style="width: 0%;">操作</th>
                    </HeaderTemplate>

                    <ItemTemplate>
                        <%--<table class="ContentTableBox">--%>
                        <tr>
                            <td><%#Eval("ProjectID") %></td>
                            <%--<td><%#Eval("ProjectCover") %></td>--%>
                            <td><%#Eval("UserID") %></td>
                            <td><%#Eval("UserEmail") %></td>
                            <td><%#Eval("ProjectType") %></td>
                            <td><%#Eval("ProjectName") %></td>
                            <td><%#Eval("ProjectTargetDays") %></td>
                            <td><%#Eval("ProjectOverview") %></td>
                            <%--<td><%#Eval("ProjectDetailedPictures") %></td>--%>
                            <td><%#Eval("TargetAmountOfMoney") %></td>
                            <td><%#Eval("AlreadyRaisedMoney") %></td>
                            <td><%#Eval("NumberOfProjectSupport") %></td>
                            <td><%#Eval("ProjectAddress") %></td>
                            <td><%#Eval("ReleaseStatus") %></td>
                            <td><%#Eval("ProjectUpdateTime") %></td>
                            <td><%#Eval("ReleaseDate") %></td>

                            <td style="text-decoration: underline; color: blue;" class="operation">
                                <%--<asp:LinkButton CssClass="edit" ID="LinkButton1" runat="server" CommandArgument="Editbtn"></asp:LinkButton>--%>
                                <asp:Button ID="Button1" CssClass="edit" runat="server" Text="编辑" CommandName="Editbtns" CommandArgument='<%#Eval("ProjectID") %>' />
                            </td>
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


            <%--编辑弹框--%>
            <div id="bgLayer" class="bgLayers" runat="server"></div>
            <div id="ProjectEditsBox" class="ProjectEdits" runat="server">

                <div>
                    <div class="close">
                        <a href="javascript:void(0)" onclick="closeBox()">关闭</a>
                    </div>
                    <div class="content">
                        &nbsp;&nbsp;&nbsp;用户名：<asp:TextBox CssClass="contentBox" ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        发布状态：<%--<asp:TextBox CssClass="contentBox" ID="TextBox2" runat="server"></asp:TextBox>--%>
                        <asp:DropDownList ID="DropDownList1" CssClass="contentBox" runat="server"></asp:DropDownList>
                        <br />
                        <br />
                        <asp:Button ID="EditUpdatebtn" runat="server" Text="确定" OnClientClick="return true" OnClick="EditUpdatebtn_Click" />
                    </div>
                </div>
            </div>
            <script>
                /*点击弹出按钮*/
                //function ProjectEditsBoxShow() {
                //    var ProjectEditsBox = document.getElementById("ProjectEditsBox");
                //    var bgLayer = document.getElementById("bgLayer");
                //    ProjectEditsBox.style.display = "block";
                //    bgLayer.style.display = "block";

                //};

                /*点击关闭按钮*/
                function closeBox() {
                    var ProjectEditsBox = document.getElementById("ProjectEditsBox");
                    var bgLayer = document.getElementById("bgLayer");
                    ProjectEditsBox.style.display = "none";
                    bgLayer.style.display = "none";
                }
            </script>


        </form>
    </div>
</body>
</html>
