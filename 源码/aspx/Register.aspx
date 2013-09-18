<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="aspx_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" Runat="Server">
    <link href="../css/Register_style.css" rel="stylesheet" type="text/css"/>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Active" Runat="Server">
    <ul id="nav" class="sf-menu sf-shadow">
        <li>
            <a data-description="欢迎来到论坛" href="Default.aspx">主页</a>
        </li>
        <li>
            <a data-description="论坛主要模块" href="Default.aspx">模块</a>
            <ul>
                <li><asp:LinkButton ID="LinkButton1" runat="server" Text="新生问答" OnClick="LinkButton1_Click"></asp:LinkButton></li>
                <li><asp:LinkButton ID="LinkButton2" runat="server" Text="校园趣事" OnClick="LinkButton2_Click"></asp:LinkButton></li>
                <li><asp:LinkButton ID="LinkButton3" runat="server" Text="快乐学习" OnClick="LinkButton3_Click"></asp:LinkButton></li>
                <li><asp:LinkButton ID="LinkButton4" runat="server" Text="毕业情怀" OnClick="LinkButton4_Click"></asp:LinkButton></li>
            </ul>
            <li>
                <a data-description="团队网站介绍" href="About.aspx">关于我们</a>
            </li>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="my_div" Runat="Server">
    <div class="logo_register"  style="padding:50px 0 0 0">
        <img src="../images/logo_register.gif" alt="97share" />
    </div>
    <div class="Reg_style1">
    
         <table>
            <tr>
                <td class="Reg_style3">用户：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="User" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="User" ErrorMessage="*用户名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">密码：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                        ControlToValidate="password" ErrorMessage="*密码要求6-12位" ForeColor="Red" 
                        ValidationExpression="^\w{6,12}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">密码确认：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="confirm_psw" runat="server" TextMode="Password" 
                        ></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="password" ControlToValidate="confirm_psw" 
                        ErrorMessage="*密码不同!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">电子邮件：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="Email" runat="server" ></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                        ControlToValidate="Email" ErrorMessage="*请输入正确邮箱地址" ForeColor="Red" 
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3"></td>
                <td class="Reg_style4">
                    <asp:Button ID="submit" runat="server" onclick="Button1_Click" Text="完成注册" 
                        Font-Bold="True" Font-Italic="False" Height="29px" />
                    <asp:Label ID="User_Exist" runat="server" Text="此用户已经被注册！" Visible="False" 
                        ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    <div style="margin-left: 120px">
    </div>
    </div>
</asp:Content>

