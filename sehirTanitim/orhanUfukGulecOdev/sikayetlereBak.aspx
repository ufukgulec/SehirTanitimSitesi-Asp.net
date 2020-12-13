<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="sikayetlereBak.aspx.cs" Inherits="orhanUfukGulecOdev.sikayetlereBak" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Repeater ID="RepeaterSikayetler" runat="server">
        <ItemTemplate>
            <div class="column tam" style="border: 1px solid blue; border-collapse:separate">
                Sikayet ID:<%#Eval("sid") %><br />

                <div class="column yari">
                    ID: <%#Eval("kid") %><br />
                    Tc: <%#Eval("tc") %><br />
                    Adı: <%#Eval("kad") %><br />
                    Soyadı: <%#Eval("soyad") %>
                </div>
                <div class="column yari">
                    Konusu: <%#Eval("skad") %><br />
                    Mesajı: <%#Eval("icerik") %><br />
                </div>
                <br />
                Sikayet Tarihi:<%#Eval("tarih") %>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</asp:Content>
