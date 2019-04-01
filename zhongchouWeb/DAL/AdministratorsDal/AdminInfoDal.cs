using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using System.Data.SqlClient;
using System.Data;

namespace DAL
{
    public class AdminInfoDal
    {
        AdminInfos ai = new AdminInfos();

        /// <summary>
        /// 管理员登录
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public Object getAdminLogins(AdminInfos admin)
        {
            //用户名或者和邮箱匹配密码正确都能实现登录
            string sql = "select count(0) from AdministrationTb where AdminName=@AdminName  and AdminPassword=@AdminPwd";
            SqlParameter[] prm = new SqlParameter[]{
                        new SqlParameter("@AdminName",admin.AdminName),  //管理员名
                        new SqlParameter("@AdminPwd",admin.AdminPassword),    //密码
                    };
            object rows = DBHelper.ExecuteScalar(sql, prm);
            return rows;
        }
    }
}
