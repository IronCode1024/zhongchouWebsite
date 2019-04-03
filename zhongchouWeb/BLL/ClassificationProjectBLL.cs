using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using DAL;
using System.Data;
namespace BLL
{
    public class ClassificationProjectBLL
    {
        ClassificationProjectDAL bd = new ClassificationProjectDAL();
        public DataSet show1()
        {
            DataSet ds = bd.show1();
            return ds;

        }
        public DataSet show2(ProjectTbS pt)
        {
            DataSet ds = bd.show2(pt);
            return ds;
        }



        public DataTable Bind(string cmdText, int startIndex, int endIndex)
        {
            return bd.Bind(cmdText, startIndex, endIndex);
        }

        public int getExecuteScalar(string cmdText)
        {
            return bd.getExecuteScalar(cmdText);
        }
    }
}
