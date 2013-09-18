<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Fatie.aspx.cs" Inherits="aspx_Fatie" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Active" Runat="Server">
    <ul id="nav" class="sf-menu sf-shadow">
        <li>
            <a data-description="欢迎来到论坛" href="Default.aspx">主页</a>
        </li>
        <li>
            <a data-description="论坛主要模块" href="Default.aspx">模块</a>
            <ul>
                <li>
                    <asp:LinkButton ID="LinkButton1" runat="server" Text="新生问答" OnClick="LinkButton1_Click"></asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton2" runat="server" Text="校园趣事" OnClick="LinkButton2_Click"></asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton3" runat="server" Text="快乐学习" OnClick="LinkButton3_Click"></asp:LinkButton></li>
                <li>
                    <asp:LinkButton ID="LinkButton4" runat="server" Text="毕业情怀" OnClick="LinkButton4_Click"></asp:LinkButton></li>
            </ul>
        </li>
        <li>
            <a data-description="团队网站介绍" href="About.aspx">关于我们</a>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="my_div" Runat="Server">
     <table>
            <tr>
                <td><p style="font-size:x-large;margin-left:20px;padding-left: 20px;padding-right: 20px;">主题:</p></td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"  Width="800px" MaxLength="10"></asp:TextBox>
                   
                </td>
            </tr>

            <tr>
                <td><p style="font-size:x-large;margin-left:20px;padding-left: 20px;padding-right: 20px;">内容:</p></td>
                       <td></td>
            </tr>
                <tr>
                    <td></td>    
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="MultiLine" Width="800px" Rows="20"></asp:TextBox>
                   </td>
                 </tr>
        </table>
        <center>
            <asp:Button ID="Button1" runat="server" Text="发表" OnClick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="取消" OnClick="Button2_Click" />
        </center>
</asp:Content>

