using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using System.Data.SqlClient;

namespace DAL
{
    public class UserInfoDal
    {
        /// <summary>
        /// 注册
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public int getRegisters(UserInfo Users)
        {
            string sql = "insert into UserInfoTb values(@a,@b,@c,@d)";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",Users.Name),  //用户名
                            new SqlParameter("@b",Users.Email), //邮箱
                            new SqlParameter("@c",Users.Password),    //密码
                            new SqlParameter("@d","0")   //默认登录状态为0    --不在线
                        };
            int rows = DBHelper.ExecuteNonQuery(sql, prm);
            return rows;
        }

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public Object getLogins(string Name,string Pwds)
        {
            string sql = "select count(0) from UserInfoTb where (UserName=@name or UserEmail=@name) and UserPassword=@pwd";
            SqlParameter[] prm = new SqlParameter[]{
                        new SqlParameter("@name",Name),  //用户名
                        new SqlParameter("@pwd",Pwds),    //密码
                    };
            object rows = DBHelper.ExecuteScalar(sql, prm);
            return rows;
        }
    }
}
