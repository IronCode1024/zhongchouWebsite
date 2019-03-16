<%@ Page Title="" Language="C#" AutoEventWireup="true" MasterPageFile="~/Views/AllPages.Master" CodeBehind="Index.aspx.cs" Inherits="zhongchouWeb.Views.Index" %>


<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="head">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>拾柴众筹网--首页</title>
</asp:Content>

<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="ContentPlaceHolder1">
    <!DOCTYPE html>
    <html xmlns="http://www.w3.org/1999/xhtml">

    <body>
        <div>
            <%--<asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Views/Login.aspx">登录</asp:LinkButton>--%>
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate></ItemTemplate>
            </asp:Repeater>
        </div>
        <div>
        </div>
    </body>
    </html>
</asp:Content>


