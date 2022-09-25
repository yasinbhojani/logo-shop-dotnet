<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditProfile.aspx.cs" Inherits="WebApplication1.EditProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label2" runat="server" Text="Select Image"></asp:Label>
    <asp:FileUpload ID="FileUpload1" runat="server" />
    <br />
    <br />
    <asp:Image ID="Image1" runat="server" Width="100px" />
&nbsp;&nbsp;
    <asp:Button ID="Button2" runat="server" Text="View" 
    onclick="Button2_Click" />
&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Text="Update" 
    onclick="Button3_Click" />
    <br />
</asp:Content>
