<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Forget_password.aspx.cs" Inherits="Forget_password" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 1029px;
            height: 124px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <center class="auto-style1">
                
                Enter your register Email ID :<asp:TextBox ID="TextEmail" runat="server"></asp:TextBox><br /></br>
                <asp:Button ID="Butpwd" runat="server" Text="Get your password" OnClick="Butpwd_Click"></asp:Button><br /> 
               </br> <asp:Label ID="Labmsg" runat="server" ></asp:Label>
                    
            </center>
        </div>
    </form>
</body>
</html>
