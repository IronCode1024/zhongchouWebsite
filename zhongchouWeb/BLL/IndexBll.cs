using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using MODELS;
using DAL;

namespace BLL
{
    public class IndexBll
    {
        IndexDal idl = new IndexDal();
        public DataSet getDataRepeater1ImgIndex()
        {
            DataSet ds = idl.getDataRepeater1ImgIndex();
            return ds;
        }

        public DataSet getDataRepeater2ImgIndex()
        {
            DataSet ds = idl.getDataRepeater2ImgIndex();
            return ds;
        }
    }
}
