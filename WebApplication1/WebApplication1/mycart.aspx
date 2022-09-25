<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true"
    CodeBehind="mycart.aspx.cs" Inherits="WebApplication1.mycart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            height: 25px;
            text-align: left;
        }
        .style3
        {
            text-align: left;
        }
        .panel
        {
            padding: 20px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="20"
        DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"
        HorizontalAlign="Left">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
        <Columns>
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True"
                SortExpression="id" />
            <asp:BoundField DataField="pname" HeaderText="pname" SortExpression="pname" />
            <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
            <asp:BoundField DataField="category" HeaderText="category" SortExpression="category" />
            <asp:ImageField DataImageUrlField="img" HeaderText="Image">
                <ControlStyle Height="120px" />
            </asp:ImageField>
            <asp:ButtonField ButtonType="Button" CommandName="Delete" HeaderText="Remove Item"
                ShowHeader="True" Text="Remove">
                <ControlStyle CssClass="btn" />
            </asp:ButtonField>
        </Columns>
        <EditRowStyle BackColor="#999999" />
        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#E9E7E2" />
        <SortedAscendingHeaderStyle BackColor="#506C8C" />
        <SortedDescendingCellStyle BackColor="#FFFDF8" />
        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT m.id, p.pname, p.price, p.category, p.img FROM productdetails p, mycart m WHERE p.id = m.pid AND m.uname = @uname;"
        DeleteCommand="DELETE FROM mycart where id = @id">
        <SelectParameters>
            <asp:SessionParameter Name="uname" SessionField="uname" />
        </SelectParameters>
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int16" />
        </DeleteParameters>
    </asp:SqlDataSource>
    <br />
    <asp:Button ID="Button2" runat="server" Height="42px" Width="106px" OnClick="Button2_Click"
        Text="Place Order" />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />
    <asp:Panel ID="Panel1" runat="server" style="text-align: left" Visible="False" CssClass="panel">
        <table class="style1">
            <tr>
                <td class="style3">
                    <asp:Label ID="Label2" runat="server" Text="Date"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label3" runat="server" Text="Amount"></asp:Label>
                </td>
                <td class="style2">
                    <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label4" runat="server" Text="Extra Charges"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style3">
                    <asp:Label ID="Label5" runat="server" Text="Grand Total"></asp:Label>
                </td>
                <td class="style3">
                    <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="style2">
                    <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
                </td>
                <td class="style2">
                    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="Button3" runat="server" Text="Confirm Order" Height="42px" 
            style="text-align: center" Width="161px" />
    </asp:Panel>
    <br />
</asp:Content>
