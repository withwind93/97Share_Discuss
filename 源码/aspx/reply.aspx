<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="reply.aspx.cs" Inherits="aspx_reply" %>

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
    <div style="position:relative;min-height:100%;">
                <p style="width: 1340px; text-align: left;" class="style3">
                    <asp:LinkButton ID="LinkButton5" runat="server" BackColor="White" 
                        ForeColor="Black" PostBackUrl="Default.aspx"><回到首页</asp:LinkButton></p>                 
                  <p>
                        <span style="color:black;font-size:x-large">主题：</span></p>
                         
                            <marquee  alin=left  direction=up  behavior=scroll 
                            height=100  width=186  hspace=1
                            scrollamount=2  scrolldelay=1 vspace=1  loop=-1>
                            观点为个人观点！<br>
                            不代表论坛意见<br>
                            与本论坛无关！<br>
                            </marquee> 
                            <asp:TextBox ID="TextBox1" runat="server" BorderStyle="Inset" BorderWidth="1px" 
                                CssClass="style8" Height="10px" TextMode="MultiLine" Width="400px"></asp:TextBox>
                                <marquee  alin=left  direction=up  behavior=scroll 
                            height=100 width=186  hspace=1
                            scrollamount=2  scrolldelay=1 vspace=1  loop=-1>
                            请自觉遵守法律法规<br>
                            保持上网环境<br>
                            我们将依法维护网络清洁！<br>
                            </marquee> 
                          
                        <br />
                                <span style="color:black;font-size:x-large">内容：
                                </span>
                                <div style="text-align: center;">
                                    <asp:TextBox ID="TextBox2" TextMode="MultiLine" Columns="120" Rows="20" MaxLength="150" runat="server"></asp:TextBox>
                                </div>
                                    <center>
                                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click"
                                        style="font-size: medium; font-family: 华文行楷" Text="提交" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" onclick="Button2_Click"
                                        style="font-size: medium; font-family: 华文行楷" Text="取消" />
                                        </center>
                                        </div>
</asp:Content>

