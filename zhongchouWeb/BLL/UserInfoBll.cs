using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAL;
using MODELS;

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
        /// 登录
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public Object getLogins(string Name, string Pwds)
        {
            object rows = ud.getLogins(Name, Pwds);
            return rows;
        }
    }
}
