using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Mail;
using MODELS;
using BLL;

namespace zhongchouWeb.Views
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        static string Sends = "";
        ForgetPasswordBll fdb = new ForgetPasswordBll();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Sends = SendEmails();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (this.TextBox3.Text == "")
            {
                this.Label1.Visible = true;

            }


            if (this.TextBox3.Text!=this.TextBox4.Text)
            {
                this.Label2.Visible = true;
            }
            else
            {
                if (this.TextBox2.Text == Sends)
                {
                    string Emails = this.TextBox1.Text;
                    string NewPwd = this.TextBox3.Text;
                    int rows = fdb.getPassword(NewPwd, Emails);
                    if (rows > 0)
                    {
                        Response.Write("<script>alert('重置密码成功！')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('重置密码失败！')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('验证码错误！')</script>");
                }
            }
            
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
                MailMessage mailMessage = new MailMessage(mailFrom, this.TextBox1.Text); // 发送人和收件人
                mailMessage.Subject = "拾柴众筹网";//主题
                mailMessage.Body = "你好！你正在找回拾柴众筹网登录密码，验证码为：" + InputVerificationCode;//内容
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