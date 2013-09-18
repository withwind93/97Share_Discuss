using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class aspx_MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["username"] != null && Convert.ToString(Session["username"]) != "")
        {
            this.HyperLink1.Text = Convert.ToString(Session["username"]);
            this.HyperLink1.NavigateUrl = "~/aspx/ChangeInf.aspx";
            this.HyperLink2.Text = Convert.ToString("修改密码");
            this.HyperLink2.NavigateUrl = "~/aspx/ChangePwd.aspx";
            this.HyperLink3.Text = Convert.ToString("退出");
            this.HyperLink3.NavigateUrl = "~/aspx/exit.aspx";
        }
    }
}
