using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using MODELS;
using System.Data;

namespace zhongchouWeb.Views
{
    public partial class StartUpProject : System.Web.UI.Page
    {
        ProjectImageTb pi = new ProjectImageTb();
        public static StartUpProjects pt = new StartUpProjects();
        StartUpProjectBll pb = new StartUpProjectBll();
        static string imgurl;//获取路径，当不改图片路径时在将这个值赋给他
        //static string ProjectType; //获取类型，刚加载时就为其赋值，点击时也为其赋值


        static int ProjectID = 101;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //xian();
                //xian2();
                Xk();
            }
        }

        //小框显示
        void Xk()
        {
            this.Label12.Text = TextBox1.Text; ;
            this.Label15.Text = TextBox2.Text;
        }

        //发起众筹 新建众筹项目
        public void Button12_Click(object sender, EventArgs e)
        {
            //字段不够项目表里的，所以用修改语句 
            //先忽略文件判断
            //判断fileupload有没有文件
            if (FileUpload1.HasFile)
            {
                Guid g = new Guid();
                string filename = FileUpload1.FileName;
                FileUpload1.SaveAs(Server.MapPath(".") + "//Content/image//" + g.ToString() + filename);//将图片路径存在image中
                pi.ImageUrl = "~/image/" + g.ToString() + filename;
                pt.ProjectCover = "~/image/" + g.ToString() + filename;
            }
            else
            {
                pt.ProjectCover = imgurl;
            }
            pt.UserID = 1001;//获取用户ID 我能力有限

            pt.ProjectName = TextBox1.Text;
            pt.ProjectTargetDays = int.Parse(TextBox3.Text);
            pt.ProjectOverview = TextBox5.Text;
            pt.ProjectDetailedPictures = TextBox8.Text;
            pt.TargetAmountOfMoney = decimal.Parse(TextBox2.Text);
            pt.NumberOfProjectSupport = 0;
            pt.AlreadyRaisedMoney = 0;
            pt.ProjectAddress = this.Label20.Text;
            pt.ReleaseStatus = "发布中";
            pt.ProjectUpdateTime = DateTime.Now.ToUniversalTime();
            pt.ReleaseDate = DateTime.Now.ToUniversalTime();

            //Response.Write("<script>alert('"+i+"')</script>");
            //Response.Write("<script>alert('" + i2 + "')</script>");
            //正常情况为二
            //调用js代码进行页面（div）更换，以及箭头式导航栏样式改变
            ClientScript.RegisterStartupScript(this.GetType(), "myscript", "<script>aa();</script>");
            //  第一个参数： 指当前页面； 
            //第二个参数：脚本函数的名字，随便起； 
            //第三个参数： 指脚本内容

        }



        protected void Buttonn1_Click(object sender, EventArgs e)
        {
            this.Buttonn1.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn1.Text;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn2_Click(object sender, EventArgs e)
        {
            this.Buttonn2.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn2.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn3_Click(object sender, EventArgs e)
        {
            this.Buttonn3.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn3.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn4_Click(object sender, EventArgs e)
        {
            this.Buttonn4.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn4.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn5_Click(object sender, EventArgs e)
        {
            this.Buttonn5.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn5.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn6_Click(object sender, EventArgs e)
        {
            this.Buttonn6.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn6.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn7_Click(object sender, EventArgs e)
        {
            this.Buttonn7.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn7.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn8_Click(object sender, EventArgs e)
        {
            this.Buttonn8.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn8.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn9_Click(object sender, EventArgs e)
        {
            this.Buttonn9.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn9.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn10.BackColor = System.Drawing.Color.White;
        }

        protected void Buttonn10_Click(object sender, EventArgs e)
        {
            this.Buttonn10.BackColor = System.Drawing.Color.Orange;
            pt.ProjectType = this.Buttonn10.Text;
            this.Buttonn1.BackColor = System.Drawing.Color.White;
            this.Buttonn2.BackColor = System.Drawing.Color.White;
            this.Buttonn3.BackColor = System.Drawing.Color.White;
            this.Buttonn4.BackColor = System.Drawing.Color.White;
            this.Buttonn5.BackColor = System.Drawing.Color.White;
            this.Buttonn6.BackColor = System.Drawing.Color.White;
            this.Buttonn7.BackColor = System.Drawing.Color.White;
            this.Buttonn8.BackColor = System.Drawing.Color.White;
            this.Buttonn9.BackColor = System.Drawing.Color.White;
        }

        protected void Label20_Load(object sender, EventArgs e)
        {

        }

        //编辑后进行显示

        void xian2()
        {
            DataSet ds = pb.gettable(ProjectID);
            this.GridView1.DataSource = ds.Tables["zcDB"];
            this.GridView1.DataBind();
        }
        //对要编辑的项目进行显示
        void xian()
        {


            DataSet ds = pb.gettable(ProjectID);
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
                    ProjectType = this.Buttonn1.Text;
                    break;
                case "艺术":
                    this.Buttonn2.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn2.Text;
                    break;
                case "设计":
                    this.Buttonn3.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn3.Text;
                    break;
                case "音乐":
                    this.Buttonn4.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn4.Text;
                    break;
                case "影视":
                    this.Buttonn5.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn5.Text;
                    break;
                case "出版":
                    this.Buttonn6.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn6.Text;
                    break;
                case "动漫游戏":
                    this.Buttonn7.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn7.Text;
                    break;
                case "工艺":
                    this.Buttonn8.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn8.Text;
                    break;
                case "公开课":
                    this.Buttonn9.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn9.Text;
                    break;
                case "农业":
                    this.Buttonn10.BackColor = System.Drawing.Color.Orange;
                    ProjectType = this.Buttonn10.Text;
                    break;
                default:
                    this.Buttonn1.BackColor = System.Drawing.Color.Orange;
                    break;

            }

            //为下拉框加值


        }



        protected void Bt3_Click(object sender, EventArgs e)
        {
            UserInfoTb ut = new UserInfoTb();
            BankTb bt = new BankTb();
            ut.UserName = this.TextBox_1.Text;
            //ut.UserAddress=//地点待定
            bt.UserEmail = this.TextBox_2.Text;
            bt.BanName = this.TextBox_3.Text;
            bt.BankBranch = this.TextBox_4.Text;
            bt.BankUserName = this.TextBox_5.Text;//开户名称
            bt.BankAccount = this.TextBox_6.Text;
            pt.UserEmail = this.Label_4.Text;
            //Response.Write("<script>alert('" + pt.ProjectName + "')</script>");
            int s = pb.Xzxmxx(pt);
            int i = pb.insert(bt);
            if (i + s > 1)
            {
                //Response.Write("<script>alert('" + "保存成功" + "')</script>");
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

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Xk();
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            Xk();
        }
    }
}