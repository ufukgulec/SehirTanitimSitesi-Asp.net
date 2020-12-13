<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="turizm.aspx.cs" Inherits="orhanUfukGulecOdev.turizm" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/turizm.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="column tam">
        <div id="myBtnContainer">
            <button class="btn active" onclick="filterSelection('all')">Hepsini Gör</button>
            <asp:Repeater ID="RepeaterKategori" runat="server">
                <ItemTemplate>
                    <button class="btn" onclick="filterSelection('<%#Eval("ad") %>')"><%#Eval("ad") %></button>
                </ItemTemplate>
            </asp:Repeater>
        </div>

        <div class="container">
            <asp:Repeater ID="RepeaterMekanlar" runat="server">
                <ItemTemplate>
                    <div class="filterDiv <%#Eval("kategoriAd") %>">
                        <div class="flip-card">
                            <div class="flip-card-inner">
                                <div class="flip-card-front">
                                    <img src="<%#Eval("resimYol") %>" alt="<%#Eval("ad") %>" style="width: 100%; height: 300px;">
                                    <h3><%#Eval("ad") %></h3>
                                </div>
                                <div class="flip-card-back">
                                    <p><%#Eval("aciklama") %></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <script src="js/turizm.js"></script>
</asp:Content>
