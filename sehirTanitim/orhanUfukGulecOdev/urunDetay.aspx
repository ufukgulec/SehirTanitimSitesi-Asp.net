<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="urunDetay.aspx.cs" Inherits="orhanUfukGulecOdev.urunDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/urunDetay.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterDetay" runat="server">
        <ItemTemplate>
            <div class="column tam">
                <div class="column side">
                    <img src="<%#Eval("resimYolu") %>" width="200" />
                </div>
                <div class="column middle">
                    <h2><%#Eval("ad") %></h2>
                    <%#Eval("aciklama") %>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>
    <div class="column tam">
        <asp:Repeater ID="RepeaterSatis" runat="server">
            <ItemTemplate>
                <div class="column tam detay">
                    <div class="column yari">
                        <h2><%#Eval("dukkan") %></h2>
                        <h5><%#Eval("adres") %></h5>
                        <h5><%#Eval("tel") %></h5>
                    </div>
                    <div class="column yari">
                        <h4><%#Eval("fiyat") %>₺</h4>
                        <h4>Beğeni Sayısı:<%#Eval("begeniSayisi") %><h4>
                    </div>
                    <div class="column tam">
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>


    </div>


</asp:Content>
