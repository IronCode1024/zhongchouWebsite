<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HeaderPage.aspx.cs" Inherits="zhongchouWeb.Views.HeaderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <link href="../Content/Css/HeadFootStyle.css" rel="stylesheet" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <!--页眉-->
    <div class="siteMTopBox">
        <div class="mainInnerBox clearfix relative">
            <a href="Index.aspx" class="siteMIndexA">
                <img src="../Content/Images/IndexImg/1531469861.png" />
            </a>
            <div class="siteHNavBox clearfix">
                <div class="siteHNavItem">
                    <a href="Index.aspx" class="siteHNavItemA">首&nbsp;&nbsp;页</a>
                </div>
                <div class="siteHNavItem">
                    <a href="ClassificationProject.aspx?search=0" class="siteHNavItemA" id="browsePro">浏览项目</a>
                    <%--<div class="siteHNavInner">
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
                    </div>--%>
                </div>
                <div class="siteHNavItem">
                    <%--<a href="http://www.zhongchou.cn/gongyi" class="siteHNavItemA">公益众筹</a>--%>
                </div>
                <div class="siteHNavItem">
                    <a href="PeopleHelp.aspx" class="siteHNavItemA">新手帮助</a>
                </div>
                <div class="siteHNavItem">
                   <%--<a rel="nofollow" href="/download" class="siteHNavItemA" target="_blank">APP</a>--%>
                </div>
            </div>
            <a id="StartUpzx" data-href="StartUpProject.aspx" class="siteM_fqBtn btn_ALink js-checkLogin" runat="server"><i></i>发起众筹</a>
            <!-- 未登录状态 begin 网站登录框siteHLoginBox-->
            <div class="siteHLoginBox clearfix" runat="server" id="notlogins">
                <a href="../Views/Login.aspx" class="siteH_login Js-showLogin">登录</a>
                <span class="line">|</span>
                <a href="../Views/Register.aspx" class="siteH_register Js-showRegister">注册</a>
            </div>

            <%--登录成功用户信息下拉框--%>
            <div class="siteHLoginBox Userlogins" runat="server" id="logins" style="display: none">
                <%-- <%  this.notlogins.Style.Add("display", "block");

                    if (Session["Logins"] != null && Session["Logins"] != "")
                    {
                        Session["Logins"] = null;
                        //Literal lt = new Literal();
                        //lt.Text = "<a>Session[\"UserNames\"].ToString()</a>";
                        //form1.Controls.Add(lt);
                        this.notlogins.Style.Add("display", "none");
                        this.logins.Style.Add("display", "block");
                        Response.Write("<a class=\"siteH_register Js-showRegister\">" + Session["UserNames"].ToString() + "</a>&nbsp;|&nbsp;<a href=\"Index.aspx\" class=\"siteH_register Js-showRegister\">退出</a>");
                    }%>--%>

                <%--登录成功用户信息下拉框--%>
                <ul class="UserInfoBox">
                    <li id="UserSpinner" style="width: 100px; height: 20px; cursor: pointer">
                        <asp:Image ID="HeadPortraits" CssClass="HeadPortrait" Width="30" Height="30" runat="server" />&nbsp;&nbsp;&nbsp;&nbsp;<img style="margin-bottom: 5px;" src="../Content/Images/MasterEditionImg/sanjiao.jpg" width="12" height="12" /></li>
                    <li id="UserSpinnerdisplay" class="UserInfoDrop_downBox" style="display:none;">
                        <ul class="UserInfoDrop_downBoxUl">
                            <li>
                                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            </li>
                            <li><a href="Launch.aspx">发起的项目</a></li>
                            <li><a href="Launch.aspx">喜欢的项目</a></li>
                            <li><a href="Launch.aspx">支持的项目</a></li>
                            <li><a href="PersonalSettings.aspx">个人设置</a></li>
                            <li id="LoginOut" runat="server">
                                <asp:LinkButton ID="OutLoginLinkBtn" runat="server" OnClick="OutLoginLinkBtn_Click">退出</asp:LinkButton></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <script>
                $(function () {//用户信息下列表
                    $('#LoginOut').click(function () {//登出方法
                        //ajaxhtml：$.ajax({ url : "clear_session.php'", success : function(msg){ alert(msg); }}); clear_session.php; $_SESSION = array()
                        //调用后台LoginOuts()函数  使Session=null   登出}
                        <%--'<%=LoginOuts(true)%>'--%>

                        //window.location.href = "Index.aspx";//重新跳转首页  重新加载
                        //$('#LoginOut').text("");
                        //$('#LoginOut').html("n");
                        //window.parent.location.reload();

                        //window.location.href = "Index.aspx";
                    });


                    //用户信息下拉框
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

            <!--其他登录-->
            <div class="other-login">
                <a class="qq"></a>
                <a class="wechat"></a>
                <a class="sina"></a>
            </div>
            <!-- 未登录状态 end -->

            <!--siteMSearch网站搜索    sitePHBox定位盒子-->
            <div class="siteMSearch siteIlB_box sitePHBox" id="search-box">
                <div class="search-input">
                    <input type="text" class="siteMSearchInput siteIlB_item sitePHInput" id="searchInput" autocomplete="off" placeholder="绝世倾城" />
                </div>
                <a class="siteMSearchA siteIlB_item fr" id="searchBtn" style="cursor:pointer">&nbsp;&nbsp;&nbsp;&nbsp;</a>
                <%--<span class="sitePHTip" style="top: 4px; left: 5px;">绝世倾城</span>--%>

                <%--<div class="input-hinter" style="display: none;"></div>--%>
            </div>

            <%-- <a href="http://www.zhongchou.cn/crowdfund-index" class="wdfq btn_ALink my-zc fr" target="_blank"><i></i>管理众筹</a>--%>
        </div>
        <script>
            $(function () {
                $('#searchBtn').click(function () {
                    var ss = document.getElementById("searchInput").value;
                    //alert(ss)
                    window.location.href = "ClassificationProject.aspx?search=" + ss;
                });
            });
        </script>
    </div>
    </form>
</body>
</html>
