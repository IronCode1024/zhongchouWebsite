using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using MODEL;
namespace zhongchouWebXYM
{
    public partial class Launch : System.Web.UI.Page
    {
        ProjectBll pb = new ProjectBll();
        Project p = new Project();
        UserRelateditems ur = new UserRelateditems();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = pb.c(Session["UserEmail"].ToString());
                DataTable dt = ds.Tables[0];
                this.Label1.Text = dt.Rows[0]["UserName"].ToString();
                this.Label2.Text = "个性签名：" + dt.Rows[0]["PersonalizedSignature"].ToString();
                this.Label3.Text = "加入时间：" + dt.Rows[0]["RegistrationTime"].ToString();
                this.Label4.Text = "所在地区：" + dt.Rows[0]["UserAddress"].ToString();
                this.Image1.ImageUrl = dt.Rows[0]["UserHeadPortrait"].ToString();
                p.UserEmail = Session["UserEmail"].ToString();
                //Response.Write("<script>alert('" + p.UserEmail + "')</script>");
                DataSet ds1 = pb.repeaterc1(p);
                this.Repeater1.DataSource = ds1.Tables["zcDB"];
                this.DataBind();
                //-----------------------------------------------------------------------------------------------------------------------------//
                DataSet ds2 = pb.repeaterc2(p);
                this.Repeater2.DataSource = ds2.Tables["zcDB"];
                this.DataBind();
                //-----------------------------------------------------------------------------------------------------------------------------//
                DataSet ds3 = pb.repeaterc3(p);
                this.Repeater3.DataSource = ds3.Tables["zcDB"];
                this.DataBind();
                //-----------------------------------------------------------------------------------------------------------------------------//
                //绑定lable显示有多少条数据
                DataSet ds4 = pb.cc1(p);
                DataTable dt4=ds4.Tables["zcDB"];
                this.Label7.Text = dt4.Rows[0][0].ToString();
                //-----------------------------------------------------------------------------------------------------------------------------//
                //绑定lable显示有多少条数据
                DataSet ds5 = pb.cc2(p);
                DataTable dt5 = ds5.Tables["zcDB"];
                this.Label6.Text = dt5.Rows[0][0].ToString();
                //-----------------------------------------------------------------------------------------------------------------------------//
                //绑定lable显示有多少条数据
                DataSet ds6 = pb.cc3(p);
                DataTable dt6 = ds6.Tables["zcDB"];
                this.Label5.Text = dt6.Rows[0][0].ToString();
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
