 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="zhongchouWeb.Views.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="icon" href="../Content/Images/IndexImg/icons.PNG" />
    <link href="../Content/Css/LoginRegisteStyle.css" rel="stylesheet" />
    <title>注册</title>
</head>
<body>
    <div class="Panelmaster">
        <div class="navTop">
            <a href="~/Home/Index">
                <img src="../Content/Images/IndexImg/1531469861.png" />
            </a>

            <div class="navTopleft">
                <%--<font>已有账号&nbsp; @Html.ActionLink("直接登录", "Login")</font>--%>
                已有账号&nbsp;<a href="Login.aspx">直接登录</a>
            </div>

        </div>
        <div style="border-bottom: 1px solid #949090;"></div>

        <div class="Bottoms">
            <div class="BgImg">
                <img width="700" style="width:90%" src="../Content/Images/LoginImg/bgLoginImg.PNG" />
            </div>
            <div class="panel panel-success">
                <div class="panel-heading text-center"><h2 style="margin-top:5px">用户注册</h2></div>
                <div class="panel-body">

                    <form id="form1" runat="server">
                        <div class="form-group" style="margin-left: 26px">
                            用户名：<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder = "用户名"></asp:TextBox>
                        </div>

                        <div class="form-group" style="margin-left: 41px">
                            邮箱：<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder = "邮箱"></asp:TextBox>
                        </div>

                        <div class="form-group" style="margin-left: 41px">
                            密码：<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder = "密码"></asp:TextBox>
                        </div>

                        <div class="form-group" style="margin-left: 10px">
                            确认密码：<asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder = "确认密码"></asp:TextBox>
                        </div>

                        <div class="form-group" style="margin-left: 20px">
                            验证码：
                            <asp:TextBox Width="130" ID="TextBox5" runat="server" class="form-control" placeholder = "验证码"></asp:TextBox>

                            <asp:Button ID="Button2" runat="server" class="btn btn-success" Text="获取" />

                        </div>


                        <div class="text-center">
                            <asp:Button ID="Button1" runat="server" Text="注册" class="btn btn-success" OnClick="Button1_Click" />
                        </div>

                    </form>


                    <%--@using (@Html.BeginForm("Register", "Home", FormMethod.Post, new { @id = "" }))
                    {
                        @Html.ValidationSummary(true)
                        @*@Html.ValidationMessage("fghfg")*@

                        <h4 class="form-Tips">@Html.ValidationMessageFor(m => m.Name, null, new { @style = "color:red;" })</h4>
                        <div class="form-group" style="margin-left:25px;">
                            <label>@*用户名：*@</label>
                            用户名：@Html.TextBoxFor(x => x.Name, new { placeholder = "用户名", @class = "form-control" })
                        </div>

                        <h4 class="form-Tips">@Html.ValidationMessageFor(m => m.Email, null, new { @style = "color:red" })</h4>
                        <div class="form-group" style="margin-left:51px">
                            @*<label>邮箱：</label>*@
                            邮箱：@Html.TextBoxFor(x => x.Email, new { placeholder = "邮箱", @class = "form-control" })
                        </div>

                        <h4 class="form-Tips">@Html.ValidationMessageFor(m => m.Password, null, new { @style = "color:red" })</h4>
                        <div class="form-group" style="margin-left:51px">
                            @*<label>密码：</label>*@
                            密码：@Html.PasswordFor(x => x.Password, new { placeholder = "密码", @class = "form-control" })
                        </div>

                        <h4 class="form-Tips">@Html.ValidationMessageFor(m => m.ConfirmPassword, null, new { @style = "color:red" })</h4>
                        <div class="form-group">
                            @*<label>确认密码：</label>*@
                            确认密码：@Html.PasswordFor(x => x.ConfirmPassword, new { placeholder = "确认密码", @class = "form-control" })
                        </div>


                        <h4 class="form-Tips" style="color:red">@Html.ValidationMessageFor(m => m.VerificationCode, null, new { @style = "color:red" })@ViewBag.VerificaCode @Html.ViewBag.failInSend</h4> @*failInSend邮箱发送失败*@
                        <div class="form-group" style="margin-left:36px;">
                            @*<input type="text" class="form-control" style="width:30%;" />*@
                            验证码： @Html.TextBoxFor(x => x.VerificationCode, new { placeholder = "验证码", @style = "width:30%;", @class = "form-control" })

                            <input class="btn btn-success" id="Obtain" name="huoqu" type="submit" style="width:110px;height:40px" value="@Html.Value("fasong")" />  @*@Html.Value("fasong")*@

                            @*@Html.ActionLink("获取", "Emails")*@

                            <br />
                        </div>

                        <div class="text-center">
                            <input class="btn btn-success" type="submit" value="注册" name="huoqu" />
                        </div>
                    }--%>


                    <script type="text/javascript">
                        $(function () {
                            var wait = 60;
                            function time(obj) {
                                if (wait == 0) {
                                    obj.className = 'btnCode';
                                    obj.removeAttribute("disabled");
                                    obj.value = "获取";
                                    wait = 60;  //waait等于0的时候重新赋值
                                } else {
                                    obj.className = 'btnCodeDisabled';//按钮变灰，不可点击
                                    obj.setAttribute("disabled", true);
                                    obj.value = "重新发送(" + wait + "秒)";
                                    wait--;
                                    setTimeout(function () {
                                        time(obj)
                                    },
                                    1000)
                                }
                            }
                            window.onload = function () {//发送验证码成功按钮编程灰色不可点击状态，并激活60秒倒计时
                                //document.getElementById("Obtain").
                                if (document.getElementById("Obtain").value == "发送成功") {
                                    time(document.getElementById("Obtain"));
                                }
                            }
                        })
                    </script>

                    <br />
                           <div>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" style="color:#5a5555;"><img class="Mblog" src="../Content/Images/LoginImg/xl.jpg" />&nbsp;新浪微博</a>&nbsp;&nbsp;<span style="color:#5a5555">|</span>&nbsp;&nbsp;<a href="#" style="color:#5a5555"><img class="Mblog" src="../Content/Images/LoginImg/txqq.jpg" />&nbsp;腾讯</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">忘记密码？</a></div>
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
