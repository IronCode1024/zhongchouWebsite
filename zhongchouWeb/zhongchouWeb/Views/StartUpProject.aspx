<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StartUpProject.aspx.cs" Inherits="zhongchouWeb.Views.StartUpProject" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>


    <link href="../Content/Css/StartUpProjectStyle.css" rel="stylesheet" />
    <script src="../Script/jQuerys/jquery-1.10.2.min.js"></script>
    <script src="../Script/InitiateProjectScripr.js"></script>
    <style type="text/css">
        .xia {
            height: 139px;
            width: 212px;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
        <div class="jindutiao">
            <ul>
                <li style="z-index: 4" class="one"><a>① 项目信息</a></li>
                <li style="z-index: 3" id="two"><a>② 回报设置</a></li>
                <li style="z-index: 2" id="there"><a>③ 发起人信息</a></li>
                <li style="z-index: 1" id="four"><a>④ 设置</a></li>
            </ul>
        </div>
        <div id="content">

            <div class="tian1"></div>

            <div class="tian2"></div>
            <div class="center-left">
                &nbsp;
                &nbsp;&nbsp;<br />
                &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="项目详情"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="项目名称："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Width="360px" Height="30px" CssClass="" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="目标金额：" Height="30px"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Height="20px" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                &nbsp;<asp:Label ID="Label6" runat="server" Text="元"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Text="目标天数：" Height="30px"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Height="20px"></asp:TextBox>
                &nbsp;<asp:Label ID="Label7" runat="server" Text="天"></asp:Label>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Text="类别："></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Buttonn1" CssClass="buttoncs" runat="server" Text="科技" OnClick="Buttonn1_Click" />
                <asp:Button ID="Buttonn2" CssClass="buttoncs" runat="server" Text="艺术" OnClick="Buttonn2_Click" />
                <asp:Button ID="Buttonn3" CssClass="buttoncs" runat="server" Text="设计" OnClick="Buttonn3_Click" />
                <asp:Button ID="Buttonn4" CssClass="buttoncs" runat="server" Text="音乐" OnClick="Buttonn4_Click" />
                <asp:Button ID="Buttonn5" CssClass="buttoncs" runat="server" Text="影视" OnClick="Buttonn5_Click" />
                <asp:Button ID="Buttonn6" CssClass="buttoncs" runat="server" Text="出版" OnClick="Buttonn6_Click" />
                <asp:Button ID="Buttonn7" CssClass="buttoncs" runat="server" Text="动漫游戏" OnClick="Buttonn7_Click" />
                <asp:Button ID="Buttonn8" CssClass="buttoncs" runat="server" Text="工艺" OnClick="Buttonn8_Click" />
                <asp:Button ID="Buttonn9" CssClass="buttoncs" runat="server" Text="公开课" OnClick="Buttonn9_Click" />
                <asp:Button ID="Buttonn10" CssClass="buttoncs" runat="server" Text="农业" OnClick="Buttonn10_Click" />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 项目地点：<%--<asp:DropDownList ID="DropDownList1" runat="server" Height="16px" Width="43px">
                </asp:DropDownList>--%>

                <select id="sheng" runat="server">
                    <option>--请选择省--</option>
                </select>
                <select id="shi" runat="server">
                    <option>--请选择市--</option>
                </select>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <script>
                    $(function () {
                        var shengarr = [('安徽'),
('澳门'),
('北京'),
('重庆'),
('福建'),
('广东'),
('广西'),
('贵州'),
('甘肃'),
('黑龙江'),
('河北'),
('河南'),
('湖北'),
('湖南'),
('海南'),
('吉林'),
('江苏'),
('江西'),
('辽宁'),
('内蒙古'),
('宁夏'),
('青海'),
('上海'),
('山东'),
('山西'),
('陕西'),
('四川'),
('天津'),
('台湾'),
('云南'),
('新疆'),
('西藏'),
('香港'),
('浙江')];
                        var city = [[('合肥')],
[('澳门')],
[('北京')],
[('重庆')],
[('福州')],
[('广州')],
[('南宁')],
[('贵阳')],
[('兰州')],
[('哈尔滨')],
[('石家庄')],
[('郑州')],
[('武汉')],
[('长沙')],
[('海口')],
[('长春')],
[('南京')],
[('南昌')],
[('辽宁')],
[('呼和浩特')],
[('宁夏')],
[('西宁')],
[('上海')],
[('济南')],
[('太原')],
[('西安')],
[('成都')],
[('天津')],
[('台北')],
[('昆明')],
[('乌鲁木齐')],
[('拉萨')],
[('香港')],
[('杭州')]];
                        insertfun();
                        function insertfun() {
                            var vsheng = document.getElementById("sheng");//找到省的下拉框
                            for (var i = 0; i < shengarr.length; i++) {
                                var opp = document.createElement("option");
                                opp.innerHTML = shengarr[i];
                                opp.value = i; //value 是不会在前端显示出来的 和winform中的tag属性有点类似   程序员可以通过它去取到对应的内容
                                vsheng.appendChild(opp);//appendChild  把vsheng的值移除到opp中
                            }

                        }
                        var s1;
                        $('#sheng').change(function () {
                            insertcityfun();
                            var s = shengarr[$('#sheng').val()];

                            //alert(s);
                            //alert(s1);
                            $('#Label20').text(s + s1);

                        })

                        function insertcityfun() {
                            var id = document.getElementById("sheng").value;
                            var vshi = document.getElementById("shi");
                            vshi.options.length = 0;
                            var cityarr = city[parseInt(id)];
                            for (var i = 0; i < cityarr.length; i++) {
                                var cpp = document.createElement("option");
                                cpp.innerHTML = cityarr[i];
                                s1 = cityarr[i];
                                cpp.value = i;
                                vshi.appendChild(cpp);
                            }

                        }

                        $("#label20").valueOf("dfsf");
                        var s = document.getElementById("sheng").value;
                        var s1 = document.getElementById("shi").value;



                    });
                </script>

                <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label>

                &nbsp;<%--<asp:DropDownList ID="DropDownList2" runat="server" Height="16px" Width="43px">
                </asp:DropDownList>--%>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="项目封面："></asp:Label>
                &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
                &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Font-Size="Smaller" Text="支持jpg,jpeg,png,gif格式。大小不超过5M. 建议尺寸  ： 600*450px"></asp:Label>
                <br />
                <br />

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 项目简介：<asp:TextBox ID="TextBox5" runat="server" Height="111px" Width="500px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 项目详情：<asp:TextBox ID="TextBox8" runat="server" Height="111px" Width="500px" TextMode="MultiLine"></asp:TextBox>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 标签：<asp:TextBox ID="TextBox7" runat="server" Height="43px" Width="500px"></asp:TextBox>
                <br />
                <br />
                <br />

                <asp:Button ID="Button12" runat="server" Text="下一步" CssClass="XybBc" OnClick="Button12_Click" />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </div>

            <div class="tian3"></div>
            <div class="center-right">
                <div class="shang">
                    <br />
                    <br />

                    <asp:Label ID="Label12" runat="server" Text="label" Font-Size="18px" ForeColor="White"></asp:Label>
                    <br />
                </div>
                <div class="xia">
                    &nbsp;&nbsp;<br />
                    &nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Label13" runat="server" Text="金额查看" Width="130px"></asp:Label>
                    <br />
                    <br />
                    &nbsp;
                    <asp:Label ID="Label14" runat="server" Font-Size="Smaller" Text="目标："></asp:Label>
                    <asp:Label ID="Label15" runat="server" Font-Size="Smaller" Text="Label"></asp:Label>
                    &nbsp;<asp:Label ID="Label16" runat="server" Text="￥"></asp:Label>
                    <asp:Label ID="Label17" runat="server" Font-Size="Smaller" Text="0"></asp:Label>
                    <br />
                </div>
            </div>
        </div>

        <div id="content2" style="text-align: center">

            <div class="center-left2">
                &nbsp;
                &nbsp;&nbsp;<br />
                &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Font-Size="Large" Text="回报设置"></asp:Label>
                <br />
                <br />
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="733px" Height="119px" CssClass="gridview">
                    <Columns>
                        <asp:BoundField HeaderText="项目名称" DataField="ProjectName" />
                        <asp:BoundField HeaderText="目标金额" DataField="TargetAmountOfMoney" />
                        <asp:BoundField HeaderText="已筹金额" DataField="AlreadyRaisedMoney" />
                        <asp:BoundField HeaderText="发布状态" DataField="ReleaseStatus" />
                        <asp:BoundField HeaderText="发布时间" DataField="ReleaseDate" />
                        <asp:BoundField HeaderText="运费" />
                        <asp:TemplateField HeaderText="操作">


                            <ItemTemplate>
                                <asp:Button ID="Button1" runat="server" ForeColor="#FF3300" Text="删除" />
                                <br />
                                <br />
                                <asp:Button ID="Button2" runat="server" ForeColor="#FF3300" Text="编辑" />
                            </ItemTemplate>


                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <br />
                <br />
                <br />
                <br />
                <asp:Button ID="Button3" runat="server" CssClass="buttoncs" Text="下一步" Height="47px" Width="144px" OnClientClick="bb()" />
                &nbsp;
                <asp:Button ID="Button4" runat="server" CssClass="buttoncs" Height="47px" Text="上一步" Width="144px" ForeColor="Black" OnClientClick="aa1()" />
            </div>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <div class="center-right2">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Label">回报待定</asp:Label>
            </div>

        </div>

        <div id="content3">
            <div class="center-left3">

                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Labe_11" runat="server" Font-Size="Large" Text="发起人信息"></asp:Label>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Labe_l2" runat="server" Text="真实姓名："></asp:Label>
                <asp:TextBox ID="TextBox_1" runat="server" Height="30px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_3" runat="server" Text="所在地："></asp:Label>
                <select id="sheng1">
                    <option>--请选择--</option>

                </select>
                <select id="shi1">
                    <option>--请选择--</option>

                </select>
                <script>
                    $(function () {
                        var shengarr = [('安徽'),
('澳门'),
('北京'),
('重庆'),
('福建'),
('广东'),
('广西'),
('贵州'),
('甘肃'),
('黑龙江'),
('河北'),
('河南'),
('湖北'),
('湖南'),
('海南'),
('吉林'),
('江苏'),
('江西'),
('辽宁'),
('内蒙古'),
('宁夏'),
('青海'),
('上海'),
('山东'),
('山西'),
('陕西'),
('四川'),
('天津'),
('台湾'),
('云南'),
('新疆'),
('西藏'),
('香港'),
('浙江')];
                        var city = [[('合肥')],
[('澳门')],
[('北京')],
[('重庆')],
[('福州')],
[('广州')],
[('南宁')],
[('贵阳')],
[('兰州')],
[('哈尔滨')],
[('石家庄')],
[('郑州')],
[('武汉')],
[('长沙')],
[('海口')],
[('长春')],
[('南京')],
[('南昌')],
[('辽宁')],
[('呼和浩特')],
[('宁夏')],
[('西宁')],
[('上海')],
[('济南')],
[('太原')],
[('西安')],
[('成都')],
[('天津')],
[('台北')],
[('昆明')],
[('乌鲁木齐')],
[('拉萨')],
[('香港')],
[('杭州')]];
                        inserts1();
                        function inserts1() {
                            var vsheng = document.getElementById("sheng1");//找到省的下拉框
                            for (var i = 0; i < shengarr.length; i++) {
                                var opp = document.createElement("option");
                                opp.innerHTML = shengarr[i];
                                opp.value = i; //value 是不会在前端显示出来的 和winform中的tag属性有点类似   程序员可以通过它去取到对应的内容
                                vsheng.appendChild(opp);//appendChild  把vsheng的值移除到opp中
                            }

                        }

                        $('#sheng1').change(function () {
                            inserts2();
                        })
                        function inserts2() {
                            var id = document.getElementById("sheng1").value;
                            var vshi = document.getElementById("shi1");
                            vshi.options.length = 0;
                            var cityarr = city[parseInt(id)];
                            for (var i = 0; i < cityarr.length; i++) {
                                var cpp = document.createElement("option");
                                cpp.innerHTML = cityarr[i];
                                cpp.value = i;
                                vshi.appendChild(cpp);
                            }

                        }

                    });

                </script>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_4" runat="server" Text="用户邮箱："></asp:Label>
                <asp:TextBox ID="TextBox_2" runat="server" Height="30px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_5" runat="server" Font-Size="Large" Text="补充打款信息"></asp:Label>
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_6" runat="server" Text="银行名称："></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox_3" runat="server" Height="30px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label_7" runat="server" Text="开户支行："></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox_4" runat="server" Height="30px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Labe_l8" runat="server" Text="开户名称："></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox_5" runat="server" Height="30px"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Labe_l9" runat="server" Text="银行账号："></asp:Label>
                &nbsp;<asp:TextBox ID="TextBox_6" runat="server" Height="30px"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <br />

                <asp:Button ID="Bt1" runat="server" CssClass="buttoncs" Text="上一步" OnClientClick="bb1()" />
                &nbsp;&nbsp;
                <asp:Button ID="Bt2" runat="server" CssClass="buttoncs" Text="保存草稿" />
                <asp:Button ID="Bt3" runat="server" CssClass="buttoncs" Text="提交审核" OnClick="Bt3_Click" />

            </div>

            <div class="center-right3">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label19" runat="server" Text="Label">请仔细填写信息</asp:Label>
            </div>
        </div>
        <div id="content4">
            <div class="xian">
                恭喜你，你申请的项目已成功提交，我们<br />
                将对项目进行审核，请耐心等待 
                <br />
                <br />
                <br />
                <br />
                现在可以进入：<a href="PersonalSettings.aspx" style="color:blue">个人中心</a>
            </div>
        </div>
    </form>
</body>
</html>

