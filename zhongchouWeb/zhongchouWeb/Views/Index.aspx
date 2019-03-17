<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/Views/AllPages.Master" CodeBehind="Index.aspx.cs" Inherits="zhongchouWeb.Views.Index" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Script/jquery-1.10.2.min.js"></script>
    <script src="../Script/IndexCarousel.js"></script>
    <link href="../Content/Css/IndexStyle.css" rel="stylesheet" />
    <title>拾柴众筹网--首页</title>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <body>
        <div class="masterBoxMax">
            <div class="indexBanner" id="indexBanner">
                <div class="indexBannerView">
                    <ul id="slider" class="indexB_ul">
                        <%--<img src="../Content/Images/IndexImg/1541068732.jpg" />--%>
                        <li><a href="http://www.zhongchou.cn/deal-show/id-735617" style="background-image:url(../Content/Images/IndexImg/1541068732.jpg)" target="_blank"></a></li>
                        <li><a href="http://www.zhongchou.cn/special-zcfpxczx" style="background-image: url(../Content/Images/IndexImg/1542621595.gif);" target="_blank"></a></li>
                    </ul>
                    <div class="indexBControls" id="indexBControls">
                        <div class="indexBPageitem"></div>
                        <div class="indexBPageitem cur"></div>
                    </div>
                    <div class="indexBPage" id="indexBPage">
                        <a href="javascript:;" class="pre" id="bannerPre""><img src="../Content/Images/IndexImg/lrs.png" /></a>
                        <a href="javascript:;" class="next" id="bannerNext"><img src="../Content/Images/IndexImg/lrsr.png" /></a>
                    </div>
                </div>
                <div class="indexBMask">
                    <span class="leftItem"></span>
                    <span class="rightItem"></span>
                </div>
            </div>
        </div>
        <%-- <div>
            <%--<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Views/Login.aspx">登录</asp:LinkButton>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate></ItemTemplate>
            </asp:Repeater>
        </div>--%>
    </body>
    </html>
</asp:Content>


