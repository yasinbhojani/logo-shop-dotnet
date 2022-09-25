<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="Gallery.aspx.cs" Inherits="WebApplication1.Gallery" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            text-align: right;
        }
        .style2
        {
            text-align: left;
        }
        .style3
        {
            text-align: left;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatDirection="Horizontal"
        Style="text-align: center; margin-left: 0px;" Width="97%" BorderStyle="None"
        RepeatColumns="3">
        <ItemTemplate>
            <div class="card">
                <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("img") %>' Width="150px" />
                <br />
                <table align="center" cellspacing="5px" class="style1">
                    <tr>
                        <td class="style3">
                            id
                        </td>
                        <td class="style2">
                            <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td class="style3">
                            product name
                        </td>
                        <td class="style2">
                            <asp:Label ID="pnameLabel" runat="server" Text='<%# Eval("pname") %>' />
                        </td>
                    </tr>
                </table>
                <br />
                <asp:Button ID="Button2" runat="server" Text="View More" class="btn" 
                    onclick="Button2_Click"/>
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" Text="Add to Cart" class="btn" 
                    onclick="Button3_Click"/>
            </div>
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [productdetails]"></asp:SqlDataSource>
</asp:Content>
