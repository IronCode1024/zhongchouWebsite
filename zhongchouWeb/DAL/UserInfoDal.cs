using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using System.Data.SqlClient;
using System.Data;

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
            string sqls = "select count(0) from UserInfoTb where UserName=@Name";
            SqlParameter[] prms = new SqlParameter[]{
                            new SqlParameter("@Name",Users.Name),  //用户名
                            //new SqlParameter("@Email",Users.Email), //邮箱
                        };
            object row = DBHelper.ExecuteScalar(sqls, prms);//返回首行首列
            if (Convert.ToInt32(row) > 0)
            {
                return -1;//数据库中已存在用户输入的用户名和邮箱，返回-1   否则执行注册向数据库添加数据
            }
            else
            {
                try
                {
                    string sql = "insert into UserInfoTb (UserName,UserEmail,UserPassword,UserHeadPortrait,State,RegistrationTime) values(@a,@b,@c,@e,@d,@f)";
                    SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",Users.Name),  //用户名
                            new SqlParameter("@b",Users.Email), //邮箱
                            new SqlParameter("@c",Users.Password),    //密码
                            new SqlParameter("@e",""),
                            new SqlParameter("@d","0"),  //默认登录状态为0    --不在线
                            new SqlParameter("@f",DateTime.Now)
                        };
                    int rows = DBHelper.ExecuteNonQuery(sql, prm);
                    return rows;//注册之后返回数据库受影响行数
                }
                catch (Exception)
                {
                    return 0;//注册异常
                }
            }
        }

        /// <summary>
        /// 验证邮箱是否存在(已注册)
        /// </summary>
        /// <param name="UserEmail"></param>
        /// <returns></returns>
        public Object getEmail(UserInfo UserEmail)
        {
            string sqls = "select count(0) from UserInfoTb where UserEmail=@Email";
            SqlParameter[] prms = new SqlParameter[]{
                            new SqlParameter("@Email",UserEmail.Email), //邮箱
                        };
            object row = DBHelper.ExecuteScalar(sqls, prms);//返回首行首列
            //if (Convert.ToInt32(row) > 0)
            //{
            //    return -1;//数据库中已存在用户输入的用户名和邮箱，返回-1   否则执行注册向数据库添加数据
            //}
            //else
            //{
            //    return 0;//注册异常
            //}
            return row;
        }

        /// <summary>
        /// 登录
        /// </summary>
        /// <param name="Users"></param>
        /// <returns></returns>
        public Object getLogins(string Name, string Pwds)
        {
            //用户名或者和邮箱匹配密码正确都能实现登录
            string sql = "select count(0) from UserInfoTb where (UserName=@name or UserEmail=@name) and UserPassword=@pwd";
            SqlParameter[] prm = new SqlParameter[]{
                        new SqlParameter("@name",Name),  //用户名
                        new SqlParameter("@pwd",Pwds),    //密码
                    };
            object rows = DBHelper.ExecuteScalar(sql, prm);
            return rows;
        }
        public DataSet getLoginState(string nameOremail)
        {
            //select Id,UserName,UserEmail,UserHeadPortrait from UserInfoTb
            //用户登录成功后查询用户名和图像  并显示到页面中的用户信息处
            string sql = "select Id,UserName,UserEmail,UserHeadPortrait from UserInfoTb where (UserName=@nameOremail or UserEmail=@nameOremail)";
            SqlParameter[] prm = new SqlParameter[]{
                        new SqlParameter("@nameOremail",nameOremail),  //用户名
                    };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }





        //个人设置==================================================================================================================================================================//
        #region MyRegion
        public DataSet getUserInfo(string email)
        {
            string sql = string.Format("select UserName,UserSex,UserEmail,PersonalizedSignature,RegistrationTime,UserAddress,UserHeadPortrait from UserInfoTb where UserEmail='{0}'", email);
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        public int update(UserInfo ui)
        {
            string sql = string.Format("update UserInfoTb set UserName='{0}',UserSex='{1}',UserAddress='{2}',PersonalizedSignature='{3}' where UserEmail='{4}'", ui.Name, ui.UserSex,ui.UserAddress, ui.PersonalizedSignature, ui.Email);
            int rows = DBHelper.ExecuteNonQuery(sql);
            return rows;
        }
        public int updatemm(UserInfo ui)
        {
            string sql = string.Format("update UserInfoTb set UserPassword='{0}'  where UserEmail='{1}'", ui.Password, ui.Email);
            int rows = DBHelper.ExecuteNonQuery(sql);
            return rows;
        }
        public int updateimg(UserInfo ui)
        {
            string sql = string.Format("update UserInfoTb set UserHeadPortrait='{0}'  where UserEmail='{1}'", ui.UserHeadPortrait, ui.Email);
            int rows = DBHelper.ExecuteNonQuery(sql);
            return rows;
        } 
        #endregion
        //个人设置  结束==============================================================================================================================================================//
    }
}
