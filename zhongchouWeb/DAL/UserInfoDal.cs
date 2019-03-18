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
                    string sql = "insert into UserInfoTb values(@a,@b,@c,@d)";
                    SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",Users.Name),  //用户名
                            new SqlParameter("@b",Users.Email), //邮箱
                            new SqlParameter("@c",Users.Password),    //密码
                            new SqlParameter("@d","0")   //默认登录状态为0    --不在线
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

        /// <summary>
        /// 首页图片列表展示 repeater
        /// </summary>
        /// <returns></returns>
        public DataSet getDataSetImg()
        {
            string Sql = "select ImageID,ImageUrl,UserID,UserName,Pt.ProjectID,ProjectName,ProjectOverview,ProjectType,ProjectTargetDays,TargetAmountOfMoney,AlreadyRaisedMoney,ReleaseStatus,ReleaseDate from ProjectImageTb Pi,ProjectTb Pt";
            DataSet ds = DBHelper.GetTable(Sql);
            return ds;
        }
    }
}
