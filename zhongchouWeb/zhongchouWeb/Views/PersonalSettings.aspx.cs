using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MODELS;
using System.Data;
using BLL;
namespace zhongchouWeb.Views
{
    public partial class PersonalSettings : System.Web.UI.Page
    {
        UserInfoBll ud = new UserInfoBll();
        UserInfo ui = new UserInfo();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string email = Session["UserEmail"].ToString();
                // Response.Write("<script>alert('" + email + "')</script>");
                DataSet ds = ud.getUserInfo(email);
                DataTable dt = ds.Tables["zcDB"];
                this.Label3.Text = dt.Rows[0]["UserEmail"].ToString();
                this.TextBox1.Text = dt.Rows[0]["UserName"].ToString();
                this.TextBox3.Text = dt.Rows[0]["PersonalizedSignature"].ToString();
                this.Label17.Text = dt.Rows[0]["UserAddress"].ToString();
                string sex = dt.Rows[0]["UserSex"].ToString();
                if (sex == "男")
                {
                    this.RadioButton1.Checked = true;
                }
                else if (sex == "女")
                {
                    this.RadioButton2.Checked = true;
                }
            }
        }
        static string filename;
        protected void Button3_Click(object sender, EventArgs e)
        {
            if (FileUpload1.HasFile)
            {
                Guid g = Guid.NewGuid();
                filename = FileUpload1.FileName;
                string hzm = filename.Substring(filename.LastIndexOf(".") + 1);
                if (hzm != "jpg" && hzm != "png" && hzm != "jpeg" && hzm != "pic")
                {
                    Response.Write("<script>alert('" + "选择的文件不是图片" + "')</script>");
                }
                else
                {
                    FileUpload1.SaveAs(Server.MapPath("/") + "//Content/Images//" + g.ToString() + filename);
                    Image1.ImageUrl = "~/Content/Images/" + g.ToString() + filename;
                }
            }
        }

        protected void sheng_TextChanged(object sender, EventArgs e)
        {
            string script = "<script>window.onload=function(){insertcityfun();}</script>";
            ClientScript.RegisterStartupScript(this.GetType(), "myscript", script);
            //  第一个参数： 指当前页面； 
            //第二个参数：脚本函数的名字，随便起； 
            //第三个参数： 指脚本内容

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            ui.Email = Session["UserEmail"].ToString();
            ui.Name = this.TextBox1.Text;
            string s = this.sheng.Text;
            string shi = this.shi.Text;
            ui.UserAddress = s + shi;
            ui.PersonalizedSignature = this.TextBox3.Text;
            string sex;
            if (this.RadioButton1.Checked)
            {
                sex = "男";
                ui.UserSex = sex;
            }
            else if (this.RadioButton2.Checked)
            {
                sex = "女";
                ui.UserSex = sex;
            }
            int rows = ud.update(ui);
            if (rows>0)
            {
                Response.Write("<script>alert('修改成功')</script>");
            }
            else
            {
                Response.Write("<script>alert('修改失败')</script>");
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ui.Email = Session["UserEmail"].ToString();
            ui.Password = this.TextBox6.Text;
            int rows = ud.updatemm(ui);
            if (rows > 0)
            {
                Response.Write("<script>alert('修改成功')</script>");
                this.TextBox4.Text = null;
                this.TextBox5.Text = null;
                this.TextBox6.Text = null;
            }
            else
            {
                Response.Write("<script>alert('修改失败')</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ui.Email = Session["UserEmail"].ToString();
            ui.UserHeadPortrait = Image1.ImageUrl;
            int rows = ud.updateimg(ui);
            if (rows > 0)
            {
                Response.Write("<script>alert('修改成功')</script>");
                this.FileUpload1 = null;
            }
            else
            {
                Response.Write("<script>alert('修改失败')</script>");
            }
        }


    }

}