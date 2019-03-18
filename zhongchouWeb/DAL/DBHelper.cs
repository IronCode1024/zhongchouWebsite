using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

public static class DBHelper
{
    static SqlConnection conn = new SqlConnection("server=.;database=zhongchouDB;uid=sa;pwd=123456");
    /// <summary>
    /// 返回受影响行数的，一般用于增删改的操作的
    /// </summary>
    /// <param name="str">传入一个sql语句</param>
    /// <param name="ct"></param>
    /// <param name="pms">传入sql参数对象</param>
    /// <returns></returns>
    public static int ExecuteNonQuery(string str, params SqlParameter[] pms)
    {
        conn.Open();
        SqlCommand comm = new SqlCommand(str, conn);
        //comm.CommandType = ct;
        comm.Parameters.AddRange(pms);
        int x = comm.ExecuteNonQuery();
        conn.Close();
        return x;
    }

    /// <summary>
    /// 返回首行首列，一般用于登录操作
    /// </summary>
    /// <param name="str">传入一个sql语句</param>
    /// <param name="pms">传入sql参数对象</param>
    /// <returns></returns>
    public static object ExecuteScalar(string str,params SqlParameter[] pms)
    {
        conn.Open();
        SqlCommand comm = new SqlCommand(str, conn);
        //StoredProcedure 传入进来的字符串当成存储过程解析
        //TableDirect   传入进来的字符串当成一张表来解析
        //Text   普通的sql语句来解析  默认的
        //comm.CommandType = ct;
        comm.Parameters.AddRange(pms);
        object x = comm.ExecuteScalar();
        conn.Close();
        return x;
    }
    /// <summary>
    /// 返回一个结果集，主要用于做数据列表绑定和刷新的
    /// </summary>
    /// <param name="str">传入一个sql语句</param>
    /// <param name="ct"></param>
    /// <param name="pms">传入sql参数对象</param>
    /// <returns></returns>
    public static DataSet GetTable(string str)//, params SqlParameter[] pms
    {
        conn.Open();
        SqlCommand comm = new SqlCommand(str, conn);
        //comm.Parameters.AddRange(pms);
        SqlDataAdapter rd = new SqlDataAdapter(comm);
        DataSet set = new DataSet();
        rd.Fill(set, "zcDB");
        conn.Close();
        return set;
    }
    /// <summary>
    /// 返回一个游标对象
    /// </summary>
    /// <param name="str">传入一个sql语句</param>
    /// <param name="ct"></param>
    /// <param name="pms">传入sql参数对象</param>
    /// <returns></returns>
    //public static SqlDataReader GetTable(string str, CommandType ct, params SqlParameter[] pms)
    //{
    //    conn.Open();
    //    SqlCommand comm = new SqlCommand(str, conn);
    //    comm.CommandType = ct;
    //    comm.Parameters.AddRange(pms);
    //    SqlDataReader x = comm.ExecuteReader();//返回一个游标结果集
    //    conn.Close();
    //    return x;
    //}


}

