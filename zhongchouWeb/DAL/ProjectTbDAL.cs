using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MODELS;
using System.Data;
using System.Data.SqlClient;
namespace DAL
{
    public class ProjectTbDAL
    {
        //查询项目表 查的时两张表
        public DataSet gettable(int ProjectID)
        {
            string sql = string.Format(@"select p1.ProjectID ,p1.UserID ,ProjectType, ProjectName ,ProjectTargetDays ,ProjectOverview ,ProjectDetailedPictures
                            ,TargetAmountOfMoney,AlreadyRaisedMoney , ReleaseStatus , ReleaseDate,p2.ImageUrl,p1.ProjectAddress from ProjectTb p1 ,ProjectImageTb p2 where p1.ProjectID=p2.ProjectID and p1.ProjectID={0}", ProjectID);
          
            DataSet ds = DBHelper.GetTable(sql);
            return ds;

        }
        //修改项目表
        public int update(ProjectTbS pt)
        {
            string sql = string.Format(@"update ProjectTb set ProjectType='{0}', ProjectName='{1}',ProjectTargetDays='{2}',TargetAmountOfMoney='{3}',ProjectOverview='{4}'
                                  ,ProjectDetailedPictures='{5}',ProjectAddress='{6}' where ProjectID='{7}'", pt.ProjectType, pt.ProjectName, pt.ProjectTargetDays, pt.TargetAmountOfMoney, pt.ProjectOverview, pt.ProjectDetailedPictures,pt.ProjectAddress, pt.ProjectID);
            int i = DBHelper.ExecuteNonQuery(sql);
            return i;
        }
        //修改图片那个表
        public int update2(ProjectImageTbS pi )
        {
            string sql = string.Format("update ProjectImageTb set ImageUrl='{0}'where ProjectID='{1}'",pi.ImageUrl,pi.ProjectID);
            int i = DBHelper.ExecuteNonQuery(sql);
            return i;
        }
        //修改银行信息表 暂定新增
        public int insert(BankTbS bt)
        {
            string sql = string.Format("insert into BankTb values('{0}','{1}','{2}','{3}','{4}')",bt.BankAccount,bt.BankUserName,bt.BanName,bt.BankBranch,bt.UserEmail);
            int i = DBHelper.ExecuteNonQuery(sql);
            return i;
        }

    }
}
