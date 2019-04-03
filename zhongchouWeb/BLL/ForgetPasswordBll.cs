using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MODELS;
using DAL;

namespace BLL
{
    public class ForgetPasswordBll
    {
        ForgetPasswordDal fpd = new ForgetPasswordDal();
        public int getPassword(string pwd, string email)
        {
            return fpd.getPassword(pwd,email);
        }
    }
}
