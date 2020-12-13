<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="sikayet.aspx.cs" Inherits="orhanUfukGulecOdev.sikayet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/sikayet.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="column tam">
        <form runat="server">
            <label>Tc Kimlik Numaranız:</label>
            <asp:TextBox ID="TextBoxTc" runat="server" placeholder="Tc Giriniz"></asp:TextBox>
            <label>Adınız:</label>
            <asp:TextBox ID="TextBoxAd" runat="server" placeholder="Adınızı Giriniz"></asp:TextBox>
            <label>Soyadınız:</label>
            <asp:TextBox ID="TextBoxSoyad" runat="server" placeholder="Soyadınızı Giriniz"></asp:TextBox>
            <label>Konu:</label>
            <asp:DropDownList ID="DropDownListKonu" runat="server">
            </asp:DropDownList>
            <label>Mesajınız:</label>
            <asp:TextBox ID="TextBoxMesaj" runat="server" placeholder="Bir şeyler yazınız..." Height="200px" TextMode="MultiLine"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Gönder" OnClick="Button1_Click"/>
        </form>
        
    </div>
</asp:Content>

