using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;
using MODELS;
using BLL;

namespace zhongchouWeb.Views
{
    public partial class Register : System.Web.UI.Page
    {
        static string Sends = "";
        UserInfo ui = new UserInfo();
        UserInfoBll ub = new UserInfoBll();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //this.Obtain.Attributes.Add("OnClick", "return time(" + this.Obtain.ID + ")"); 
            }
            this.LabelEmail.Visible = false;
        }

        /// <summary>
        /// 注册提交按钮单击事件
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ButReSubmit_Click(object sender, EventArgs e)
        {
            if (this.TextBox5.Text == Sends && this.TextBox5.Text != "")
            {
                ui.Name = this.TextBox1.Text;
                ui.Email = this.TextBox2.Text;
                ui.Password = this.TextBox3.Text;

                int rows = ub.getRegisters(ui);
                if (rows > 0)
                {
                    //Response.Write("<script>alert('添加成功！')</script>");
                    Response.Redirect("Login.aspx");
                }
                else if (rows == 0)
                {
                    Response.Write("<script>alert('注册异常')</script>");
                }
                else if (rows == -1)
                {
                    Response.Write("<script>alert('该用户名已存在，请重新输入！')</script>");
                }
                else
                {
                    Response.Write("<script>alert('添加失败！')</script>");
                }
            }
            else
            {
                this.LabelCode.Text = "*验证码错误";
            }
        }


        /// <summary>
        /// 发送邮箱单击事件
        /// </summary>
        /// <param name="sender"></param>
        protected void Obtain_Click(object sender, EventArgs e)
        {
            if (this.TextBox2.Text != "")
            {
                ui.Email = this.TextBox2.Text;
                Object rows = ub.getEmail(ui);
                if (Convert.ToInt32(rows) > 0)
                {
                    this.LabelEmail.Visible = true;
                    this.LabelEmail.Text = "*该邮箱已注册可直接登录";
                }
                else
                {
                    Sends = SendEmails();
                    //Response.Write("<script>alert('" + Sends + "');</script>");
                }
            }
            else
            {
                this.LabelEmail.Visible = true;
                this.LabelEmail.Text = "*邮箱不能为空";
            }
            //this.Page.ClientScript.RegisterStartupScript(this.Page.GetType(), "", "<script>textss();</script>", true);

        }

        /// <summary>
        /// 发送邮件   前端js 方法（btnObtain()）调用此函数
        /// </summary>
        public string SendEmails()
        {
            try
            {
                string InputVerificationCode = "";//保存验证码
                Random Rdm = new Random();
                //产生0到10的随机数

                for (int i = 0; i < 6; i++)//六位数验证码
                {
                    InputVerificationCode += Rdm.Next(10).ToString();
                }

                // 设置发送方的邮件信息,例如使用网易的smtp
                string smtpServer = "smtp.qq.com"; //SMTP服务器
                string mailFrom = "jfblackbird@foxmail.com"; //登陆用户名
                string userPassword = "ltzmudrssqzfhihe";//登陆密码

                // 邮件服务设置
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;//指定电子邮件发送方式
                smtpClient.Host = smtpServer; //指定SMTP服务器
                smtpClient.Credentials = new System.Net.NetworkCredential(mailFrom, userPassword);//用户名和密码
                //string aa = this.TextBox2.Text;
                // 发送邮件设置
                MailMessage mailMessage = new MailMessage(mailFrom, this.TextBox2.Text); // 发送人和收件人
                mailMessage.Subject = "拾柴众筹网";//主题
                mailMessage.Body = "你好！你正在注册拾柴众筹网，验证码为：" + InputVerificationCode;//内容
                mailMessage.BodyEncoding = Encoding.UTF8;//正文编码
                mailMessage.IsBodyHtml = true;//设置为HTML格式
                mailMessage.Priority = MailPriority.Low;//优先级
                smtpClient.Send(mailMessage); // 发送邮件

                //Response.Write("<script>alert('发送邮件成功')</script>");
                //Send = "发送成功";
                //this.Obtain.Text = "获取成功";
                //ClientScript.RegisterStartupScript(Page.GetType(), "", "time(" + this.Obtain.ID + ");", true);
                
                return InputVerificationCode;
            }
            catch (SmtpException ex)
            {
                string strErr = ex.Message;
                Response.Write("<script>alert('" + strErr + "')</script>");
                return strErr;
            }
        }
    }
}