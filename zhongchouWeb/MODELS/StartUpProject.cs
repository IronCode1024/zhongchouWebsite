using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MODELS
{
    public class StartUpProjects
    {
        //对应项目那张表
        public int ProjectID { set; get; }
        public string ProjectCover { get; set; }
        public int UserID { set; get; }
        public string UserEmail { get; set; }
        public string ProjectType { set; get; }
        public string ProjectName { set; get; }
        public int ProjectTargetDays { set; get; }
        public string ProjectOverview { set; get; }
        public string ProjectDetailedPictures { set; get; }
        public decimal TargetAmountOfMoney { set; get; }
        public decimal AlreadyRaisedMoney { set; get; }
        public int NumberOfProjectSupport { get; set; }
        public string ProjectAddress { get; set; }
        public string ReleaseStatus { set; get; }
        public DateTime ProjectUpdateTime { get; set; }
        public DateTime ReleaseDate { set; get; }
    }
    //项目图片表的实体
    public class ProjectImageTb
    {
        public string ImageUrl { set; get; }
        public int ProjectID { set; get; }
    }
    public class UserInfoTb
    {
        public string UserName { set; get; }//用户名
        public string UserEmail { set; get; }//邮箱地址
        public string UserAddress { set; get; }//地址
    }
    public class BankTb
    {
        public int BankID { set; get; } //id
        public string BankAccount { set; get; }  //银行账号
        public string BankUserName { set; get; } //银行账户名
        public string BanName { set; get; }      //银行名称
        public string BankBranch { set; get; }   //开户支行
        public string UserEmail { set; get; }    //用户邮箱
    }
}
