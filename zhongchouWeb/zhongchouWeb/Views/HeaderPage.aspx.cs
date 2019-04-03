using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zhongchouWeb.Views
{
    public partial class HeaderPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["Logins"] != null && Session["Logins"].ToString() != "")
                {
                    //this.LoginOut.InnerHtml = "n";
                    //Session["Logins"] = null;
                    //Literal lt = new Literal();
                    //lt.Text = "<a>Session[\"UserNames\"].ToString()</a>";3
                    //form1.Controls.Add(lt);
                    this.notlogins.Style.Add("display", "none");
                    this.logins.Style.Add("display", "block");
                    this.Label1.Text = Session["UserNames"].ToString();//用户名
                    
                    if (Session["UserHeadPortrait"].ToString()!="")//有图像就像是用户头像
                    {
                        this.HeadPortraits.ImageUrl = Session["UserHeadPortrait"].ToString();
                    }
                    else//没有头像就像是默认的灰色小人
                    {
                        this.HeadPortraits.ImageUrl = "../Content/Images/publicImg/notLogin.png";
                    }

                    //Response.Write("<script>alert('" + this.Label1.Text + "')</script>");
                }
            }
        }


        /// <summary>
        /// 登出
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void OutLoginLinkBtn_Click(object sender, EventArgs e)
        {
            Session["Logins"] = null;
            Session["UserNames"] = null;
            Session["UserEmail"] = null;
            Session["UserHeadPortrait"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}