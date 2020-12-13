<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="bilgiler.aspx.cs" Inherits="orhanUfukGulecOdev.bilgiler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/bilgiler.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="column tam">
        <asp:Repeater ID="RepeaterBilgi" runat="server">
            <ItemTemplate>
                <div class="column tam">
                    <h3 style="text-align: center; border-bottom: 1px solid blue"><%#Eval("ad") %></h3>
                    <p>
                        <%#Eval("aciklama") %>
                    </p>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <div class="column tam">
        <div class="slideshow-container">
            <asp:Repeater ID="RepeaterSozler" runat="server">
                <ItemTemplate>
                    <div class="mySlides">
                        <q><%#Eval("söz") %></q>
                        <p class="author">- <%#Eval("söyleyen") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>

            <a class="prev" onclick="plusSlides(-1)">❮</a>
            <a class="next" onclick="plusSlides(1)">❯</a>

        </div>

        <div class="dot-container">
            <asp:Repeater ID="RepeaterDot" runat="server">
                <ItemTemplate>
                    <span class="dot" onclick="currentSlide(<%#Eval("id") %>)"></span>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <div id="mySidenav" class="sidenav">
        <a href="onemliKisiler.aspx" id="about">Kişiler</a>
    </div>
    <script src="js/bilgiler.js"></script>
</asp:Content>
