using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using MODEL;

namespace DAL
{
    public class UserCommentaryTbDal
    {
        public static DataSet TopCha(UserCommentaryTb ut)
        {

            string sql = @"select UserHeadPortrait,ProjectName,UserName
from ProjectTb pro ,UserInfoTb usin
where pro.UserID=usin.Id and ProjectID='101'";
            //SqlParameter[] prm = new SqlParameter[]{
            //                new SqlParameter("@a",ut.ProjectID),  //用户名

            //            };
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }

        public static DataSet XmgxC(UserCommentaryTb ut)
        {

            string sql = @"select ProjectUpdateTime, UserName,ProjectOverview
from ProjectTb pro ,UserInfoTb usin
where pro.UserID=usin.Id and ProjectID='101'";
            //SqlParameter[] prm = new SqlParameter[]{
            //                new SqlParameter("@a",ut.ProjectID),  //用户名

            //            };
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }

        public static DataSet Zcxqxs(UserCommentaryTb ut)
        {

            string sql = @"select ProjectCover,NumberOfProjectSupport,
AlreadyRaisedMoney,TargetAmountOfMoney,AlreadyRaisedMoney/TargetAmountOfMoney*100 mubiaojine
from ProjectTb pro ,UserInfoTb usin
where pro.UserID=usin.Id and ProjectID='101'";
            //SqlParameter[] prm = new SqlParameter[]{
            //                new SqlParameter("@a",ut.ProjectID),  //用户名

            //            };
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }

        public static DataSet PlCha(UserCommentaryTb ut)
        {

            string sql = @"select UserHeadPortrait,UserName,Content,CommentaryDate from UserCommentaryTb,UserInfoTb,ProjectTb
where UserCommentaryTb.UserID=UserInfoTb.Id 
and UserCommentaryTb.ProjectID=ProjectTb.ProjectID 
and UserCommentaryTb.ProjectID='101'";
            //SqlParameter[] prm = new SqlParameter[]{
            //                new SqlParameter("@a",ut.ProjectID),  //用户名
                            
            //            };
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }
        //关于作者查询
        public static DataSet GyzzC(UserCommentaryTb ut)
        {

            string sql = @"select ImageUrl
from ProjectImageTb img,UserInfoTb inf,ProjectTb pro
where inf.Id=img.UserID and img.ProjectID=pro.ProjectID and img.UserID='1001' and img.ProjectID='101'";
            //SqlParameter[] prm = new SqlParameter[]{
            //                new SqlParameter("@a",ut.UserID),
            //                new SqlParameter("@b",ut.ProjectID)

            //            };
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }

        //联系方式
        public static DataSet Lxfs(UserCommentaryTb ut)
        {

            string sql = @"select UserName,UserAddress,UserEmail from UserInfoTb where id='1001'";
            //SqlParameter[] prm = new SqlParameter[]{
            //                new SqlParameter("@a",ut.UserID),
            //                new SqlParameter("@b",ut.ProjectID)

            //            };
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }

        //众筹状态总览
        public static DataSet Tmc(UserCommentaryTb ut)
        {

            string sql = @"select TargetAmountOfMoney,NumberOfProjectSupport,ReleaseStatus  from ProjectTb where ProjectID='101'";
            //SqlParameter[] prm = new SqlParameter[]{
            //                new SqlParameter("@a",ut.UserID),
            //                new SqlParameter("@b",ut.ProjectID)

            //            };
            DataSet ds = DBHelper.GetTable(sql);
            return ds;
        }

        public static int Zjpl(UserCommentaryTb ut)
        {
            string sql =@"insert into UserCommentaryTb(UserID,ProjectID,CommentatorID,Content,CommentaryDate ) 
values(@a,@b,@c,@d,@e)";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.UserID),  
                            new SqlParameter("@b",ut.ProjectID), 
                            new SqlParameter("@c",ut.CommentatorID),
                            new SqlParameter("@d",ut.Content),
                            new SqlParameter("@e",DateTime.Now.ToUniversalTime())
                        };
            int rows = DBHelper.ExecuteNonQuery(sql,prm);
            return rows;
        }

    }
}
