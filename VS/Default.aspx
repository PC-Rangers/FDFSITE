<%@ Page Title="" Language="C#" MasterPageFile="~/VS/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="VS_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
        Brugernavn:
        <br />  
        <asp:TextBox ID="brugernavn" runat="server"></asp:TextBox><br />
        <br />
        Password:
        <br />
        <asp:TextBox ID="password" TextMode="password" runat="server" Height="22px"></asp:TextBox><br />
        <br />
        <asp:Button ID="LoginKnap" runat="server" Height="21px" Text="Log in" OnClick="LoginKnap_Click" />

</asp:Content>