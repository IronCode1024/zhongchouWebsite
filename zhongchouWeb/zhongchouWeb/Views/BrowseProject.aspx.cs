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
                Tmc();
                Lxfs();
            }
        }
        //评论显示
        void Plchax()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            //ut.ProjectID=1001;
            //传值请自己写吧
            DataSet ds = ub.PlCha(ut);
            Repeater1.DataSource = ds.Tables[0];
            Repeater1.DataBind();

        }
        //关于作者
        void Gyzzc()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            //ut.ProjectID=1001;
            //传值请自己写吧
            DataSet ds = ub.GyzzC(ut);
            Repeater2.DataSource = ds.Tables[0];
            Repeater2.DataBind();

        }

        //众筹项目详情
        void Zcxqxs()
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //Session["id"]= 1001;
            //ut.ProjectID=1001;
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
            //ut.ProjectID=1001;
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
            //ut.ProjectID=1001;
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
            //ut.ProjectID=1001;
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
            //ut.ProjectID=1001;
            //传值请自己写吧
            DataSet ds = ub.TopCha(ut);
            Repeater3.DataSource = ds.Tables[0];
            Repeater3.DataBind();

        }

        //添加评论
        protected void Button7_Click(object sender, EventArgs e)
        {
            UserCommentaryTb ut = new UserCommentaryTb();
            //这里是一个用户的传值 但是我没想到该怎么传现在没连接上不好弄
            ut.UserID = "1002";
            ut.ProjectID = 101;
            ut.CommentatorID = 1003;
            ut.Content = this.TextBox2.Text;
            int rows = ub.Zjpl(ut);
            if (rows>0)
            {
                Response.Write("<script>alert('评论成功')</script>");
                this.TextBox2.Text = null;
                Plchax();

            }

        }
    }
}