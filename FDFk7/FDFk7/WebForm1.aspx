<%@ Page Title="" Language="C#" MasterPageFile="~/mester.master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="FDFk7.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="contentPlaceHolder" runat="server">
    <asp:TextBox ID="navn" runat="server" placeholder="Indtast bruger navn"></asp:TextBox>
    <br />  
    <br />  
    <asp:TextBox ID="kode" runat="server" placeholder="Indtast bruger navn"></asp:TextBox>
    <br /> 
    <br />   
    <asp:Button ID="send" runat="server" Text="send" />
</asp:Content>
