<%@ Page Title="" Language="C#" MasterPageFile="~/aspx/MasterPage.master" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="aspx_About" %>

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
            <li class="active">
                <a data-description="团队网站介绍" href="About.aspx">关于我们</a>
            </li>
        </li>
    </ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="my_div" runat="Server">
    <div class="about_content twelve columns omega">

        <h2 class="separator_title"><span>关于</span> 我们</h2>
        <div class="separator">
            <div class="green"></div>
            <div class="grey"></div>
        </div>
        <h2><strong>97share的意义</strong></h2>
         <p>“97share”意味着“就去分享”～～</p>
         <p> &nbsp;&nbsp;&nbsp;&nbsp;论坛系统为人与人之间的交流提供了一种更为便捷的方式，更适合于生活节奏加快、信息蕴含量更为丰富的现代社会。
              论坛不仅广泛应用于社会生活领域，同时在商业交流、协作学习方面产生了极大的影响力。
              用户可以发表自己的言论，其他用户可以对贴子进行评论（跟帖）或发表更多言论（发帖）。</p>
        <div class="separator">
            <div class="grey"></div>
        </div>
        <h2><span><strong>期待</strong></span></h2>
        <p>希望大家可以在这里分享快乐、分享知识、分享故事～～分享一切你所想分享的～～ </p>
        <div class="separator">
            <div class="grey"></div>
        </div>
        <h2><strong>开发人员</strong></h2>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;前端开发：黄海坤</p>
        <p>&nbsp;&nbsp;&nbsp;&nbsp;后台处理：郑士梁</p>
        
    </div>
    <div class="contact_details six columns omega" style="float: right; max-width: 200px;">


        <h4>联系方式</h4>
        <ul class="address">
            <li class="street_address">南京市孝陵卫200号</li>
        </ul>

        <ul class="phone">
            <li></li>
            <li></li>
        </ul>

        <ul class="email">
            <li>withwind93@gmail.com</li>
        </ul>

    </div>
</asp:Content>

