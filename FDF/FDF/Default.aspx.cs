using System;
using System.Web;
using System.Web.UI;

namespace FDF {
	
//<<<<<<< HEAD
    public partial class Default : System.Web.UI.Page 
    {
        public void LoginKnap_Click( object sender, EventArgs args ) 
        {
            //DBcon DBLogIn = new DBcon();
            //if(FindControl("username") != "" && FindControl("password") != "")
            //{
            //    DBLogIn.SQLcmd = ("select * from users where username = '" + username.Text + "' and password = '" + password.Text + "' ");
            //    DBLogIn.ConnectionOpen();
            //}
        }
    }
//=======
	public partial class Default : System.Web.UI.Page {
		public void button1Clicked( object sender, EventArgs args ) {
			//FIXME button1.Text = "You clicked me";
		}
	}
//>>>>>>> origin/master
}