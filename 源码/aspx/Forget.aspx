<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Forget.aspx.cs" Inherits="aspx_Forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" runat="Server">
        <link href="../css/Register_style.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Active" runat="Server">
    <ul id="nav" class="sf-menu sf-shadow">
        <li>
            <a data-description="欢迎来到论坛" href="Default.aspx">主页</a>
        </li>
        <li>
            <a data-description="论坛主要模块" href="Default.aspx">模块</a>
            <ul>
                <li>
                    <asp:LinkButton ID="HyperLink1" runat="server" Text="新生问答" OnClick="LinkButton1_Click"></asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="HyperLink2" runat="server" Text="校园趣事" OnClick="LinkButton2_Click"></asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="HyperLink3" runat="server" Text="快乐学习" OnClick="LinkButton3_Click"></asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="HyperLink4" runat="server" Text="毕业情怀" OnClick="LinkButton4_Click"></asp:LinkButton></li>
            </ul>
        </li>
        <li>
            <a data-description="团队网站介绍" href="About.aspx">关于我们</a>
        </li>
    </ul>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="my_div" runat="Server">
    <div class="login" style="padding: 50px 0 0 0">
        <img src="../images/logo_forgetpwd.gif" alt="97share" />
    </div>
    <div class="Reg_style1">
        <table>
            <tr>
                <td class="Reg_style3">用户名：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="User" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                        ControlToValidate="User" ErrorMessage="*用户名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">注册邮箱：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server"
                        ControlToValidate="TextBox1" ErrorMessage="*请输入正确邮箱地址" ForeColor="Red"
                        ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">新密码：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="password" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                        ControlToValidate="password" ErrorMessage="*密码要求6-12位" ForeColor="Red"
                        ValidationExpression="^\w{6,12}$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">新密码确认：</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="confirm_psw" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ControlToCompare="password" ControlToValidate="confirm_psw"
                        ErrorMessage="*两次密码不同!" ForeColor="Red"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">验证码：
                </td>
                <td class="login_style4">
                    <asp:TextBox ID="verifyCode" runat="server"></asp:TextBox>
                    <asp:Label ID="verifyCode_label" runat="server" ForeColor="Red" Text="*验证码错误" Visible="False"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="login_style2">&nbsp;
                </td>
                <td class="login_style4">
                    <asp:Image ID="CodeImg" ImageUrl="Captcha.aspx" runat="server" />
                    <a onclick="document.getElementById('CodeImg').src='Captcha.aspx?tmp='+Math.random()"
                        href="#">看不清楚</a>
                </td>
            </tr>
            <tr>
                <td class="login_style2">&nbsp;
                </td>
                <td style="margin-left: 40px" class="login_style4">
                    <asp:Button ID="Login_button" runat="server" Height="29px" Text="完成" Width="75px"
                        OnClick="Login_button_Click" />
                </td>
            </tr>
        </table>
    </div>
    <div style="margin-left: 120px">
    </div>
</asp:Content>

