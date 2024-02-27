<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin_login.aspx.cs" Inherits="University_Management_System.Admin_portal.admin_login" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
            <style type="text/css">
        .auto-style3 {
            width: 220px;
                    height: 48px;
                }
        .auto-style4 {
            position: absolute;
            top: 33%;
            left: 34%;
            height: 300px;
            width: 500px;
            margin-top: 0px;
            border-radius:25px;
        }
        .auto-style5 {
            width: 220px;
            height: 46px;
        }
        .auto-style6 {
            height: 57px;
        }
        .sub_btn{
            border-radius:20px;
            border-style:none;
        }
                .auto-style8 {
                    height: 77px;
                    font-size:x-large;
/*                    font-family:sans-serif;*/
                }
                .img_style{
                    align-items:center;
                }
                </style>
</head>
<body>
    <form id="form1" runat="server">

        <div style="background-color: #666666">
            
            <table class="auto-style4" style="border: medium solid #666666; background-color: #C0C0C0;">
                <tr>
                    <td colspan="2" class="auto-style8" style="text-align: center; color: #232323;">Log In</td>
                </tr>
                <tr>
                    <td class="auto-style5" style="text-align: center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="user_l" runat="server" Text="User Name" AssociatedControlID="u_name"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="u_name" runat="server" Width="150px" Height="28px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfv_user" runat="server" ControlToValidate="u_name" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3" style="text-align: center">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="pass" runat="server" Text="Password" AssociatedControlID="Password"></asp:Label>
                    </td>
                    <td class="auto-style6">
                        &nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="Password" runat="server" TextMode="Password" Width="150px" Height="28px"></asp:TextBox>
                    &nbsp;<asp:RequiredFieldValidator ID="rfv_pass" runat="server" ControlToValidate="Password" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center">
                        <asp:Button ID="sub" runat="server" Height="35px" Text="Submit" Width="86px" OnClick="sub_Click" BackColor="#666666" CssClass="sub_btn" ForeColor="White" />
                    </td>
                </tr>
            </table>
            <center>
            <asp:Image ID="logo_img" runat="server" ImageUrl="~/img/logo_nav.png" cssClass="img_style" Height="113px" Width="443px"/>
                </center>
        </div>
    </form>
</body>
</html>
