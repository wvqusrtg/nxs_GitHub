using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Senparc.Weixin.MP.Sample.WebForms.WebView
{
    public partial class WebFormJQueryTest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                 //string Attention = "您的积分兑换记录为空！";
                 //ClientScript.RegisterStartupScript(this.GetType(), "sAlert", "<script>sAlert('" + Attention + "')</script>");
                Console.WriteLine("积分兑换主页");
                Response.Write("积分兑换主页");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Attention = "您的积分兑换记录为空！";
            ClientScript.RegisterStartupScript(this.GetType(), "sAlert", "<script>sAlert('" + Attention + "')</script>");
        }
    }
}