using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FDFk7 {
	public partial class Default : System.Web.UI.Page {
		public void LoginKnap_Click( object sender, EventArgs args ) {
			if( txtBruger.Text != "" && txtAdgang.Text != "" ) {

				TextBox[] brugerPass = new TextBox[]{ txtBruger, txtAdgang };
				basis bob = new basis( sender, args, btnLogin, "LoginKnap_Click", brugerPass );

//				button1.Text = "You clicked me";
//				SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
//				SqlCommand cmd = new SqlCommand( "select * from users where username = '" + txtBruger.Text + "' and password = '" + txtAdgang.Text + "' " );
//				Con.Open();
//				cmd.Connection = Con;
//				SqlDataReader DB_Reader = cmd.ExecuteReader();
//				while( DB_Reader.Read() ) {
//					string DB_UserName = DB_Reader[ "username" ].ToString();
//					string DB_PassWord = DB_Reader[ "password" ].ToString();
//					string DB_rights = DB_Reader[ "return" ].ToString();
//                        
//					if( txtBruger.Text == DB_UserName && txtAdgang.Text == DB_PassWord ) {
//						if( DB_rights == "1" ) {
//							txtBruger.Text = "Velkommen " + DB_UserName;
//							button1.Text = "Du er logget ind med rettighedsniveau " + DB_rights;
//						}
//						if( DB_rights == "2" ) {
//							txtBruger.Text = "Velkommen " + DB_UserName;
//							button1.Text = "Du er logget ind med rettighedsniveau " + DB_rights;
//						}
//					}
//				}
			}
		}

	}
}