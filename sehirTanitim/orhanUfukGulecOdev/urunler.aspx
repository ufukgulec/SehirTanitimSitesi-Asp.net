<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="urunler.aspx.cs" Inherits="orhanUfukGulecOdev.urunler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/urunler.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterUrun" runat="server">
        <ItemTemplate>
            <div class="column tam" style="border: 1px solid black; border-radius: 10px">
                <div class="column side">
                    <img class="resim" src="<%#Eval("resimYolu") %>" alt="<%#Eval("ad") %>" />
                </div>
                <div class="column middle icerik">
                    <h2><%#Eval("ad") %></h2>
                    <h4><%#Eval("ktgr") %></h4>
                    <p><%#Eval("aciklama") %></p>
                    <a href="urunDetay.aspx?ID=<%#Eval("id") %>">Detay</a>
                </div>
            </div>
        </ItemTemplate>
        <AlternatingItemTemplate>

        </AlternatingItemTemplate>
    </asp:Repeater>
</asp:Content>
