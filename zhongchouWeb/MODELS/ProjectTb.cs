using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MODELS
{
   public class ProjectTbS
    {
        //public string ProjectType { set; get; }
        //public int ProjectTargetDays { set;get;}
        //public decimal TargetAmountOfMoney { set; get; }
        public int ProjectID { set; get; }
        public int UserID { set; get; }
        public string ProjectType { set; get; }
        public string ProjectName { set; get; }
        public int ProjectTargetDays { set; get; }
        public string ProjectOverview { set; get; }
        public string ProjectDetailedPictures { set; get; }
        public decimal TargetAmountOfMoney { set; get; }
        public decimal AlreadyRaisedMoney { set; get; }
        public string ProjectAddress { set; get; }
        public string ReleaseStatus { set; get; }
        public DateTime ReleaseDate { set; get; }
    }


   //项目图片表的实体
   public class ProjectImageTbS
   {
       public string ImageUrl { set; get; }
       public int ProjectID { set; get; }
   }
   public class UserInfoTbS
   {
       public string UserName { set; get; }//用户名
       public string UserEmail { set; get; }//邮箱地址
       public string UserAddress { set; get; }//地址
   }
   public class BankTbS
   {
       public int BankID { set; get; } //id
       public string BankAccount { set; get; }  //银行账号
       public string BankUserName { set; get; } //银行账户名
       public string BanName { set; get; }      //银行名称
       public string BankBranch { set; get; }   //开户支行
       public string UserEmail { set; get; }    //用户邮箱
   }
}
