using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class VS_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void LoginKnap_Click (object sender, EventArgs e)
    {
        DBcon DBLogIn = new DBcon();
        if (brugernavn.Text != "" & password.Text != "")
        {

            DBLogIn.SQLcmd = ("select * from users where username = '" + brugernavn.Text + "' and password = '" + password.Text + "' ");
            DBLogIn.ConnectionOpen();
        }
    }
}