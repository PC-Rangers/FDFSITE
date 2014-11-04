using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

// Dette er en klasse til at oprette forbindelse til en SQL server

public class DBcon
{
    private SqlConnection DBConnection;
    private string _SQLcmd;
    public string SQLcmd
        {
            get { return _SQLcmd; }
            set { _SQLcmd = value; }
        }
   public DBcon()
        {
            DBConnection = new SqlConnection("Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun");

        }
    public SqlConnection ConnectionOpen()
    {
        SqlCommand SQLCmd = new SqlCommand(SQLcmd);
        DBConnection.Open();
        SqlDataReader DB_Reader = SQLCmd.ExecuteReader();
        return DBConnection;
    }
}