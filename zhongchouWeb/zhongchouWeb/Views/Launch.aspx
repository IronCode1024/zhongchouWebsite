<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Launch.aspx.cs" Inherits="zhongchouWebXYM.Launch" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <script src="../Script/OverallSituationjs.js"></script>
    <link href="../Content/Css/OverallSituationStyle.css" rel="stylesheet" />
    <link href="../Content/Css/LaunchCss.css" rel="stylesheet" />
    <script src="../Script/LaunchJS.js"></script>
    <title></title>

</head>
<body>
    <!-- 顶部导航 页眉 -->
    <div class="headerPage"></div>
    <!--顶部导航 over-->

    <script>
        $(function () {
            /*公共部分
             * 导航栏
             * footer CopyRight
             */
            $(".headerPage").load("HeaderPage.aspx");//引用页眉

            $(".footerPage").load("FooterPage.aspx");//引用页脚
        });
    </script>

    <div class="backtopImgDiv" id="backtopDiv">
        <%--<img src="../Content/Images/publicImg/backtop.png" />--%>
    </div>


    <form id="form1" runat="server">
        <div class="big">
            <div class="bodys">
                <div class="head">
                    <%--跳转框--%>
                    <div id="tiaoz">
                        <%--支持的项目--%>
                        <div id="one1">
                            <a onclick="ChangeDiv('0','JKDiv_',2)" style="color: black;">支持的项目</a>
                            <div id="num1">
                                <asp:Label ID="Label6" runat="server" Text="Label" Font-Size="Large"></asp:Label>
                            </div>
                        </div>
                        <%--发起的项目--%>
                        <div id="one2">
                            <a onclick="ChangeDiv('1','JKDiv_',2)" style="color: black;">发起的项目</a>
                            <div id="num2">
                                <asp:Label ID="Label7" runat="server" Text="Label" Font-Size="Large"></asp:Label>
                            </div>
                        </div>
                        <%--喜欢的项目--%>
                        <div id="one3">
                            <a onclick="ChangeDiv('2','JKDiv_',2)" style="color: black;">喜欢的项目</a>
                            <div id="num3">
                                <asp:Label ID="Label5" runat="server" Text="Label5" Font-Size="Large"></asp:Label>
                            </div>
                        </div>
                    </div>
                    <%--下部跳转--%>
                    <div id="tiao">
                        <%--悬停跳转第二个--%>
                        <div id="JKDiv_1" style="display: block;">
                            <%--Repeater控件--%>
                            <asp:Repeater ID="Repeater1" runat="server">
                                <HeaderTemplate>
                                    <table style="border-bottom: 1px solid black; margin-left: 40px; margin-top: 60px; width: 870px;">
                                        <tr class="siteRepeaterTr headtabletd">
                                            <td style="width: 280px; text-align: left;">项目名称
                                            </td>
                                            <td style="width: 90px; text-align: center;">发布日期
                                            </td>
                                            <td style="width: 90px; text-align: center;">截止日期
                                            </td>
                                            <td style="width: 90px; text-align: center;">目标
                                            </td>
                                            <td style="width: 90px; text-align: center;">进度
                                            </td>
                                            <td style="width: 90px; text-align: center;">情况
                                            </td>
                                            <td style="width: 90px; text-align: center;">状态
                                            </td>
                                        </tr>
                                    </table>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <table style="border-bottom: 1px solid black; margin-left: 40px; width: 870px;">
                                        <tr class="siteRepeaterTr">
                                            <td style="width: 290px; text-align: left; height: 50px;">
                                                <%#Eval("ProjectName") %>
                                            </td>
                                            <td style="width: 120px; text-align: left;">
                                                <%#Eval("ReleaseDate") %>
                                            </td>
                                            <td style="width: 60px; text-align: left;">
                                                <%#Eval("ProjectTargetDays") %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Eval("TargetAmountOfMoney") %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Convert.ToInt32(Eval("sum"))+"%" %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Eval("ReleaseStatus") %>
                                            </td>
                                            <td>
                                                <a href="InitiateProject.aspx?Uid=<%#Eval("ProjectID") %>" class="abc">编辑</a>

                                                <%--<a href="Updates.aspx?Uid=<%#Eval("ProjectID") %>" class="abc">预览</a>--%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <%--悬停跳转第一个--%>
                        <div id="JKDiv_0" style="display: none;">
                            <%--Repeater控件--%>
                            <asp:Repeater ID="Repeater2" runat="server">
                                <HeaderTemplate>
                                    <table style="border-bottom: 1px solid black; margin-left: 40px; margin-top: 60px; width: 870px;">
                                        <tr class="siteRepeaterTr headtabletd">
                                            <td style="width: 280px; text-align: left;">项目名称
                                            </td>
                                            <td style="width: 90px; text-align: center;">发布日期
                                            </td>
                                            <td style="width: 90px; text-align: center;">截止日期
                                            </td>
                                            <td style="width: 90px; text-align: center;">目标
                                            </td>
                                            <td style="width: 90px; text-align: center;">进度
                                            </td>
                                            <td style="width: 90px; text-align: center;">情况
                                            </td>
                                            <td style="width: 90px; text-align: center;">状态
                                            </td>
                                        </tr>
                                    </table>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <table style="border-bottom: 1px solid black; margin-left: 40px; width: 870px;">
                                        <tr class="siteRepeaterTr">
                                            <td style="width: 290px; text-align: left; height: 50px;">
                                                <%#Eval("ProjectName") %>
                                            </td>
                                            <td style="width: 120px; text-align: left;">
                                                <%#Eval("ReleaseDate") %>
                                            </td>
                                            <td style="width: 60px; text-align: left;">
                                                <%#Eval("ProjectTargetDays") %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Eval("TargetAmountOfMoney") %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                               <%#Convert.ToInt32(Eval("sum"))+"%" %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Eval("ReleaseStatus") %>
                                            </td>
                                            <td>
                                                <a href="InitiateProject.aspx?Uid=<%#Eval("ProjectID") %>" class="abc">编辑</a>

                                               <%-- <a href="Updates.aspx?Uid=<%#Eval("ProjectID") %>" class="abc">预览</a>--%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                        <%--悬停跳转第三个--%>
                        <div id="JKDiv_2" style="display: none;">
                            <%--Repeater控件--%>
                            <asp:Repeater ID="Repeater3" runat="server">
                                <HeaderTemplate>
                                    <table style="border-bottom: 1px solid black; margin-left: 40px; margin-top: 60px; width: 870px;">
                                        <tr class="siteRepeaterTr headtabletd">
                                            <td style="width: 280px; text-align: left;">项目名称
                                            </td>
                                            <td style="width: 90px; text-align: center;">发布日期
                                            </td>
                                            <td style="width: 90px; text-align: center;">截止日期
                                            </td>
                                            <td style="width: 90px; text-align: center;">目标
                                            </td>
                                            <td style="width: 90px; text-align: center;">进度
                                            </td>
                                            <td style="width: 90px; text-align: center;">情况
                                            </td>
                                            <td style="width: 90px; text-align: center;">状态
                                            </td>
                                        </tr>
                                    </table>
                                </HeaderTemplate>
                                <ItemTemplate>

                                    <table style="border-bottom: 1px solid black; margin-left: 40px; width: 870px;">
                                        <tr class="siteRepeaterTr">
                                            <td style="width: 290px; text-align: left; height: 50px;">
                                                <%#Eval("ProjectName") %>
                                            </td>
                                            <td style="width: 120px; text-align: left;">
                                                <%#Eval("ReleaseDate") %>
                                            </td>
                                            <td style="width: 60px; text-align: left;">
                                                <%#Eval("ProjectTargetDays") %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Eval("TargetAmountOfMoney") %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Convert.ToInt32(Eval("sum"))+"%" %>
                                            </td>
                                            <td style="width: 90px; text-align: center;">
                                                <%#Eval("ReleaseStatus") %>
                                            </td>
                                            <td>
                                                <a href="InitiateProject.aspx?Uid=<%#Eval("ProjectID") %>" class="abc">编辑</a>

                                                <%--<a href="Updates.aspx?Uid=<%#Eval("ProjectID") %>" class="abc">预览</a>--%>
                                            </td>
                                        </tr>
                                    </table>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <%--头像--%>
                    <div id="Headimg">
                        <asp:Image ID="Image1" runat="server" Height="140px" Width="141px" CssClass="imgg" />
                    </div>
                    <%--个人设置文字--%>
                    <div id="mine">
                        <%--<img src="RNG@4}RKZ2_5F}SGBBVD4J0.png" />--%>
                        <a href="PersonalSettings.aspx"><img src="../Content/Images/LaunchImg/RNG@4}RKZ2_5F}SGBBVD4J0.png" /></a>
                    </div>
                    <%--消息中心文字--%>
                    <div id="s">
                        <%--<img src="EI2{DJV4FJ)EOX`YKJZ@(DB.png" />--%>
                        <img src="../Content/Images/LaunchImg/EI2{DJV4FJ)EOX`YKJZ@(DB.png" />
                    </div>
                    <%--个人信息显示控件--%>
                    <div id="lable">
                        <p>
                            <asp:Label ID="Label1" runat="server" Text="Label" Font-Size="Large"></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text="Label3"></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text="Label4"></asp:Label>

                        </p>
                    </div>

                </div>
            </div>
        </div>
        <div style="height:1300px;"></div>

        <!-- 底部导航 页脚 -->
        <div class="footerPage"></div>
        <!--底部导航 over-->
    </form>
</body>
</html>
