<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication1.Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 222px;
        }
        .style3
        {
            width: 463px;
            height: 33px;
            text-align: left;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    Use Your Email as Username to Log in<br />
    <br />
    <table class="style1">
        <tr>
            <td class="style2">
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style3" colspan="2">
                <br />
                <asp:Button ID="Button1" runat="server" style="text-align: left; height: 29px;" 
                    Text="Log In" onclick="Button1_Click" />
                <br />
                <asp:Label ID="Label3" runat="server"></asp:Label>
                <br />
                <br />
                dont have an account 
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/SignUp.aspx">Sign up</asp:HyperLink>
                <br />
                <br />
                <br />
            </td>
        </tr>
    </table>
    <div>
    
    </div>
    </form>
</body>
</html>
