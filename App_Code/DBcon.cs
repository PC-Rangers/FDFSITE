using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

// Dette er en klasse til at oprette forbindelse til en SQL server

public class DBcon
{
    public SqlConnection ConnectionOpen()
    {
        SqlConnection DBConnection = new SqlConnection("Provider=SQLOLEDB.1;Persist Security Info=False;User ID=fdfk7_dk;Data Source=mssql3.unoeuro.com");
        //SqlCommand SQLcmd;
        DBConnection.Open();

        return DBConnection;
    }
}