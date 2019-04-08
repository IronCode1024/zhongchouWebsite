<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SupportProjects.aspx.cs" Inherits="zhongchouWeb.Views.SupportProjects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <style type="text/css">
        .siteBox {
            width: 500px;
            height: 400px;
            margin: 0px auto;
            background-color: #c2bbbb;
            border-radius: 10px;
        }

        .siteContent {
            width: 50%;
            margin: 0px auto;
        }

        .sitetextBox {
            width: 250px;
            height: 40px;
            border-radius: 10px;
            font-size:18px;
        }

        .siteBoxbtn {
            width: 90px;
            height: 30px;
            border-radius: 10px;
            cursor:pointer;
        }
        .qd:hover {
            background-color:blue;
        }
        .qx:hover {
            background-color:red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="siteBox">
            <div style="margin: 0px auto; width: 160px">
                <h1>支持此项目</h1>
            </div>
            <div class="siteContent">
                支持金额：<asp:TextBox ID="TextBox3" CssClass="sitetextBox" runat="server"></asp:TextBox><asp:Label ID="Label1" runat="server" Text="Label" ForeColor="Red" Visible="False"></asp:Label>
                <br />
                <br />
                支付宝：<asp:TextBox ID="TextBox1" CssClass="sitetextBox" runat="server"></asp:TextBox>
                <br />
                <br />
                密&nbsp;&nbsp;&nbsp;码：<asp:TextBox ID="TextBox2" CssClass="sitetextBox" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" CssClass="siteBoxbtn qd" runat="server" Text="确定" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" CssClass="siteBoxbtn qx" runat="server" Text="取消" OnClick="Button2_Click" />
            </div>
        </div>
    </form>
</body>
</html>
