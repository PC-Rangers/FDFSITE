//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Data.SqlClient;

////Dette er en klasse til at læse fra SQL databasen

//public class DBread
//{
//    private string _SQLread;
//    public string SQLcmd
//    {
//        get { return _SQLread; }
//        set { _SQLread = value; }
//    }
//    public SqlCommand ReadFromSql()
//    {
//        SqlDataReader DB_Reader = ReadFromSql.ExecuteReader();
//        SqlCommand SQLCmd = new SqlCommand(SQLcmd);
//        DBConnection.Open();
//        return ReadFromSql;
//    }
//}