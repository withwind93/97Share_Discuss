<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="ban.aspx.cs" Inherits="aspx_ban" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Active" runat="Server">
    <ul id="nav" class="sf-menu sf-shadow">
        <li>
            <a data-description="欢迎来到论坛" href="Default.aspx">主页</a>
        </li>
        <li class="active">
            <a data-description="论坛主要模块">模块</a>
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

<asp:Content ID="Content3" ContentPlaceHolderID="my_div" runat="Server">

    <p style="font-size:x-large; "><asp:Label ID="Label1" runat="server" Text=""></asp:Label></p>
        <p><asp:Button ID="Button1" runat="server" Text="发帖" ForeColor="#ff3300" OnClick="Button1_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton"  runat="server" Text="我的帖子" ForeColor="#336699" OnClick="LinkButton_Click"></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:HyperLink ID="HyperLink" runat="server" ForeColor="#336699" NavigateUrl="manager.aspx" Visible="false"></asp:HyperLink>
        </p>
        <p>
             <asp:GridView ID="GridView1" runat="server" AllowPaging="True" DataKeyNames="articleid"
                            AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource1" 
                            ForeColor="#333333" GridLines="None" Height="131px" PageSize="20" 
                            style="text-align:center; margin-left: 20px" Width="900px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:HyperLinkField DataTextField="article" HeaderText="文章" 
                                    SortExpression="article" DataNavigateUrlFields="articleid" DataNavigateUrlFormatString="content.aspx?articleid={0}" />
                                <asp:BoundField DataField="author" HeaderText="作者" SortExpression="author" />
                                <asp:BoundField DataField="replynum" HeaderText="回复" SortExpression="reply" />
                                <asp:BoundField DataField="seenum" HeaderText="查看" SortExpression="see" />
                                <asp:BoundField DataField="latest" HeaderText="最后发表" SortExpression="latest" />
                                <asp:CommandField HeaderText="编辑" ShowEditButton="True" Visible="False" />
                                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" Visible="False" />
                            </Columns>
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server"                          
                            ConnectionString="<%$ ConnectionStrings:forumConnectionString %>"
                            SelectCommand="SELECT [article], [author], [replynum], [latest], [seenum],[articleid] FROM [forum_article] WHERE ([plateid] = @plateid) order by articleid desc" 
                            DeleteCommand="delete from forum_article where articleid=@articleid" 
                            UpdateCommand="update forum_article SET article=@article,author=@author,replynum=@replynum,seenum=@seenum,latest=@latest where articleid=@articleid">
                            <SelectParameters>
                                <asp:SessionParameter Name="plateid" SessionField="plateid" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="article" 
                                    PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="GridView1" Name="author" 
                                    PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="GridView1" Name="replynum" 
                                    PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="GridView1" Name="seenum" 
                                    PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="GridView1" Name="latest" 
                                    PropertyName="SelectedValue" />
                                <asp:ControlParameter ControlID="GridView1" Name="articleid" 
                                    PropertyName="SelectedValue" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
        </p>

</asp:Content>

