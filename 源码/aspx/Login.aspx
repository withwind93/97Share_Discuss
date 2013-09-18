<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="aspx_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" runat="Server">
    <link href="../css/Login_style.css" rel="stylesheet" type="text/css" />
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
        <img src="../images/logo_login .gif" alt="97share" />
    </div>
    <div class="login_style1">
    <table>
        <tr>
            <td class="login_style3">用户：
            </td>
            <td class="login_style4">
                <asp:TextBox ID="User" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="User_label" runat="server" ControlToValidate="User"
                    ErrorMessage="*请输入用户名" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="login_style3">密码：
            </td>
            <td class="login_style4">
                <asp:TextBox ID="User_psw" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="psw_label" runat="server" ControlToValidate="User_psw"
                    ErrorMessage="*请输入密码" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="login_style3">验证码：
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
                <asp:Button ID="Login_button" runat="server" Height="29px" Text="登录" Width="75px"
                    OnClick="Login_button_Click1" />
                <asp:HyperLink ID="Register" NavigateUrl="Register.aspx" runat="server">用户注册</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="login_style2">&nbsp;
            </td>
            <td style="margin-left: 40px" class="login_style4">
                <asp:Label ID="error_label" runat="server" ForeColor="Red" Text=" 用户名或密码不正确" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
    </div>
    <div style="margin-left: 120px">
    </div>

</asp:Content>

