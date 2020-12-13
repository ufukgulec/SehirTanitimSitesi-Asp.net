<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="onemliKisiler.aspx.cs" Inherits="orhanUfukGulecOdev.onemliKisiler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/onemliKisiler.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterKisiler" runat="server">
        <ItemTemplate>
            <div class="column üc">
                <div class="flip-card">
                    <div class="flip-card-inner">
                        <div class="flip-card-front">
                            <img src="images/img_avatar.png" alt="<%#Eval("ad") %><%#Eval("soyad") %>" style="width: 100%; height: 300px;">
                            <h1><%#Eval("ad") %> <%#Eval("soyad") %></h1>
                            <p><%#Eval("unvan") %></p>
                        </div>
                        <div class="flip-card-back">
                            <p><%#Eval("bilgi") %></p>
                        </div>
                    </div>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
