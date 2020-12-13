<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="orhanUfukGulecOdev.iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/iletisim.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterYetkililer" runat="server">
        <ItemTemplate>
            <div class="card">
                <img src="<%#Eval("resimYol") %>" alt="<%#Eval("ad")%> <%#Eval("soyad") %>" style="max-width: 300px; max-height: 200px">
                <h1><%#Eval("ad")%> <%#Eval("soyad") %></h1>
                <p class="title"><%#Eval("unvan") %></p>
                <div style="margin: 24px 0;">
                    <a href="#"><i class="fa fa-dribbble"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-linkedin"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                </div>
                <p>
                    <button>İletişim</button>
                </p>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div id="mySidenav" class="sidenav">
        <a href="sikayet.aspx" id="about">Şikayet</a>
    </div>
    <div class="column tam">
    </div>
    <script src="js/iletisim.js"></script>
</asp:Content>
