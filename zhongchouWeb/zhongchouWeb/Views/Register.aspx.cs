using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Text;

namespace zhongchouWeb.Views
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Button1_Click(object sender, EventArgs e)
        {
            Emails();
        }

        /// <summary>
        /// 发送邮件
        /// </summary>
        public void Emails()
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

                // 发送邮件设置
                MailMessage mailMessage = new MailMessage(mailFrom, this.TextBox2.Text); // 发送人和收件人
                mailMessage.Subject = "拾柴众筹网";//主题
                mailMessage.Body = "你好！你正在注册拾柴众筹网，验证码为：" + InputVerificationCode;//内容
                mailMessage.BodyEncoding = Encoding.UTF8;//正文编码
                mailMessage.IsBodyHtml = true;//设置为HTML格式
                mailMessage.Priority = MailPriority.Low;//优先级
                smtpClient.Send(mailMessage); // 发送邮件

                //return true;
            }
            catch (SmtpException ex)
            {
                string strErr = ex.Message;
                Response.Write("<script>alert('" + strErr + "')</script>");
                //return false;
            }
        }
    }
}