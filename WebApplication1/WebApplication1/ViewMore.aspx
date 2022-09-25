<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ViewMore.aspx.cs" Inherits="WebApplication1.ViewMore" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" 
        HorizontalAlign="Center" style="margin-top: 95px">
        <ItemTemplate>
            <table class="style1">
                <tr>
                    <td>
                        <asp:Image ID="Image1" runat="server" Height="150px" 
                            ImageUrl='<%# Eval("img") %>' />
                    </td>
                    <td style="text-align: left">
                        <br />
                        <strong>id:</strong>&nbsp;<asp:Label ID="idLabel" runat="server" 
                            Text='<%# Eval("id") %>' />
                        <br />
                        <strong>pname:</strong>
                        <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                        <br />
                        <strong>category:</strong>
                        <asp:Label ID="categoryLabel" runat="server" Text='<%# Eval("category") %>' />
                        <br />
                        <strong>price:</strong>
                        <asp:Label ID="priceLabel" runat="server" Text='<%# Eval("price") %>' />
                        <br />
                        <strong>description:</strong>
                        <asp:Label ID="descriptionLabel" runat="server" 
                            Text='<%# Eval("description") %>' />
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Add to Cart" class="btn" 
                onclick="Button2_Click"/>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT * FROM [productdetails] WHERE ([id] = @id)">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
