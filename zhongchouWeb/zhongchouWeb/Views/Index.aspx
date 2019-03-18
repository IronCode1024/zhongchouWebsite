<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/Views/AllPages.Master" CodeBehind="Index.aspx.cs" Inherits="zhongchouWeb.Views.Index" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <script src="../Script/IndexCarousel.js"></script>
    <link href="../Content/Css/IndexStyle.css" rel="stylesheet" />
    <title>拾柴众筹网--首页</title>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <body>
        <div class="siteHNavIndex">
            <div class="siteHNavInner">
                <a href="#" class="btn_ALink">浏览项目</a>
                <a href="#" class="btn_ALink">科技</a>
                <a href="#" class="btn_ALink">出版</a>
                <a href="#" class="btn_ALink">娱乐</a>
                <a href="#" class="btn_ALink">艺术</a>
                <a href="#" class="btn_ALink">农业</a>
                <a href="#" class="btn_ALink">商铺</a>
                <a href="#" class="btn_ALink">房产</a>
                <a href="#" class="btn_ALink">音乐</a>
                <a href="#" class="btn_ALink">设计</a>
                <a href="#" class="btn_ALink">公益</a>
                <a href="#" class="btn_ALink">公开课</a>
                <a href="#" class="btn_ALink">其他</a>
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





            <div class="RepeaterBox">
                <%--<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Views/Login.aspx">登录</asp:LinkButton>--%>
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <!--一级div-->
                        <div class="RepeaterItemBox">
                            <!--二级图片进度div-->
                            <div class="RepeaterItmeImg">
                                <%--<%#((Container.ItemIndex + 1) % 3 == 0 && Container.ItemIndex > 0) ? "<br/><br/>" : ""%>--%>
                                <a href="#">
                                    <img style="width: 248px; height: 180px;" src="<%#Eval("ImageUrl") %>" /></a>

                                <!--众筹进度详情div-->
                                <div class="indCardICBox siteCardICBox">
                                    <div class="indCardICText">    <%--target="_blank"新打开一个浏览器窗体标签--%>
                                        <a href="#" class="siteCardICH3" target="_blank">《水灯之城》 梁俪千/著  单价53元</a>
                                        <p class="siteCardIC_p">目标：<span class="ftP"><%#Eval("ProjectTargetDays") %>天 ￥<%#Eval("TargetAmountOfMoney") %></span></p>
                                    </div>
                                    <!--进度条div-->
                                    <div class="siteCardFBox">
                                        <div class="siteCardRatio">
                                            <!--进度条百分比-->
                                            <div class="siteCardRatioInner" style="width:<%# Convert.ToDecimal(Eval("AlreadyRaisedMoney"))/Convert.ToDecimal(Eval("TargetAmountOfMoney"))*100 %>%;"></div>
                                        </div>
                                        <!--div-->
                                        <div class="siteCardFData">
                                            <div class="ydDiv">
                                                <!--已达百分比-->
                                                <p class="ftP"><%# Convert.ToDecimal(Eval("AlreadyRaisedMoney"))/Convert.ToDecimal(Eval("TargetAmountOfMoney"))*100 %>%</p>
                                                <p class="scP">已达</p>
                                            </div>
                                            <div class="ycDiv">
                                                <!--已筹资-->
                                                <p class="ftP">￥<%#Eval("AlreadyRaisedMoney") %></p>
                                                <p class="scP">已筹资</p>
                                            </div>
                                            <div class="sjDiv">
                                                <!--剩余时间-->
                                                <p class="ftP"><%#Eval("ProjectTargetDays") %>天</p>
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
    </body>
    </html>
</asp:Content>


