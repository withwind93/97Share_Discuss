<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="content.aspx.cs" Inherits="aspx_content" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" runat="Server">
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
<asp:Content ID="Content3" ContentPlaceHolderID="my_div" runat="Server">
    <div>
        <p>
            <asp:Button ID="Button0" runat="server" OnClick="Button2_Click" Text="返回" /></p>
        <asp:FormView ID="FormView1" runat="server" CellPadding="3" CellSpacing="2"
            DataSourceID="SqlDataSource1" ForeColor="#333333" HorizontalAlign="Center"
            Style="text-align: center" Width="780px">
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            
            <ItemTemplate>
                <table style="width: 100%; border-collapse: collapse; border: 2px solid #800080; background-color: #C0C0C0">
                    <tr>
                        <td bgcolor="#99FF99" rowspan="8">
                            <asp:Image ID="Image3" runat="server" ImageUrl='<%# "~/images/"+"54.BMP" %>'
                                 />
                        </td>
                        <td align="left" bgcolor="#99FF99" class="style14">主题</td>
                        <td bgcolor="#99FF99" class="style15">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("article", "{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#99FF99" class="style20">内容</td>
                        <td bgcolor="#99FF99" class="style21">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("text", "{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#99FF99" class="style12">发帖时间</td>
                        <td bgcolor="#99FF99" class="style13">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("subtime", "{0:D}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#99FF99" class="style18">发帖人</td>
                        <td bgcolor="#99FF99" class="style19">
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("author", "{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#99FF99" class="style8">点击次数</td>
                        <td bgcolor="#99FF99" class="style9">
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("seenum", "{0}") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td bgcolor="#99FF99" class="style16">回复次数</td>
                        <td bgcolor="#99FF99" class="style17">
                            <asp:Label ID="Label6" runat="server" Text='<%# Eval("replynum", "{0}") %>' />
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
        </asp:FormView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:forumConnectionString %>"
            SelectCommand="SELECT DISTINCT [article], [author], [replynum], [seenum], [text], [subtime],[savepath] FROM [forum_article] WHERE ([articleid] = @articleid)">
            <SelectParameters>
                <asp:SessionParameter Name="articleid" SessionField="articleid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2"
            HorizontalAlign="Center" Style="text-align: center" Width="780px">
            
            <ItemTemplate>
                <table style="width: 100%; border-left-style: solid; border-left-width: 1px; border-right: 1px solid #C0C0C0; border-top-style: solid; border-top-width: 1px; border-bottom: 1px solid #C0C0C0"
                    width="780">
                    <tr>
                        <td class="style25">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("replytheme", "{0}") %>' />
                        </td>
                        <td class="style24">回复主题</td>
                        <td class="style22" rowspan="4">
                            <asp:Image ID="Image4" runat="server"
                                ImageUrl='<%# "~/images/"+"54.BMP" %>'/>
                        </td>
                    </tr>
                    <tr>
                        <td class="style34">
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("reply", "{0}") %>' />
                        </td>
                        <td class="style27">回复内容</td>
                    </tr>
                    <tr>
                        <td class="style30">
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("replyname") %>' />
                        </td>
                        <td class="style29">回复者</td>
                    </tr>
                    <tr>
                        <td class="style33">
                            <asp:Label ID="Label4" runat="server"
                                Text='<%# Eval("replytime", "{0:D}") %>' />
                        </td>
                        <td class="style32">回复时间</td>
                    </tr>
                </table>
                <br />
            </ItemTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:forumConnectionString %>"
            SelectCommand="SELECT [replytime], [replyname], [reply], [replytheme] FROM [forum_reply] WHERE ([articleid] = @articleid)">
            <SelectParameters>
                <asp:SessionParameter Name="articleid" SessionField="articleid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <div align="center">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="回复" />
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="返回" />
        </div>

</asp:Content>

