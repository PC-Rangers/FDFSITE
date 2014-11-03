using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

/// <summary>
/// Summary description for DBcon
// Dette er en klasse til at oprette forbindelse til en SQL server
public class DBcon
{
    public SqlConnection SQLCON = new SqlConnection("Provider=SQLOLEDB.1;Persist Security Info=False;User ID=fdfk7_dk;Data Source=mssql3.unoeuro.com");
    public SqlCommand Sqlcmd;

    public dbmetode SqlConnection()
	{
        




	}
}