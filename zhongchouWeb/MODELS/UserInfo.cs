using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
    /// <summary>
    /// 用户信息类
    /// </summary>
    public class UserInfo
    {
        public int Id { get; set; }           //用户id编号  唯一值

        public string Name { get; set; }      //用户名         用户名或邮箱都可以用于登录

        public string Email { get; set; }     //用户注册邮箱  发送验证码     用于发起众筹项目

        public string Password { get; set; }  //用户密码

        public string ConfirmPassword { get; set; }

        public string VerificationCode { get; set; }  //验证码

        public string State { get; set; }      //在线状态      true在线    false离线
    }
}
