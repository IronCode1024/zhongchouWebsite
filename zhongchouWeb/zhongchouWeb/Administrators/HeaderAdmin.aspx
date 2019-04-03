<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HeaderAdmin.aspx.cs" Inherits="zhongchouWeb.Administrators.HeaderAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="../Content/Css/HeadFootStyle.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <!--页眉-->
    <div class="siteMTopBox">
        <div class="mainInnerBox clearfix relative">
            <a href="/Administrators/AdminIndex.aspx" class="siteMIndexA">
                <img src="../Content/Images/IndexImg/1531469861.png" />
            </a>
            <div class="siteHNavBox clearfix">
                <div class="siteHNavItem">
                    <a href="/Administrators/AdminIndex.aspx" class="siteHNavItemA">首&nbsp;&nbsp;页</a>
                </div>
                <div class="siteHNavItem">
                    <a href="UserInfoAdmin.aspx" class="siteHNavItemA">浏览用户</a>
                </div>
                <div class="siteHNavItem">
                    <a href="ProjectInfoAdmin.aspx" class="siteHNavItemA">浏览项目</a>
                </div>
                <div class="siteHNavItem">
                    <a href="AdvertisementInfoAdmin.aspx" class="siteHNavItemA">广告管理</a>
                </div>
                <div class="siteHNavItem">
                    <a rel="nofollow" href="/download" class="siteHNavItemA" target="_blank">基础配置</a>
                </div>
            </div>
            <!-- 未登录状态 begin 网站登录框siteHLoginBox-->
            <div class="siteHLoginBox clearfix" runat="server" id="notlogins">
                <a href="../Views/Login.aspx" class="siteH_login Js-showLogin">登录</a>
                <span class="line">|</span>
                <a href="../Views/Register.aspx" class="siteH_register Js-showRegister">注册</a>
            </div>

            <!--登录成功用户信息下拉框-->
            <div class="siteHLoginBox Userlogins" runat="server" id="logins" style="display: none">

                <!--登录成功用户信息下拉框-->
                <ul class="UserInfoBox">
                    <li id="UserSpinner" style="width: 100px; height: 10px; cursor: pointer">
                        <asp:Label ID="Label1" runat="server" Text="Label" Height="20"></asp:Label>&nbsp;&nbsp;&nbsp;&nbsp;<img style="margin-bottom: 0px;" src="../Content/Images/MasterEditionImg/sanjiao.jpg" width="10" height="10" /></li>
                    <li id="UserSpinnerdisplay" class="UserInfoDrop_downBox" style="display: none;">
                        <ul style="width: 100px; margin-left: -30px;">
                            <%--<li><a href="javascript:">发起的项目</a></li>
                            <li><a href="javascript:">喜欢的项目</a></li>
                            <li><a href="javascript:">支持的项目</a></li>--%>
                            <%--<li>个人设置</li>--%>
                            <li id="LoginOut">
                                <asp:LinkButton ID="OuttLoginLinkBtn" runat="server" OnClick="OuttLoginLinkBtn_Click">退出</asp:LinkButton></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <script>
                $(function () {//用户信息下列表
                    //$('#LoginOut').click(function () {
                    //    //window.location.href = "Index.aspx";//重新跳转首页  重新加载
                    //    window.parent.location.reload();
                    //});
                    $('#UserSpinner').mousemove(function () {
                        //$('#UserSpinner').css("margin-left","30px");
                        $('#UserSpinnerdisplay').show();
                    }).mouseout(function () {
                        $('#UserSpinnerdisplay').mousemove(function () {
                            //$('#UserSpinner').css("margin-left","30px");
                            $('#UserSpinnerdisplay').show();
                        }).mouseout(function () {
                            $('#UserSpinnerdisplay').hide();
                        });
                        $('#UserSpinnerdisplay').hide();
                    });
                });
            </script>

            <!--siteMSearch网站搜索    sitePHBox定位盒子-->
            <!--<div class="siteMSearch siteIlB_box sitePHBox" id="search-box">
                <div class="search-input">
                    <input type="text" class="siteMSearchInput siteIlB_item sitePHInput" id="searchInput" autocomplete="off" placeholder="绝世倾城" />
                </div>
                <a href="javascript:;" class="siteMSearchA siteIlB_item fr" id="searchBtn">&nbsp;&nbsp;&nbsp;&nbsp;</a>
            </div>-->
        </div>
    </div>
    </div>
    </form>
</body>
</html>
