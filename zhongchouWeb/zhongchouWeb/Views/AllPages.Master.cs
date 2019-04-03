using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace zhongchouWeb.Views
{
    public partial class AllPages : System.Web.UI.MasterPage
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
                    this.Label1.Text = Session["UserNames"].ToString();
                    this.HeadPortraits.ImageUrl = Session["UserHeadPortrait"].ToString();
                }
                //if (this.LoginOut.InnerHtml == "n")
                //{
                //    Session["Logins"] = null;
                //}

                //string nn = Session["UserNames"].ToString();
                //Response.Write("<script>alert('"+nn+"')</script>");

            }
            else
            {
                //Session["Logins"] = null;
            }

        }

        /// <summary>
        /// 登出
        /// </summary>
        /// <returns></returns>
        public int LoginOuts(bool b)
        {
            if (!IsPostBack)
            {
                if (b == true)
                {
                    Session["Logins"] = null;
                    return 12;
                }
                else
                {
                    Response.Write("<script>alert('vzbz')</script>");
                    return 0;
                }
            }
            else
            {
                return 1;
            }
        }
    }
}