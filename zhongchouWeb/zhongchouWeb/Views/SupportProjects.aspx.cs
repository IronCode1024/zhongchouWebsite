using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MODELS;
using BLL;

namespace zhongchouWeb.Views
{
    public partial class SupportProjects : System.Web.UI.Page
    {
        SupportProjectBll spb = new SupportProjectBll();
        SupportProject sp = new SupportProject();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.Label1.Visible = false;
        }
        
        /// <summary>
        /// 确定按钮
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.TextBox3.Text=="")
            {
                this.Label1.Visible = true;
                this.Label1.Text = "*支持金额不能为空";
            }
            else
            {
                sp.ProjectID = Convert.ToInt32(Request["ProjectID"]);
                sp.SupportProjectsMoney = Convert.ToDouble(this.TextBox3.Text);
                int rows = spb.Support(sp);
                if (rows > 0)
                {
                    Response.Redirect("BrowseProject.aspx?ProjectID=" + Convert.ToInt32(Request["ProjectID"]));
                }
                else
                {
                    Response.Write("<script>alert('支持失败，请重新操作！')</script>");
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BrowseProject.aspx?ProjectID=" + Convert.ToInt32(Request["ProjectID"]));
        }
    }
}