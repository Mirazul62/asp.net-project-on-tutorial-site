<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style3 {
            width: 100%;
        }
        .auto-style4 {
            width: 481px;
            text-align: right;
        }
        .auto-style5 {
            width: 183px;
            text-align: right;
        }
        .auto-style6 {
            width: 481px;
            text-align: right;
            height: 26px;
        }
        .auto-style7 {
            width: 183px;
            height: 26px;
            text-align: right;
        }
        .auto-style8 {
            height: 26px;
            text-align: left;
        }
        .auto-style10 {
            height: 20px;
        }
        .auto-style11 {
            height: 655px;
            margin-right: 0px;
        }
        .auto-style12 {
            text-align: right;
        }
        .auto-style13 {
            height: 26px;
        }
        .auto-style14 {
            text-align: left;
        }
        .auto-style15 {
            width: 183px;
            text-align: left;
        }
        .auto-style16 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 152px; width: 1400px;">
    <form id="form1" runat="server" class="auto-style11" style="background-image: url('Images/sky-blue-plain-desktop-wallpaper-green-color-hd.jpg')">
        <div class="auto-style10">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
         <<strong><em><span class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; LogIn page </span></em></strong> <div style="margin-left:auto;margin-right:auto;" >
            <strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<em style="background-image: none">&nbsp; </em></strong></div>
        <table class="auto-style3">
            <tr>
                <td class="auto-style6">UserName</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxUsername" runat="server" Width="180px" ForeColor="Black" OnTextChanged="TextBoxUsername_TextChanged"></asp:TextBox>
                </td>
                <td class="auto-style13">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBoxUsername" ErrorMessage="*Please enter the UserName" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">Password</td>
                <td class="auto-style7">
                    <asp:TextBox ID="TextBoxPassword" runat="server" TextMode="Password" Width="180px" ForeColor="Black"></asp:TextBox>
                </td>
                <td class="auto-style8">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBoxPassword" ErrorMessage="*Please enter the password" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style12">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style15">
                    <asp:Button ID="ButtonLogIN" runat="server" OnClick="Button1_Click" Text="Log In" ForeColor="Black" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
                <td class="auto-style14">
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Registration.aspx" ForeColor="White">Create new account</asp:HyperLink>
                </td>
            </tr>

        </table>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  </div>    
        </div>
        </form>
    
</body>
</html>
