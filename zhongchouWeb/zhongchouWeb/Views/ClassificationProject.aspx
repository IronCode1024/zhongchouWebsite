<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ClassificationProject.aspx.cs" Inherits="zhongchouWeb.Views.BrowseProject" %>

<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Content/Css/OverallSituationStyle.css" rel="stylesheet" />
    <link href="../Content/Css/BrowseProjectStyle.css" rel="stylesheet" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <script src="../Script/IndexCarousel.js"></script>
    <script src="../Script/OverallSituationjs.js"></script>
    <link href="../Content/Css/IndexStyle.css" rel="stylesheet" />
    <title></title>
    <script type="text/javascript">
        //$(function () {

        //    $(".lione").click(function () {
        //        $(this).toggleClass("bian").siblings().removeClass("bian");

        //    });
        //    $(".litwo").click(function () {
        //        $(this).toggleClass("bian").siblings().removeClass("bian");

        //    });
        //    $("li:eq(0)").toggleClass("bian");
        //    $(".lione:eq(0)").toggleClass("bian");
        //    $(".litwo:eq(0)").toggleClass("bian");
        //    $(".lione ").click(function () {
        //        var money = $(this).text();

        //        $.get("BrowseProject.aspx?money=" + money);
        //    });
        // });
    
    </script>
    <style type="text/css">
        .headerPage .UserInfoDrop_downBoxUl {
            width:150px;
            margin-left:-10px;
        }
    </style>
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
        <div class="content">
            <div class="shang">

                <div class="shang1">
                        <h4 class="an">按类型:</h4>
                        <ul>
                            <li> <asp:Button ID="Button8" CssClass="btn" runat="server" Text="全部" Width="80px" Height="35px" OnClientClick="" BackColor="White" OnClick="Button8_Click" /></li>
                        </ul>
                    <div id="shang1-2">
                        <asp:Repeater ID="Repeater1" runat="server" OnItemCommand="Repeater1_ItemCommand">
                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" Text='<%#Eval("ProjectType") %>' CommandArgument='<%#Eval("ProjectType") %>' CssClass="shang1-2 btn" Width="80px" Height="35px" BackColor="White"  />
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>

                <div class="shang2">
                    <h4 class="an">按金额:</h4>
                    <ul>
                        <li class="lione">
                            <asp:Button ID="Button2" runat="server" Text="全部" Width="80px" CssClass="btn" Height="35px" OnClientClick="" BackColor="White" OnClick="Button2_Click"  /></li>
                        <li class="lione">
                            <asp:Button ID="Button3" runat="server" Text="大于10000" Width="80px" CssClass="btn" Height="35px" OnClientClick="" BackColor="White" OnClick="Button3_Click" /></li>
                        <li class="lione">
                            <asp:Button ID="Button4" runat="server" Text="小于10000" Width="80px" CssClass="btn" Height="35px" OnClientClick="" BackColor="White" OnClick="Button4_Click" /></li>
                    </ul>

                </div>
                <div class="shang3">
                    <h4 class="an">按天数:</h4>
                    <ul>
                        <li class="litwo"> <asp:Button ID="Button5" runat="server" CssClass="btn" Text="全部" Width="80px" Height="35px" OnClientClick="" BackColor="White" OnClick="Button5_Click" /></li>
                        <li class="litwo"> <asp:Button ID="Button6" runat="server" CssClass="btn" Text="大于80" Width="80px" Height="35px" OnClientClick="" BackColor="White" OnClick="Button6_Click" /></li>
                        <li class="litwo"> <asp:Button ID="Button7" runat="server" CssClass="btn" Text="小于80" Width="80px" Height="35px" OnClientClick="" BackColor="White" OnClick="Button7_Click" /></li>
                    </ul>

                </div>

            </div>




            <div id="xia">
                <asp:Repeater ID="Repeater2" runat="server">
                    <ItemTemplate>
                        <!--一级div-->
                        <div class="RepeaterItemBox">
                            <!--二级图片进度div-->
                            <div class="RepeaterItmeImg" style="margin-bottom: 20px;">
                                <%--<%#((Container.ItemIndex + 1) % 3 == 0 && Container.ItemIndex > 0) ? "<br/><br/>" : ""%>--%>
                                <!--支持人数心形图标和数字显示-->
                                <div class="SupportNumber" style="width: 20%;">
                                    <div class="SupportHeart">
                                        <%--<img style="border-radius:0px;" src="../Content/Images/publicImg/SupportHeart.jpg" />--%>
                                    </div>
                                    <!--数据库读取支持人数数字-->
                                    <span style="font-size: 11px; top: -15px; position: absolute; left: 18px; text-align: center; line-height: 50px;"><%#Eval("NumberOfProjectSupport") %></span>
                                </div>
                                <a href='<%#"BrowseProject.aspx?ProjectID="+Eval("ProjectID") %>' runat="server">
                                    <img style="width: 248px; height: 180px;" src="<%#Eval("ProjectCover") %>" /></a>

                                <!--众筹进度详情div-->
                                <div class="indCardICBox siteCardICBox">
                                    <div class="indCardICText">
                                        <%--target="_blank"新打开一个浏览器窗体标签--%>
                                        <a href="#" class="siteCardICH3" target="_blank"><%#Eval("ProjectName") %></a>
                                        <p class="siteCardIC_p">目标：<span class="ftP"><%#Eval("ProjectTargetDays") %>天 ￥<%#Eval("TargetAmountOfMoney") %></span></p>
                                    </div>
                                    <!--进度条div-->
                                    <div class="siteCardFBox">
                                        <div class="siteCardRatio">
                                            <!--进度条百分比-->
                                            <div class="siteCardRatioInner" style="width: <%# Math.Round(Convert.ToDecimal(Eval("AlreadyRaisedMoney"))/Convert.ToDecimal(Eval("TargetAmountOfMoney"))*100) %>%;max-width:100%"></div>
                                        </div>
                                        <!--div-->
                                        <div class="siteCardFData">
                                            <div class="ydDiv">
                                                <!--已达百分比-->
                                                <p class="ftP"><%# Math.Round(Convert.ToDecimal(Eval("AlreadyRaisedMoney"))/Convert.ToDecimal(Eval("TargetAmountOfMoney"))*100) %>%</p>
                                                <p class="scP">已达</p>
                                            </div>
                                            <div class="ycDiv">
                                                <!--已筹资-->
                                                <p class="ftP">￥<%#Eval("AlreadyRaisedMoney") %></p>
                                                <p class="scP">已筹资</p>
                                            </div>
                                            <div class="sjDiv">
                                                <!--剩余时间-->
                                                <!--时间差计算  目标天数-项目发起到现在的天数-->
                                                <p class="ftP" id="Surplustimes"><%# Math.Round(Convert.ToDouble(Eval("ProjectTargetDays")) - GetDateTimeSpan(Convert.ToDateTime(Eval("ReleaseDate")))) %>天</p>
                                                <p class="scP">剩余时间</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
        </div>


        <div class="AspNetPaging">
                <div class="pull-right">
                    <webdiyer:AspNetPager ID="AspNetPager1" runat="server" PageSize="3" Width="100%" UrlPaging="true" LayoutType="Ul" OnPageChanged="AspNetPager1_PageChanged" CssClass="anpager" CurrentPageButtonClass="cpb">
                        <%--OnPageChanged="AspNetPager1_PageChanged"   Width="100%" UrlPaging="true" LayoutType="Ul" PagingButtonLayoutType="UnorderedList" PagingButtonSpacing="0"
                            PageSize="1"每页数据行数  --%>
                    </webdiyer:AspNetPager>
                </div>
            </div>
    </form>


    <!-- 底部导航 页脚 -->
    <div class="footerPage" style="margin-top:1000px;"></div>
    <!--底部导航 over-->


</body>
</html>
