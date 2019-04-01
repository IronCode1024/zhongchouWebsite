<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminIndex.aspx.cs" Inherits="zhongchouWeb.Administrators.AdminIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <link rel="icon" href="../Content/Images/IndexImg/icons.PNG" />
    <link href="../Content/Css/OverallSituationStyle.css" rel="stylesheet" />

    
    <link href="AdminContent/CSS/AdminIndexStyle.css" rel="stylesheet" />

    <script src="../Script/OverallSituationjs.js"></script>

    <title>拾柴众筹网管理员-首页</title>
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


    <div class="backtopImgDiv" id="backtopDiv"></div>


    <div class="WelcomeBox">
        <div>
            <h1 style="color: blue">欢迎使用众筹网管理员账户</h1>
        </div>
    </div>
    <div class="DataShowListBox">
        <form id="form1" runat="server">
            <div>
                <div class="UserInfoGridViewBox">
                    <div style="margin: 0px auto; width: 200px;">
                        <h2>用户信息</h2>
                    </div>
                    <asp:GridView ID="UserInfoGridView" runat="server" AutoGenerateColumns="False" CssClass="UserInfoGridView" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="Id" HeaderText="编号" />
                            <asp:BoundField DataField="UserName" HeaderText="用户名" />
                            <asp:BoundField DataField="UserEmail" HeaderText="邮箱" />
                            <asp:BoundField DataField="UserPassword" HeaderText="密码">
                                <ItemStyle ForeColor="Red" />
                            </asp:BoundField>
                            <asp:BoundField DataField="UserHeadPortrait" HeaderText="头像路径" />
                            <asp:BoundField DataField="State" HeaderText="在线状态" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <div class="ViewMoreBoxDiv">
                        <a href="UserInfoAdmin.aspx" target="_blank">
                            <table border="0" style="text-align: center;">
                                <tr>
                                    <td class="ViewMore">点击查看更多用户信息>></td>
                                </tr>
                            </table>
                        </a>
                    </div>

                </div>

                <br />
                <br />
                <br />

                <div class="ProjectGridViewBox">
                    <div style="margin: 0px auto; width: 200px;">
                        <h2>项目信息</h2>
                    </div>
                    <asp:GridView ID="ProjectGridView" runat="server" AutoGenerateColumns="False" CssClass="ProjectGridView" CellPadding="4" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                        <Columns>
                            <asp:BoundField DataField="ProjectID" HeaderText="编号" />
                            <%--<asp:BoundField DataField="ProjectCover" HeaderText="项目封面" />--%>
                            <asp:BoundField DataField="UserID" HeaderText="关联用户表" />
                            <asp:BoundField DataField="UserEmail" HeaderText="发起人邮箱" />
                            <asp:BoundField DataField="ProjectType" HeaderText="项目类型" />

                            <asp:BoundField DataField="ProjectName" HeaderText="项目名称" />
                            <asp:BoundField DataField="ProjectTargetDays" HeaderText="目标众筹天数" />
                            <asp:BoundField DataField="ProjectOverview" HeaderText="项目概述" />
                            <asp:BoundField DataField="ProjectDetailedPictures" HeaderText="项目详情（内容）" />
                            <asp:BoundField DataField="TargetAmountOfMoney" HeaderText="目标金额" />

                            <asp:BoundField DataField="NumberOfProjectSupport" HeaderText="项目支持人数" />
                            <asp:BoundField DataField="AlreadyRaisedMoney" HeaderText="已筹金额" />

                            <%--<asp:BoundField DataField="ProjectAddress" HeaderText="项目发起地址" />--%>

                            <asp:BoundField DataField="ReleaseStatus" HeaderText="发布状态" />
                            <%--<asp:BoundField DataField="ProjectUpdateTime" HeaderText="项目更新时间" />--%>
                            <asp:BoundField DataField="ReleaseDate" HeaderText="发布日期（发布日的日期" />
                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                    <br />
                    <div class="ViewMoreBoxDiv">
                        <a href="ProjectInfoAdmin.aspx" target="_blank">
                            <table border="0" style="text-align: center;">
                                <tr>
                                    <td class="ViewMore">点击查看更多项目信息>></td>
                                </tr>
                            </table>
                        </a>
                    </div>

                </div>

                <br />
                <br />
                <br />

                <div class="UserCommentaryGridViewBox">
                    <div style="margin: 0px auto; width: 200px;">
                        <h2>用户评论信息</h2>
                    </div>
                    <asp:GridView ID="UserCommentaryGridView" runat="server" AutoGenerateColumns="False" CssClass="UserCommentaryGridView" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="CommentaryID" HeaderText="编号" />
                            <asp:BoundField DataField="UserID" HeaderText="被品论用户ID（关联用户表）" />
                            <asp:BoundField DataField="ProjectID" HeaderText="被品论用户发起发的项目ID（关联项目表）" />

                            <asp:BoundField DataField="CommentatorID" HeaderText="评论人ID" />
                            <asp:BoundField DataField="Content" HeaderText="此用户评论的内容" />
                            <asp:BoundField DataField="CommentaryDate" HeaderText="评论日期" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <br />
                    <div class="ViewMoreBoxDiv">
                        <a href="UserCommentaryInfoAdmin.aspx" target="_blank">
                            <table border="0" style="text-align: center;">
                                <tr>
                                    <td class="ViewMore">点击查看更多用户评论信息>></td>
                                </tr>
                            </table>
                        </a>
                    </div>

                </div>

                <br />
                <br />
                <br />

                <div class="AdvertisementGridViewBox">
                    <div style="margin: 0px auto; width: 200px;">
                        <h2>广告信息</h2>
                    </div>
                    <asp:GridView ID="AdvertisementGridView" runat="server" AutoGenerateColumns="False" CssClass="AdvertisementGridView" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" ForeColor="Black" GridLines="None">
                        <AlternatingRowStyle BackColor="PaleGoldenrod" />
                        <Columns>
                            <asp:BoundField DataField="AdvertisementImageID" HeaderText="编号" />
                            <asp:BoundField DataField="AdvertisementName" HeaderText="广告名称" />
                            <asp:BoundField DataField="AdvertisementImageUrl" HeaderText="广告图片路径（相对）" />
                        </Columns>
                        <FooterStyle BackColor="Tan" />
                        <HeaderStyle BackColor="Tan" Font-Bold="True" />
                        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                        <SortedAscendingCellStyle BackColor="#FAFAE7" />
                        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                        <SortedDescendingCellStyle BackColor="#E1DB9C" />
                        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                    </asp:GridView>
                    <br />
                    <div class="ViewMoreBoxDiv">
                        <a href="AdvertisementInfoAdmin.aspx" target="_blank">
                            <table border="0" style="text-align: center;">
                                <tr>
                                    <td class="ViewMore">点击查看更多广告信息>></td>
                                </tr>
                            </table>
                        </a>
                    </div>

                </div>
            </div>
        </form>
    </div>
</body>
</html>
