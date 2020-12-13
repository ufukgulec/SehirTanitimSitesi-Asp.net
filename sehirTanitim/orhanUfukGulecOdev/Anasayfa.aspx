<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Anasayfa.aspx.cs" Inherits="orhanUfukGulecOdev.Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="css/anasayfa.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%-- Slayt --%>
    <div class="column tam">
        <div class="slide">
            <asp:Repeater ID="RepeaterSlayt" runat="server">
                <ItemTemplate>
                    <img class="mySlides" src="<%#Eval("resimYol") %>" alt="<%#Eval("alt") %>" style="width: 100%">
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </div>
    <%-- Slayt Sonu--%>
    <%-- İcerik --%>
    <div class="tam">
        <%-- Haberler --%>
        <div class="column yari">
            <h3>HABERLER</h3>
            <br />
            <asp:Repeater ID="RepeaterHaber" runat="server">
                <ItemTemplate>
                    <button type="button" class="collapsible"><%#Eval("baslik") %></button>
                    <div class="haber">
                        <p><%#Eval("aciklama") %></p>
                        <p><%#Eval("tarih") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <%-- Haberler Sonu --%>
        <%-- Etkinlikler --%>

        <div class="column yari">
            <h3>ETKİNLİKLER</h3>
            <br />
            <asp:Repeater ID="RepeaterEtkinlik" runat="server">
                <ItemTemplate>
                    <button type="button" class="collapsible"><%#Eval("baslik") %></button>
                    <div class="haber">
                        <p><%#Eval("aciklama") %></p>
                        <p><%#Eval("tarih").ToString() %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <%-- Etkinlikler Sonu --%>
    </div>
    <%--Ilceler--%>
    <div class="column tam" id="sehir">
        <div class="tab" style="border: none">
            <center>
                <asp:Repeater ID="RepeaterIlceler" runat="server">
                <ItemTemplate>
                        <button class="tablinks" onclick="openCity(event, '<%#Eval("ad") %>')"><%#Eval("ad") %></button>
                    </ItemTemplate>
            </asp:Repeater>
        </center>
        </div>
        <asp:Repeater ID="RepeaterIlceBilgi" runat="server">
            <ItemTemplate>
                <div id="<%#Eval("ad") %>" class="tabcontent">
                    <div class="column yari">
                        <h2><%#Eval("ad") %></h2>
                        <p><%#Eval("bilgi") %></p>
                    </div>
                    <div class="column yari" style="text-align: center">
                        <img alt="<%#Eval("ad") %>" style="border: 1px solid #ddd; border-radius: 4px; padding: 5px; width: 100%; max-height: 300px"
                            src="<%#Eval("resimYol") %>" />
                    </div>
                </div>
            </ItemTemplate>
        </asp:Repeater>
    </div>
    <%--Ilceler Sonu--%>
    <%-- İcerik Sonu--%>
    <script src="js/anasayfa.js"></script>
</asp:Content>
