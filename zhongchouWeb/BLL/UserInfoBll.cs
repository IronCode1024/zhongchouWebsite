using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using MODELS;
using System.Data;

namespace BLL
{
    public class UserInfoBll
    {
        UserInfoDal ud = new UserInfoDal();

        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public int getRegisters(UserInfo Users)
        {
            int rows = ud.getRegisters(Users);
            return rows;
        }

        /// <summary>
        /// 验证邮箱是否存在
        /// </summary>
        /// <param name="UserEmail"></param>
        /// <returns></returns>
        public Object getEmail(UserInfo UserEmail)
        {
            object rows = ud.getEmail(UserEmail);
            return rows;
        }

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public Object getLogins(string Name, string Pwds)
        {
            object rows = ud.getLogins(Name, Pwds);
            return rows;
        }
        /// <summary>
        /// 用户登录状态
        /// </summary>
        /// <param name="Name"></param>
        /// <param name="Pwds"></param>
        /// <returns></returns>
        public DataSet getLoginState(string nameOremail)
        {
            DataSet ds = ud.getLoginState(nameOremail);
            return ds;
        }
    }
}
