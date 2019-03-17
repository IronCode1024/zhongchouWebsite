<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="zhongchouWeb.Views.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="icon" href="../Content/Images/IndexImg/icons.PNG" />
    <link href="../Content/Css/LoginRegisteStyle.css" rel="stylesheet" />
    <title>登录</title>
    <style type="text/css">
        .panel-body {
            height:250px;
        }
    </style>
</head>
<body>
     <div class="Panelmaster">
        <div class="navTop">
            <a href="Index.aspx" style="border:none">
                <img src="../Content/Images/IndexImg/1531469861.png" />
            </a>

            <div class="navTopleft">
                还没有账号？立即&nbsp;<a href="Register.aspx">免费注册</a>
            </div>

        </div>
        <div style=" border-bottom: 1px solid #949090;"></div>
        
        <div class="Bottoms">
            <div class="BgImg">
                <img width="700" style="width:90%" src="../Content/Images/LoginImg/bgLoginImg.PNG" />
            </div>
            <div class="panel panel-success">
                <div class="panel-heading text-center"><h2 style="margin-top:5px">用户登录</h2></div>
                <div class="panel-body">
                    <form id="form2" runat="server">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1"  class="form-Tips">*用户名不能空</asp:RequiredFieldValidator>
                        <div class="form-group" style="margin-left: 26px">
                            用户名：<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder = "用户名/邮箱"></asp:TextBox>
                        </div>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox3"  class="form-Tips">*密码不能为空</asp:RequiredFieldValidator>
                        <div class="form-group" style="margin-left: 41px">
                            密码：<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder = "密码"></asp:TextBox>
                        </div>

                        <br />
                        <div class="text-center">
                            <asp:Button ID="Button1" runat="server" Text="登录" class="btn btn-success" OnClick="Button1_Click" />
                        </div>
                        <br />
                           <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color:#5a5555;"><img class="Mblog" src="../Content/Images/LoginImg/xl.jpg" />&nbsp;新浪微博</a>&nbsp;&nbsp;<span style="color:#5a5555">|</span>&nbsp;&nbsp;<a href="#" style="color:#5a5555"><img class="Mblog" src="../Content/Images/LoginImg/txqq.jpg" />&nbsp;腾讯</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">忘记密码？</a></div>

                    </form>
                </div>
            </div>
        </div>
        <div class="footer">
            <ul>
                <li style="list-style: none;">&copy;绝世倾城拾柴众筹网项目小组&nbsp;zhongchou.com版权所有&nbsp;鄂ICP备14531564号</li>
            </ul>
        </div>
    </div>
</body>
</html>
