using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx_exit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null && Convert.ToString(Session["username"]) != "")
        {
            Session["username"] = null;
        }
        this.Response.Write("<script language=javascript>alert('成功退出，返回首页！');location.href='Default.aspx';</script>");
        
    }
}