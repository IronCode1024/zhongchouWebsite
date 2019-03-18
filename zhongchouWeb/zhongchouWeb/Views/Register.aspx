<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="zhongchouWeb.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script src="../Script/jquery-1.10.2.min.js"></script>
    <link rel="icon" href="../Content/Images/IndexImg/icons.PNG" />
    <link href="../Content/Css/LoginRegisteStyle.css" rel="stylesheet" />
    <title>注册</title>
    <style type="text/css">
    </style>
</head>
<body>
    <div class="Panelmaster">
        <div class="navTop">
            <a href="Index.aspx">
                <img src="../Content/Images/IndexImg/1531469861.png" />
            </a>

            <div class="navTopleft">
                <%--<font>已有账号&nbsp; @Html.ActionLink("直接登录", "Login")</font>--%>已有账号&nbsp;<a href="Login.aspx">直接登录</a>
            </div>

        </div>
        <div style="border-bottom: 1px solid #949090;"></div>

        <div class="Bottoms">
            <div class="BgImg">
                <img width="700" style="width: 90%" src="../Content/Images/LoginImg/bgLoginImg.PNG" />
            </div>
            <div class="panel panel-success">
                <div class="panel-heading text-center">
                    <h2 style="margin-top: 5px">用户注册</h2>
                </div>
                <div class="panel-body">

                    <form id="form1" runat="server">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1" class="form-Tips">*用户名不能空</asp:RequiredFieldValidator>
                        <div class="form-group" style="margin-left: 26px">
                            用户名：<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="用户名"></asp:TextBox>
                        </div>

                       <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="RequiredFieldValidator" class="form-Tips" ControlToValidate="TextBox2">*邮箱不能为空</asp:RequiredFieldValidator>--%>                        <%--<br />--%>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" class="form-Tips">
                            *邮箱格式错误</asp:RegularExpressionValidator>
                        <asp:Label ID="LabelEmail" runat="server" Text="Label" class="form-Tips" ></asp:Label>
                        <div class="form-group" style="margin-left: 41px">
                            邮箱：<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="邮箱"></asp:TextBox>
                        </div>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" class="form-Tips" ControlToValidate="TextBox3">*密码不能为空</asp:RequiredFieldValidator>
                        <div class="form-group" style="margin-left: 41px">
                            密码：<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="密码"></asp:TextBox>
                        </div>

                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="RequiredFieldValidator" class="form-Tips" ControlToValidate="TextBox4">*请输入确认密码</asp:RequiredFieldValidator>
                        <div class="form-group" style="margin-left: 10px">
                            确认密码：<asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="确认密码"></asp:TextBox>
                        </div>

<%--                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" class="form-Tips" ControlToValidate="TextBox5">*请输入验证码</asp:RequiredFieldValidator>--%>
                        <asp:Label ID="LabelCode" class="form-Tips" runat="server" Text='<%# Session["InputVerificationCode"] %>'></asp:Label>
                        <div class="form-group" style="margin-left: 20px">
                            &nbsp;验证码：<asp:TextBox Width="130" ID="TextBox5" runat="server" class="form-control" placeholder="验证码"></asp:TextBox>

                            <asp:Button ID="Obtain" runat="server" class="btn btn-success" Text="获取" OnClick="Obtain_Click" />
                            <%--<input id="Obtain" class="btn btn-success" type="button" onclick="btnObtain();" value="获取" />--%>

                        </div>

                        <br />
                        <div class="text-center">
                            <asp:Button ID="ButReSubmit" runat="server" Text="注册" class="btn btn-success" OnClick="ButReSubmit_Click" />
                        </div>

                    </form>


                    <script type="text/javascript">

                        //function time(obj) {

                        //    if (wait == 0) {
                        //        obj.className = 'btnCode';
                        //        obj.removeAttribute("disabled");
                        //        obj.value = "获取";
                        //        wait = 60;  //waait等于0的时候重新赋值
                        //    } else {
                        //        obj.className = 'btnCodeDisabled';//按钮变灰，不可点击
                        //        obj.setAttribute("disabled", true);
                        //        obj.value = "重新发送(" + wait + "秒)";
                        //        wait--;
                        //        setTimeout(function () {
                        //            time(obj)
                        //        },
                        //        1000)
                        //    }
                        //}
                        //    window.onload = function () {//发送验证码成功按钮编程灰色不可点击状态，并激活60秒倒计时
                        //        //document.getElementById("Obtain").
                        //        if (document.getElementById("Obtain").value == "发送成功") {
                        //            time(document.getElementById("Obtain"));
                        //        }
                        //    }


                        //}
                        //}
                    </script>

                    <br />
                    <div>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color: #5a5555;"><img class="Mblog" src="../Content/Images/LoginImg/xl.jpg" />&nbsp;新浪微博</a>&nbsp;&nbsp;<span style="color: #5a5555">|</span>&nbsp;&nbsp;<a href="#" style="color: #5a5555"><img class="Mblog" src="../Content/Images/LoginImg/txqq.jpg" />&nbsp;腾讯</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<a href="#">忘记密码？</a>--%>
                    </div>
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
