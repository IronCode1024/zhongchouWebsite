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
where pro.UserID=usin.Id and ProjectID=@a";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.ProjectID),  //用户名
                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }

        public static DataSet XmgxC(UserCommentaryTb ut)
        {

            string sql = @"select ProjectUpdateTime, UserName,ProjectOverview
from ProjectTb pro ,UserInfoTb usin
where pro.UserID=usin.Id and ProjectID=@a";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.ProjectID),

                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }

        public static DataSet Zcxqxs(UserCommentaryTb ut)
        {

            string sql = @"select ProjectCover,ProjectImageUrl,NumberOfProjectSupport,
AlreadyRaisedMoney,TargetAmountOfMoney,AlreadyRaisedMoney/TargetAmountOfMoney*100 mubiaojine
from ProjectTb pro,UserInfoTb usin
where pro.UserID=usin.Id and ProjectID=@a";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.ProjectID),
                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }

        public static DataSet PlCha(UserCommentaryTb ut)
        {

            string sql = @"select UserHeadPortrait,UserName,Content,CommentaryDate from UserCommentaryTb,UserInfoTb,ProjectTb
where UserCommentaryTb.ProjectID=ProjectTb.ProjectID and UserCommentaryTb.CommentatorID=UserInfoTb.Id
and UserCommentaryTb.ProjectID=@a";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.ProjectID), 
                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }
        //项目概述查询
        public static DataSet GyzzC(UserCommentaryTb ut)
        {

            string sql = @"select ProjectImageUrl,ProjectOverview
from UserInfoTb inf,ProjectTb pro
where inf.Id=pro.UserID and pro.ProjectID=@b";
            SqlParameter[] prm = new SqlParameter[]{
                            //new SqlParameter("@a",ut.UserID),
                            new SqlParameter("@b",ut.ProjectID)

                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }

        //项目详情
        public static DataSet ProxQ(UserCommentaryTb ut)
        {

            string sql = @"select ProjectImageUrl,ProjectDetailedPictures
from UserInfoTb inf,ProjectTb pro
where inf.Id=pro.UserID and pro.ProjectID=@b";
            SqlParameter[] prm = new SqlParameter[]{
                            //new SqlParameter("@a",ut.UserID),
                            new SqlParameter("@b",ut.ProjectID)

                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }

        //联系方式
        public static DataSet Lxfs(UserCommentaryTb ut)
        {
            string sql = @"select UserName,UserAddress,pt.UserEmail from UserInfoTb uit,ProjectTb pt where uit.Id=pt.UserID and pt.ProjectID=@a";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.ProjectID)
                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }

        //众筹状态总览
        public static DataSet Tmc(UserCommentaryTb ut)
        {

            string sql = @"select TargetAmountOfMoney,NumberOfProjectSupport,ReleaseStatus  from ProjectTb where ProjectID=@a";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.ProjectID)
                        };
            DataSet ds = DBHelper.GetTable(sql, prm);
            return ds;
        }

        public static int Zjpl(UserCommentaryTb ut)
        {
            string sql = @"insert into UserCommentaryTb(UserEmail,ProjectID,CommentatorID,Content,CommentaryDate) 
values(@a,@b,@c,@d,@e)";
            SqlParameter[] prm = new SqlParameter[]{
                            new SqlParameter("@a",ut.UserEmail),  
                            new SqlParameter("@b",ut.ProjectID), 
                            new SqlParameter("@c",ut.CommentatorID),
                            new SqlParameter("@d",ut.Content),
                            new SqlParameter("@e",DateTime.Now.ToUniversalTime())
                        };
            int rows = DBHelper.ExecuteNonQuery(sql, prm);
            return rows;
        }

    }
}
