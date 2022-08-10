<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Testing.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 247px;
        }
        .auto-style3 {
            width: 247px;
            height: 30px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            color: #FF0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h1> Registration Form</h1>
        <div>
        </div>
    <table class="auto-style1">
        <tr>
            <td class="auto-style2"><asp:Label ID="Label1" runat="server" Text="Username"></asp:Label><br />
            <asp:TextBox ID="Username" runat="server"></asp:TextBox><br /></td>
            <td><asp:RequiredFieldValidator ID="RequiredUsername" runat="server" ErrorMessage="Username must be filled" ControlToValidate="Username" CssClass="auto-style5"></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label2" runat="server" Text="Password"></asp:Label><br />
            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox><br /></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredPassword" runat="server" ErrorMessage="Password must be filled" ControlToValidate="Password" CssClass="auto-style5"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label3" runat="server" Text="Konfirmasi Password"></asp:Label><br />
            <asp:TextBox ID="Conspassword" runat="server" TextMode="Password"></asp:TextBox><br /></td>
            <td>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password not match" ControlToCompare="Password" ControlToValidate="Conspassword" CssClass="auto-style5"></asp:CompareValidator><br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" CssClass="auto-style5" ErrorMessage="Confirmation Password must be filled" ControlToValidate="Conspassword"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label5" runat="server" Text="Email"></asp:Label><br />
            <asp:TextBox ID="Email" runat="server"></asp:TextBox><br /></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Email must be filled" ControlToValidate="Email" CssClass="auto-style5"></asp:RequiredFieldValidator><br />
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Filled with the right email" ControlToValidate="Email" CssClass="auto-style5" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style2"><asp:Label ID="Label4" runat="server" Text="Gender"></asp:Label><br />
            <asp:DropDownList ID="gender" runat="server">
                <asp:ListItem>Silahkan pilih gender</asp:ListItem>
                <asp:ListItem>Pria</asp:ListItem>
                <asp:ListItem>Wanita</asp:ListItem>
            </asp:DropDownList><br /></td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Choose the gender" ControlToValidate="gender" CssClass="auto-style5" InitialValue="Silahkan pilih gender"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                <asp:Button ID="Button1" runat="server" Text="Register" OnClick="Button_Daftar" />
            </td>
            <td class="auto-style4">
                <input id="Reset1" type="reset" value="reset" /></td>
        </tr>
    </table>
    </form>
    </body>
</html>
