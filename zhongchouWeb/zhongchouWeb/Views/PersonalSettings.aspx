<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PersonalSettings.aspx.cs" Inherits="zhongchouWeb.Views.PersonalSettings"  EnableEventValidation="false"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../Content/Css/Personal.css" rel="stylesheet" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <script src="../Script/PersonalSettings.js"></script>
    <style>
        .footerPage{
            margin-top:510px;
        }
        .headerPage .UserInfoDrop_downBoxUl {  /*个人信息下拉列表*/
         width: 100px;
         margin-left: 10px;
    }
    </style>
     <script type="text/javascript">
         var shengarr = ["湖北省", "湖南省", "广东省"];
         var city = [["武汉", "荆州", "仙桃", "恩施"], ["长沙", "湘潭", "岳阳", "韶山"], ["东莞", "广州", "佛山", "汕头"]];
         function insertfun() {
             var vsheng = document.getElementById("sheng");//找到省的下拉框
             for (var i = 0; i < shengarr.length; i++) {
                 var opp = document.createElement("option");
                 opp.innerHTML = shengarr[i];
                 opp.value = i; //value 是不会在前端显示出来的 和winform中的tag属性有点类似   程序员可以通过它去取到对应的内容
                 vsheng.appendChild(opp);
             }
             insertcityfun();
         }
         function insertcityfun() {
             var id = document.getElementById("sheng").value;
             var vshi = document.getElementById("shi");
             vshi.options.length = 0;
             var cityarr = city[parseInt(id)];
             for (var i = 0; i < cityarr.length; i++) {
                 var cpp = document.createElement("option");
                 cpp.innerHTML = cityarr[i];
                 cpp.value = i;
                 vshi.appendChild(cpp);
             }
         }
    </script>
</head>
<body onload="insertfun()">
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
        <%-- 总框体--%>
        <div class="big">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="XX-Large" Text="个人设置"></asp:Label>
            <a href="Launch.aspx"><asp:Label ID="Label15" runat="server" Font-Bold="False" Font-Size="Small" CssClass="fhsy" Text="<<返回个人中心"></asp:Label></a>
            
            <%-- 设置框体--%>
            <div class="mine">
                <div class="tiao">
                    <div style="height: 40px"></div>
                    <%--<div class="col"></div>--%>
                    <div class="one">
                        <a onmousemove="ChangeDiv('0','JKDiv_',3)" href="#" style="color: black;">资料修改</a>
                    </div>
                    <div style="height: 40px"></div>
                    <div class="two">
                        <a onmousemove="ChangeDiv('1','JKDiv_',3)" href="#" style="color: black;">密码修改</a>
                    </div>
                    <div style="height: 40px"></div>
                    <div class="three">
                        <a onmousemove="ChangeDiv('2','JKDiv_',3)" href="#" style="color: black;">头像修改</a>
                    </div>
                    <div style="height: 40px"></div>
                    <div class="foure">
                        <a onmousemove="ChangeDiv('3','JKDiv_',3)" href="#" style="color: black;">我的优惠券</a>
                    </div>
                    <div style="height: 40px"></div>

                </div>
                <div class="tiaotiao">
                    <div id="JKDiv_0" style="display: block;">
                        <asp:Label ID="Label2" runat="server" Text="邮箱：" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="用户名：" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label9" runat="server" Text="用户名三十天内只可修改一次" Font-Bold="False" Font-Size="Medium"></asp:Label>
                        <div style="height: 20px;">
                        </div>
                        <asp:Label ID="Label5" runat="server" Text="性别：" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <asp:RadioButton ID="RadioButton1" CssClass="RadioButton1" runat="server" Text="男" GroupName="a" />
                        <asp:RadioButton ID="RadioButton2" CssClass="RadioButton2" runat="server" Text="女" GroupName="a" />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="所在地：" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <asp:DropDownList ID="sheng" CssClass="DropDownList1" runat="server" Width="80px" Height="25px"   OnTextChanged="sheng_TextChanged">
                        </asp:DropDownList>
                        <asp:DropDownList ID="shi" CssClass="DropDownList1" runat="server" Width="80px" Height="25px">
                        </asp:DropDownList>
                        <asp:Label ID="Label17" runat="server" Text="Label17" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="网址：" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <asp:Label ID="Label16" runat="server" Text="www.zhongchou.com" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <br />
                        <asp:Label ID="Label8" runat="server" Font-Size="Large" Text="个人说明："></asp:Label>
                        <asp:TextBox ID="TextBox3" runat="server" Height="100px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                        <br />
                        <asp:Button ID="Button1" CssClass="Button1" runat="server" BackColor="#990000" Font-Size="Large" ForeColor="White" Height="38px" Text="保存" Width="65px" OnClick="Button1_Click" />
                    </div>
                    <div id="JKDiv_1" style="display: none;">
                        <asp:Label ID="Label10" runat="server" Text="原密码：" Font-Bold="False" Font-Size="Large" ></asp:Label>
                        <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label11" runat="server" Text="新密码：" Font-Bold="False" Font-Size="Large" ></asp:Label>
                        <asp:TextBox ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Label ID="Label12" runat="server" Text="确认密码：" Font-Bold="False" Font-Size="Large" ></asp:Label>
                        <asp:TextBox ID="TextBox6" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:Button ID="Button2" CssClass="Button2" runat="server" BackColor="#990000" Font-Size="Large" ForeColor="White" Height="38px" Text="确认修改" Width="85px" OnClick="Button2_Click"/>
                    </div>
                    <div id="JKDiv_2" style="display: none;">
                        <asp:Label ID="Label13" runat="server" Text="选择图片：" Font-Bold="False" Font-Size="Large"></asp:Label>
                        <asp:FileUpload ID="FileUpload1" CssClass="FileUpload1" runat="server" />
                        <asp:Image ID="Image1" CssClass="Image1" runat="server" Width="300px" Height="200px" />
                        <asp:Button ID="Button3" CssClass="Button3" runat="server" BackColor="#990000" Font-Size="Large" ForeColor="White" Height="38px" Text="预览图片" Width="85px" OnClick="Button3_Click" />
                        <asp:Button ID="Button4" CssClass="Button4" runat="server" BackColor="#990000" Font-Size="Large" ForeColor="White" Height="38px" Text="确认修改" Width="85px" OnClick="Button4_Click"/>
                    </div>
                    <div id="JKDiv_3" style="display: none;">
                        <asp:Label ID="Label14" runat="server" Text="暂无优惠券" Font-Bold="False" Font-Size="Large"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    </form>



    <!-- 底部导航 页脚 -->
    <div class="footerPage"></div>
    <!--底部导航 over-->

</body>
</html>
