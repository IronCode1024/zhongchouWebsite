<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ForgetPassword.aspx.cs" Inherits="zhongchouWeb.Views.ForgetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>

    <style type="text/css">
        .siteBox {
            width: 500px;
            height: 500px;
            margin: 0px auto;
            border: 1px solid #808080;
            border-radius: 10px;
        }
        .siteBoxs {
            width: 300px;
            height: 300px;
            margin: 0px auto;
        }
    </style>
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


    <form id="form1" runat="server">
        <div class="siteBox">
            <div class="siteBoxs">
                <br /><br />
                
                <span style="color:red">*</span>邮箱：<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" ForeColor="Red">邮箱不能为空</asp:RequiredFieldValidator>
                <br />
                <br />
                <span style="color:red">*</span>验证码：<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox><asp:Button ID="Button2" runat="server" Text="发送" OnClick="Button2_Click" />
                <br />
                <br />
                <span style="color:red">*</span>新密码：<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox><br />
                <br />
                <span style="color:red">*</span>确认密码：<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox><br />
                <br />

                <asp:Button ID="Button1" runat="server" Text="确定" OnClick="Button1_Click" />

            </div>
        </div>

    </form>
</body>
</html>
