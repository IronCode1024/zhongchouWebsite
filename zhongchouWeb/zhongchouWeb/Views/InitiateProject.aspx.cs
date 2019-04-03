using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MODELS;
using System.Data;


namespace zhongchouWebYZ
{
    public partial class Initiate_project : System.Web.UI.Page
    {
        ProjectTbBLL pb = new ProjectTbBLL();
        static string imgurl;//获取路径，当不改图片路径时在将这个值赋给他
        static string ProjectType = ""; //获取类型，刚加载时就为其赋值，点击时也为其赋值
        static int ProjectIds;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ProjectIds = Convert.ToInt32(Request["Uid"].ToString());
                xian();
                xian2();
            }
        }
        //编辑后进行显示
        //
        void xian2()
        {
            DataSet ds = pb.gettable(ProjectIds);
            this.GridView1.DataSource = ds.Tables["zcDB"];
            this.GridView1.DataBind();
        }
        //对要编辑的项目进行显示
        void xian()
        {


            DataSet ds = pb.gettable(ProjectIds);
            DataTable dt = ds.Tables["zcDB"];
            foreach (DataRow item in dt.Rows)
            {
                this.TextBox1.Text = item["ProjectName"].ToString();
                this.TextBox2.Text = item["TargetAmountOfMoney"].ToString();
                this.TextBox3.Text = item["ProjectTargetDays"].ToString();
                this.TextBox5.Text = item["ProjectOverview"].ToString();//项目简介
                this.TextBox8.Text = item["ProjectDetailedPictures"].ToString();
                imgurl = item["ImageUrl"].ToString();
            }
            string ProjectType = dt.Rows[0][2].ToString();
            switch (ProjectType)
            {
                case "科技":
                    this.Buttonn1.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn1.Text;
                    break;
                case "艺术":
                    this.Buttonn2.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn2.Text;
                    break;
                case "设计":
                    this.Buttonn3.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn3.Text;
                    break;
                case "音乐":
                    this.Buttonn4.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn4.Text;
                    break;
                case "影视":
                    this.Buttonn5.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn5.Text;
                    break;
                case "出版":
                    this.Buttonn6.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn6.Text;
                    break;
                case "动漫游戏":
                    this.Buttonn7.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn7.Text;
                    break;
                case "工艺":
                    this.Buttonn8.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn8.Text;
                    break;
                case "公开课":
                    this.Buttonn9.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn10.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn9.Text;
                    break;
                case "农业":
                    this.Buttonn10.BackColor = System.Drawing.Color.Orange;
                    this.Buttonn1.BackColor = System.Drawing.Color.White;
                    this.Buttonn2.BackColor = System.Drawing.Color.White;
                    this.Buttonn3.BackColor = System.Drawing.Color.White;
                    this.Buttonn4.BackColor = System.Drawing.Color.White;
                    this.Buttonn5.BackColor = System.Drawing.Color.White;
                    this.Buttonn6.BackColor = System.Drawing.Color.White;
                    this.Buttonn7.BackColor = System.Drawing.Color.White;
                    this.Buttonn8.BackColor = System.Drawing.Color.White;
                    this.Buttonn9.BackColor = System.Drawing.Color.White;
                    ProjectType = this.Buttonn10.Text;
                    break;
                default:
                    this.Buttonn1.BackColor = System.Drawing.Color.Orange;
                    break;

            }
            this.Label12.Text = dt.Rows[0]["ProjectName"].ToString();
            this.Label13.Text = dt.Rows[0]["ProjectName"].ToString();
            this.Label18.Text = dt.Rows[0]["ProjectType"].ToString();
            this.Label15.Text = dt.Rows[0]["ProjectTargetDays"].ToString();
            this.Label17.Text = dt.Rows[0]["TargetAmountOfMoney"].ToString();
            this.Label20.Text = dt.Rows[0]["ProjectAddress"].ToString();
            //为下拉框加值


        }
        //保存项目信息
        protected void Button12_Click(object sender, EventArgs e)
        {
            ProjectImageTbS pi = new ProjectImageTbS();
            ProjectTbS pt = new ProjectTbS();
            pt.ProjectID = ProjectIds;//暂时使用，应该从其它页面拿值
            pi.ProjectID = ProjectIds;
            pt.ProjectName = this.TextBox1.Text; //项目名称
            pt.TargetAmountOfMoney = Convert.ToDecimal(this.TextBox2.Text);//预筹金额
            pt.ProjectTargetDays = Convert.ToInt32(this.TextBox3.Text);//预计天数
            pt.ProjectType = ProjectType;//类型
            //地址改不了
            pt.ProjectAddress = this.Label20.Text;
            pt.ProjectOverview = this.TextBox5.Text;//项目简介
            pt.ProjectDetailedPictures = this.TextBox8.Text;//项目详情
            //字段不够项目表里的，所以用修改语句 
            //先忽略文件判断
            //判断fileupload有没有文件
            if (FileUpload1.HasFile)
            {
                Guid g = new Guid();
                string filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(".") + "//Content/image//" + g.ToString() + filename);//将图片路径存在image中
                pi.ImageUrl = "~/image/" + g.ToString() + filename;
            }
            else
            {
                pi.ImageUrl = imgurl;
            }
            //返回向项目表加数据的结果
            int i = pb.update(pt);
            //返回向图片表加的结果
            int i2 = pb.update2(pi);
            int s = i + i2;
            //Response.Write("<script>alert('" + i +":"+ i2+"')</script>");
            //Response.Write("<script>alert('"+i+"')</script>");
            //Response.Write("<script>alert('" + i2 + "')</script>");
            //正常情况为二
            if (s > 2)
            {
                Response.Write("<script>alert('" + "保存成功" + "')</script>");
                //调用js代码进行页面（div）更换，以及箭头式导航栏样式改变
                ClientScript.RegisterStartupScript(this.GetType(), "myscript", "<script>aa();</script>");
                //  第一个参数： 指当前页面； 
                //第二个参数：脚本函数的名字，随便起； 
                //第三个参数： 指脚本内容
            }
            else
            {
                Response.Write("<script>alert('" + "保存失败" + "')</script>");
            }
        }

        protected void Bt3_Click(object sender, EventArgs e)
        {
            UserInfoTbS ut = new UserInfoTbS();
            BankTbS bt = new BankTbS();
            ut.UserName = this.TextBox_1.Text;
            //ut.UserAddress=//地点待定
            bt.UserEmail = this.TextBox_2.Text;
            bt.BanName = this.TextBox_3.Text;
            bt.BankBranch = this.TextBox_4.Text;
            bt.BankUserName = this.TextBox_5.Text;//开户名称
            bt.BankAccount = this.TextBox_6.Text;
            int i = pb.insert(bt);
            if (i > 0)
            {
                Response.Write("<script>alert('" + "保存成功" + "')</script>");
                //调用js代码进行页面（div）更换，以及箭头式导航栏样式改变
                ClientScript.RegisterStartupScript(this.GetType(), "myscript", "<script>cc();</script>");
                //  第一个参数： 指当前页面； 
                //第二个参数：脚本函数的名字，随便起； 
                //第三个参数： 指脚本内容
            }
            else
            {
                Response.Write("<script>alert('" + "保存失败" + "')</script>");
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "myscript", "<script>aa1();</script>");
            //  第一个参数： 指当前页面； 
            xian();
        }

        protected void Buttonn1_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn1.Text;

        }

        protected void Buttonn2_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn2.Text;
        }

        protected void Buttonn3_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn3.Text;
        }

        protected void Buttonn4_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn4.Text;
        }

        protected void Buttonn5_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn5.Text;
        }

        protected void Buttonn6_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn6.Text;
        }

        protected void Buttonn7_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn7.Text;
        }

        protected void Buttonn8_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn8.Text;
        }

        protected void Buttonn9_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn9.Text;
        }

        protected void Buttonn10_Click(object sender, EventArgs e)
        {
            ProjectType = this.Buttonn10.Text;
        }

        protected void Label20_Load(object sender, EventArgs e)
        {

        }


    }
}