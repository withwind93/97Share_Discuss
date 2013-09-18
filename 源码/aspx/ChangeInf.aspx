<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="ChangeInf.aspx.cs" Inherits="aspx_ChangeInf" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" Runat="Server">
        <link href="../css/Register_style.css" rel="stylesheet" type="text/css" />
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
        <div class="login" style="padding: 50px 0 0 0">
        <img src="../images/logo_changeinf.gif" alt="97share" />
    </div>
    <div class="Reg_style1">
        <table>
            <tr>
                <td class="Reg_style3">姓名:</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="username" runat="server" ReadOnly="true"></asp:TextBox>               
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">上传头像:</td>
                <td class="Reg_style4">
                    <asp:FileUpload ID="FileUpload" runat="server"   />
                
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">性别:</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="sex" runat="server" TextMode="SingleLine"></asp:TextBox>                   
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">出生日期:</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="birthday" runat="server" TextMode="Date"></asp:TextBox>                   
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">所在省份:</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="province" runat="server" TextMode="SingleLine"></asp:TextBox>                   
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">所在城市:</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="city" runat="server" TextMode="SingleLine"></asp:TextBox>                   
                </td>
            </tr>
            <tr>
                <td class="Reg_style3">手机号码:</td>
                <td class="Reg_style4">
                    <asp:TextBox ID="phone" runat="server" TextMode="SingleLine"></asp:TextBox>                   
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
                        OnClick="Login_button_Click1" />
                </td>
            </tr>
        </table>
    </div>
    <div style="margin-left: 120px">
    </div>
</asp:Content>

