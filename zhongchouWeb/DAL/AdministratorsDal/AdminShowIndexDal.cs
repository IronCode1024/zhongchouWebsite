using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using System.Data;

namespace DAL
{
    public class AdminShowIndexDal
    {
        /// <summary>
        /// 显示用户信息到首页  用户GridView
        /// </summary>
        /// <returns></returns>
        public DataSet gridViewDataShow()
        {
            string Sql = "select top 10 Id,UserName,UserEmail,UserPassword,UserHeadPortrait,State from UserInfoTb";
            return DBHelper.GetTable(Sql);
        }


        /// <summary>
        /// 显示项目信息  项目ProjectGridView
        /// </summary>
        /// <returns></returns>
        public DataSet projectGridViewShow()
        {
            string Sql = "select top 10 * from ProjectTb";
            return DBHelper.GetTable(Sql);
        }


        /// <summary>
        /// 显示用户评论信息  项目UserCommentaryGridViewShow
        /// </summary>
        /// <returns></returns>
        public DataSet userCommentaryGridViewShow()
        {
            string Sql = "select top 10 * from UserCommentaryTb";
            return DBHelper.GetTable(Sql);
        }
    }
}
