using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using MODEL;
using DAL;

namespace BLL
{
    public class UserCommentaryTbBll
    {
        public DataSet PlCha(UserCommentaryTb ut)
        {
            DataSet ds = UserCommentaryTbDal.PlCha(ut);
            return ds;
        }
        public DataSet ZcxqXs(UserCommentaryTb ut)
        {
            DataSet ds = UserCommentaryTbDal.Zcxqxs(ut);
            return ds;
        }
        public DataSet TopCha(UserCommentaryTb ut)
        {
            DataSet ds = UserCommentaryTbDal.TopCha(ut);
            return ds;
        }
        public DataSet Lxfs(UserCommentaryTb ut)
        {
            DataSet ds = UserCommentaryTbDal.Lxfs(ut);
            return ds;
        }

        public int Zjpl(UserCommentaryTb ut)
        {
            int rows = UserCommentaryTbDal.Zjpl(ut);
            return rows;
        }
        public DataSet  Xmgxc(UserCommentaryTb ut)
        {
            DataSet ds = UserCommentaryTbDal.XmgxC(ut);
            return ds;
        }
        public DataSet TmC(UserCommentaryTb ut)
        {
            DataSet ds = UserCommentaryTbDal.Tmc(ut);
            return ds;
        }
        public DataSet GyzzC(UserCommentaryTb ut)
        {
            DataSet ds = UserCommentaryTbDal.GyzzC(ut);
            return ds;
        }
    }
}
