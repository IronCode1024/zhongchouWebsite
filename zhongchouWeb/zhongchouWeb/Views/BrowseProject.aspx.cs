using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MODEL;
using BLL;

namespace ZhongChouWeb
{
    public partial class BrowseProject : System.Web.UI.Page
    {
        UserCommentaryTbBll ub = new UserCommentaryTbBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                topCha();
                Zcxqxs();
                Plchax();
                Xmxgc();
                Gyzzc();
                Proxq();
                Tmc();
                Lxfs();
            }
        }
        //评论显示
        void Plchax()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.PlCha(ut);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();

        }
        //关于作者  项目概述
        void Gyzzc()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //ut.UserID = 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.GyzzC(ut);
            Repeater2.DataSource = ds.Tables[0];
            Repeater2.DataBind();
        }
        //项目详情
        void Proxq()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //ut.UserID = 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.ProxQ(ut);
            Repeater8.DataSource = ds.Tables[0];
            Repeater8.DataBind();
        }

        //众筹项目详情
        void Zcxqxs()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.ZcxqXs(ut);
            Repeater4.DataSource = ds.Tables[0];
            Repeater4.DataBind();

        }

        //联系方式
        void Lxfs()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.Lxfs(ut);
            Repeater7.DataSource = ds.Tables[0];
            Repeater7.DataBind();

        }

        //众筹项目总览
        void Tmc()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.TmC(ut);
            Repeater6.DataSource = ds.Tables[0];
            Repeater6.DataBind();

        }

        //项目修改
        void Xmxgc()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.Xmgxc(ut);
            Repeater5.DataSource = ds.Tables[0];
            Repeater5.DataBind();

        }
        //头部查询
        void topCha()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
            //传值请自己写吧
            DataSet ds = ub.TopCha(ut);
            Repeater3.DataSource = ds.Tables[0];
            Repeater3.DataBind();

        }

        //添加评论
        protected void Button7_Click(object sender, EventArgs e)
        {
            if (Session["Logins"] != null)//判断用户是否登录   没有登录则跳转到登录界面，登录成功再跳回来
            {
                UserCommentaryTb ut = new UserCommentaryTb();
                //这里是一个用户的传值 但是我没想到该怎么传现在没连接上不好弄
                ut.UserEmail = Session["UserEmail"].ToString();
                ut.ProjectID = Convert.ToInt32(Request["ProjectID"]);
                ut.CommentatorID = Convert.ToInt32(Session["Id"]);
                ut.Content = this.TextBox2.Text;
                int rows = ub.Zjpl(ut);
                if (rows > 0)
                {
                    Response.Write("<script>alert('评论成功')</script>");
                    this.TextBox2.Text = null;
                    Plchax();
                }
            }
            else
            {
                Response.Redirect("Login.aspx?ProjectID=" + Convert.ToInt32(Request["ProjectID"]));
            }
        }
        /// <summary>
        /// 支持此项目  单击事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        #region MyRegion
        protected void Button8_Click(object sender, EventArgs e)
        {
            SupportProjectsBtn();
        }

        protected void Repeater4_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "SupportProjects")
            {
                SupportProjectsBtn();
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            SupportProjectsBtn();
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            SupportProjectsBtn();
        }

        void SupportProjectsBtn()
        {
            if (Session["Logins"] != null)//判断用户是否登录   没有登录则跳转到登录界面，登录成功再跳回来
            {
                Response.Redirect("SupportProjects.aspx?ProjectID=" + Convert.ToInt32(Request["ProjectID"]));
            }
            else
            {
                Response.Redirect("Login.aspx?ProjectID=" + Convert.ToInt32(Request["ProjectID"]));
            }

            //sp.SupportProjectsMoney = 
        }
        #endregion
    }
}