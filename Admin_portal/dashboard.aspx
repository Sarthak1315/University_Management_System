<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="University_Management_System.Admin_portal.dashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        .img_style{
            align-items:center;
        }
        .pan{
            position:absolute;
        }
        .auto-style2 {
            width: 100%;
            height: 620px;
        }
        .auto-style3 {
            width: 300px;
            height: 10px;
        }
        
        .auto-style5 {
            height: 10px;
        }
        .list_link{
            text-decoration:none;
            font-size:large;
        }
        .auto-style6 {
            width: 36%;
            position: absolute;
            left: 566px;
            top: 40px;
            height: 243px;
            margin-top: 13px;
        }
        .auto-style7 {
            height: 26px;
        }
        .auto-style10 {
            width: 227px;
            height: 61px;
        }
        .auto-style12 {
            height: 61px;
            width: 181px;
        }
        .auto-style13 {
            height: 92px;
        }
        .auto-style14 {
            width: 221px;
            height: 61px;
        }
        .sub_btn{
    border-radius:20px;
    border-style:none;
}
        .auto-style19 {
            width: 227px;
            height: 54px;
        }
        .auto-style20 {
            width: 221px;
            height: 54px;
        }
        .auto-style21 {
            height: 54px;
            width: 181px;
        }
        .auto-style22 {
            width: 227px;
            height: 55px;
        }
        .auto-style23 {
            width: 221px;
            height: 55px;
        }
        .auto-style24 {
            height: 55px;
            width: 181px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="background-color: #666666;">
                <center>
                    <asp:Image ID="logo_img" runat="server" ImageUrl="~/img/logo_nav.png" cssClass="img_style" Height="113px" Width="443px"/>
                </center>
            </div>
        </div>
        <br>
        
        <table class="auto-style2" style="position:absolute;">
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:HyperLink ID="l1" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin/admin.aspx">User List</asp:HyperLink>
                </td>
                <td class="auto-style5" style="text-align: center; background-color: #666666">
                    <asp:HyperLink ID="h1" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin_portal/dashboard.aspx">Dashboard</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:HyperLink ID="l2" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin/add_std.aspx">Add Student</asp:HyperLink>
                </td>
                <td rowspan="7">
                    <table class="auto-style6" style="border: medium solid #666666; background-color: #C0C0C0; ">
                        <tr>
                            <td class="auto-style7" colspan="3" style="text-align: center">Add User</td>
                        </tr>
                        <tr>
                            <td class="auto-style10" style="text-align: right">
                                <asp:Label ID="lb_user" runat="server" Enabled="False" Text="User Name"></asp:Label>
                            </td>
                            <td class="auto-style14">
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="tb_user_name" runat="server"></asp:TextBox>
                            </td>
                            <td class="auto-style12">
                                <asp:RequiredFieldValidator ID="rvf_user" runat="server" ControlToValidate="tb_user_name" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="val_user" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp; </td>
                        </tr>
                        <tr>
                            <td class="auto-style19" style="text-align: right">
                                <asp:Label ID="lb_pass" runat="server" Enabled="False" Text="Password"></asp:Label>
                            </td>
                            <td class="auto-style20">
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="tb_pass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style21">
                                <asp:RequiredFieldValidator ID="rfv_pass" runat="server" ControlToValidate="tb_pass" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="val_user" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;&nbsp;
                                </td>
                        </tr>
                        <tr>
                            <td class="auto-style22" style="text-align: right">
                                <asp:Label ID="lb_pass0" runat="server" Enabled="False" Text="ReType Password"></asp:Label>
                            </td>
                            <td class="auto-style23">
                                &nbsp;&nbsp;&nbsp;
                                <asp:TextBox ID="tb_re_pass" runat="server" TextMode="Password"></asp:TextBox>
                            </td>
                            <td class="auto-style24">
                                <asp:RequiredFieldValidator ID="rfv_pass0" runat="server" ControlToValidate="tb_re_pass" Display="Dynamic" ErrorMessage="*" ForeColor="Red" ValidationGroup="val_user" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                <br />
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="tb_pass" ControlToValidate="tb_re_pass" Display="Dynamic" ErrorMessage="Password Not match" ForeColor="Red" SetFocusOnError="True" ValidationGroup="val_user"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" class="auto-style13" style="text-align: center">
                                <asp:Button ID="btn_sub" runat="server" Text="Submit" ValidationGroup="val_user" BackColor="#666666" ForeColor="White" Width="86px" CssClass="sub_btn" Height="35px" OnClick="btn_sub_Click"/>
&nbsp;
                                <asp:Button ID="btn_up" runat="server" Text="Update" ValidationGroup="val_user" BackColor="#666666" ForeColor="White" Width="86px" CssClass="sub_btn" Height="35px" OnClick="btn_up_Click"/>
                            </td>
                        </tr>
                    </table>
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
                    <asp:GridView ID="dgv_user" runat="server" AutoGenerateDeleteButton="True" AutoGenerateSelectButton="True" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" OnSelectedIndexChanged="dgv_user_SelectedIndexChanged" OnRowDeleting="dgv_user_RowDeleting">
                        <AlternatingRowStyle BackColor="White" />
                        <FooterStyle BackColor="#CCCC99" />
                        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                        <RowStyle BackColor="#F7F7DE" />
                        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:HyperLink ID="l3" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin/add_teacher.aspx">Add Teacher</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:HyperLink ID="l4" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin/add_course.aspx">Add Course</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:HyperLink ID="l5" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin/add_sub.aspx">Add Subject</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:HyperLink ID="l6" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin/leave_detail.aspx">Leave Detail</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:HyperLink ID="l7" runat="server" CssClass="list_link" ForeColor="White" NavigateUrl="~/Admin/Attendance_detail.aspx">Attendance Detail</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3" style="text-align: center; background-color: #666666;">
                    <asp:LinkButton ID="logout_btn" runat="server" CssClass="list_link" ForeColor="White" OnClick="logout_btn_Click" >Log Out</asp:LinkButton>
                </td>
            </tr>
        </table>
        
        
    </form>
</body>
</html>
