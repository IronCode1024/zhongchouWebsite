<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="zhongchouWeb.Views.Index" %>

<%-- MasterPageFile="~/Views/AllPages.Master"--%>

<%--<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">--%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="../Content/Css/OverallSituationStyle.css" rel="stylesheet" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <script src="../Script/OverallSituationjs.js"></script>
    <script src="../Script/IndexCarousel.js"></script>

    <link href="../Content/Css/IndexStyle.css" rel="stylesheet" />

    <style type="text/css">
        .headerPage .UserInfoDrop_downBoxUl {
            width:150px;
            margin-left:-50px;
        }
    </style>

    <title>拾柴众筹网--首页</title>
</head>
<%--</asp:Content>--%>

<%--<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">--%>
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


    <div class="siteHNavIndex">
        <div class="siteHNavInner">
            <a href="ClassificationProject.aspx" class="btn_ALink">浏览项目</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">科技</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">出版</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">娱乐</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">艺术</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">农业</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">商铺</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">房产</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">音乐</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">设计</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">公益</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">公开课</a>
            <a href="ClassificationProject.aspx" class="btn_ALink">其他</a>
        </div>
    </div>

    <div class="masterBoxMax">
        <div class="indexBanner" id="indexBanner">
            <div class="indexBannerView">
                <ul id="slider" class="indexB_ul">
                    <%--<img src="../Content/Images/IndexImg/1541068732.jpg" />--%>
                    <li><a href="http://www.zhongchou.cn/special-zcfpxczx" style="background-image: url(../Content/Images/IndexImg/1541068732.jpg)" target="_blank"></a></li>
                    <li><a href="http://www.zhongchou.cn/deal-show/id-735617" style="background-image: url(../Content/Images/IndexImg/1542621595.gif);" target="_blank"></a></li>
                </ul>
                <%--<div class="indexBControls" id="indexBControls">
                        <div class="indexBPageitem"></div>
                        <div class="indexBPageitem cur"></div>
                    </div>--%>
                <div class="indexBPage" id="indexBPage">
                    <!--左右下一张图片按钮  上左 下右-->
                    <a href="javascript:;" class="pre" id="bannerPre">
                        <img src="../Content/Images/IndexImg/lrs.png" />
                    </a>
                    <a href="javascript:;" class="next" id="bannerNext">
                        <img src="../Content/Images/IndexImg/lrsr.png" />
                    </a>
                </div>
            </div>
            <%--<div class="indexBMask">
                    <span class="leftItem"></span>
                    <span class="rightItem"></span>
                </div>--%>
        </div>



        <div class="RepeaterBoxMaster">

            <div class="RepeaterBox">
                <%--<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Views/Login.aspx">登录</asp:LinkButton>--%>
                <!--使用Repeater显示图片-->
                <asp:Repeater ID="Repeater1" runat="server">
                    <HeaderTemplate>
                        <div class="RepeaterTitle">
                            <h1>众筹精选</h1>
                            <div>
                                <a href="ClassificationProject.aspx" class="btn_ALink">最新上线</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">科技</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">艺术</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">农业</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">音乐</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">设计</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">公益</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">公开课</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">更多>></a>&nbsp;&nbsp;
                            </div>
                        </div>
                        <table style="height: 15px;"></table>
                    </HeaderTemplate>
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
                                <a href="BrowseProject.aspx">
                                    <img style="width: 248px; height: 180px;" src="<%#Eval("ImageUrl") %>" /></a>

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

                    <FooterTemplate>
                        <div>
                        </div>
                    </FooterTemplate>
                    <FooterTemplate>
                        <table style="height: 20px;">
                            <tr>
                                <td></td>
                            </tr>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>

            </div>


            <%--    <div style="margin-top:380px;height:20px;width:1042px;border:1px solid red"></div>--%>

            <div class="RepeaterBox">
                <%--<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Views/Login.aspx">登录</asp:LinkButton>--%>
                <!--使用Repeater显示图片-->
                <asp:Repeater ID="Repeater2" runat="server">
                    <HeaderTemplate>
                        <div class="RepeaterTitle">
                            <h1>热门项目</h1>
                            <div>
                                <a href="ClassificationProject.aspx" class="btn_ALink">最新上线</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">科技</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">艺术</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">农业</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">音乐</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">设计</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">公益</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">公开课</a>&nbsp;&nbsp;
                                    <a href="ClassificationProject.aspx" class="btn_ALink">更多>></a>&nbsp;&nbsp;
                            </div>
                        </div>
                        <table style="height: 15px;"></table>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <!--一级div-->
                        <div class="RepeaterItemBox">
                            <!--二级图片进度div-->
                            <div class="RepeaterItmeImg" style="margin-bottom: 20px;">
                                <!--支持人数心形图标和数字显示-->
                                <div class="SupportNumber" style="width: 20%;">
                                    <div class="SupportHeart">
                                        <%--<img style="border-radius:0px;" src="../Content/Images/publicImg/SupportHeart.jpg" />--%>
                                    </div>
                                    <!--数据库读取支持人数数字-->
                                    <span style="font-size: 11px; top: -15px; position: absolute; left: 18px; text-align: center; line-height: 50px;"><%#Eval("NumberOfProjectSupport") %></span>
                                </div>
                                <a href="BrowseProject.aspx">
                                    <img style="width: 248px; height: 180px;" src="<%#Eval("ImageUrl") %>" /></a>

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
                                            <div class="siteCardRatioInner" style="width: <%# Convert.ToDecimal(Eval("AlreadyRaisedMoney"))/Convert.ToDecimal(Eval("TargetAmountOfMoney"))*100 %>%;max-width:100%"></div>
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
                                                <p class="ftP" id="Surplustimes"><%# Convert.ToInt32(Eval("ProjectTargetDays")) - GetDateTimeSpan(Convert.ToDateTime(Eval("ReleaseDate"))) %>天</p>
                                                <p class="scP">剩余时间</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>

                    <FooterTemplate>
                        <%--<table style="height:10px;"><tr><td></td></tr></table>--%><!--让下面的table向下间距20px-->
                        <a href="http://www.baidu.com">
                            <table border="0" style="margin-left: 15px; text-align: center;">
                                <tr>
                                    <td class="tableMoreTd">查看更多项目</td>
                                </tr>
                            </table>
                        </a>
                    </FooterTemplate>
                </asp:Repeater>
                <div style="height: 30px;"></div>
            </div>
        </div>
    </div>




    <!-- 底部导航 页脚 -->
    <div class="footerPage"></div>
    <!--底部导航 over-->


</body>
</html>
<%--</asp:Content>--%>


