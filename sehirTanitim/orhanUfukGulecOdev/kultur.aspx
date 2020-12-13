<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="kultur.aspx.cs" Inherits="orhanUfukGulecOdev.kultur" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/kultur.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="column tam">
        <asp:Repeater ID="RepeaterKategori" runat="server">
            <ItemTemplate>
                <div class="card">
                    <div class="tam foto" style="background-image: url(<%#Eval("resimYolu")%>); height: 200px; background-position:center"></div>
                    <h1><%#Eval("ad") %></h1>
                    <p class="price" style="text-align: center"><%# Eval("kultur") %> KÜLTÜRÜ</p>
                    <p><%#Eval("aciklama") %></p>
                    <p>
                        <a href="urunler.aspx?Kategori=<%#Eval("id") %>">Ürünlere Bak</a>
                    </p>
                </div>
            </ItemTemplate>
        </asp:Repeater>

    </div>
</asp:Content>
