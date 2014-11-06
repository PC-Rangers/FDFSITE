using System;
using System.Web;
using System.Web.UI;

namespace FDF 
{	
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

            tmpTxt = txtBruger.Text;
			txtBruger.Text = txtAdgang.Text;
			txtAdgang.Text = tmpTxt;
//			LoginKnap_Click( sender, args );
		}


		public void LoginKnap_Click( object sender, EventArgs args ) {
			DBcon DBLogIn = new DBcon();
			if( txtBruger.Text != "" && txtAdgang.Text != "" ) {
				DBLogIn.SQLcmd = ( "select * from users where username = '" + txtBruger.Text + "' and password = '" + txtAdgang.Text + "' " );
				DBLogIn.ConnectionOpen();
    }
}