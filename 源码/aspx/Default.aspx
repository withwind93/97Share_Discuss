<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="aspx_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="my_head" runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Active" runat="Server">
    <ul id="nav" class="sf-menu sf-shadow">
        <li class="active">
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
        </li>
        <li>
            <a data-description="团队网站介绍" href="About.aspx">关于我们</a>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="my_div" runat="Server">
    <!------------------------------------------>
        <div class="ten columns home_services row alpha" style="padding-left: 200px;">
					<p></p>
                    <h2 class="separator_title">97<span>share</span> 模块</h2>
					<p></p>
                    <div class="separator"><div class="green"></div><div class="grey"></div></div>
					
					<div class="service five columns alpha space">
						<div class="icon left"><img src="../images/support_icon.png" alt="" /></div>
						<div class="title left">新生问答</div>
						<div class="description">致力于解决新生各种问题</div>
						<div class="more"><asp:LinkButton ID="LinkButton5" Text="进入模块" OnClick="LinkButton1_Click" runat="server"></asp:LinkButton></div>  
					</div>
					<div class="service five columns row omega space">
						<div class="icon left"><img src="../images/cms_icon.png" alt="" /></div>
						<div class="title left">校园趣事</div>
						<div class="description">发现校园趣事新鲜事</div>
						<div class="more"><asp:LinkButton ID="LinkButton6" runat="server" Text="进入模块" OnClick="LinkButton2_Click"></asp:LinkButton></div>   
					</div>
					
					<div class="service five columns alpha">
						<div class="icon left"><img src="../images/webdesign_icon.png" alt="" /></div>
						<div class="title left">快乐学习</div>
						<div class="description">轻松学习快乐学习分享学习的经验</div>
						<div class="more"><asp:LinkButton ID="LinkButton7" runat="server" Text="进入模块" OnClick="LinkButton3_Click"></asp:LinkButton></div>   
					</div>
					<div class="service five columns omega">
						<div class="icon left"><img src="../images/seo_icon.png" alt="" /></div>
						<div class="title left">毕业情怀</div>
						<div class="description">分享毕业感受,回忆四年点点滴滴</div>
						<div class="more"><asp:LinkButton ID="LinkButton8" runat="server" Text="进入模块" OnClick="LinkButton3_Click"></asp:LinkButton></div>   
					</div>
				</div>
        <!------------------------------------------>
</asp:Content>

