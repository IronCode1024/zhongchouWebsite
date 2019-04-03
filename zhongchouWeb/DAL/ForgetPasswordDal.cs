using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;

namespace DAL
{
    public class ForgetPasswordDal
    {
        public int getPassword(string pwd, string email)
        {
            string sql = string.Format("update UserInfoTb set UserPassword='{0}' where UserEmail='{1}'", pwd, email);
            return DBHelper.ExecuteNonQuery(sql);
        }
    }
}
