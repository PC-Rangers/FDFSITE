// /** Made By Daniel V. Sandholt **/
using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.SessionState;
using System.Web.UI.WebControls;

namespace FDFk7 {
	public class Basis {

		private string mainURL = "http://127.0.0.1:8080/";
		private HttpResponse hR;

		public Basis( string fnk, object[] obj ) {
			switch( fnk ) {
				case "Load":
					Load( obj );
					break;
				case "Login":
				case "Logout":
					LogInUd( fnk, obj );
					break;
				case "Forside":
					Sideskift( ( HttpResponse )obj[ 1 ], "Default" );
					break;
				case "Udlejning":
				case "OmOs":
				case "Kontakt":
					Sideskift( ( HttpResponse )obj[ 1 ], ( ( Button )obj[ 0 ] ).Text.Replace( " ", string.Empty ) );
					break;
			}
		}

		private void Sideskift( HttpResponse hR, string fra ) {
			hR.Redirect( mainURL + fra + ".aspx" );
		}

		private void Load( object[] obj ) {
			( ( TextBox )obj[ 0 ] ).Visible = false;
			( ( TextBox )obj[ 1 ] ).Visible = false;
			Button btn = ( Button )obj[ 2 ];
			HttpSessionState session = ( HttpSessionState )obj[ 3 ];
			btn.Text = "Log ud " + session[ "UserAuthentication" ];
		}

		private void LogInUd( string fnk, object[] obj ) {
			TextBox txtBruger = ( ( TextBox )obj[ 0 ] );
			TextBox txtAdgang = ( ( TextBox )obj[ 1 ] );
			Button btnLogin = ( ( Button )obj[ 2 ] );
			HttpSessionState session = ( ( HttpSessionState )obj[ 3 ] );

			try {
				if( fnk == "Login" ) {
					SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
					SqlCommand cmd = new SqlCommand( "select * from users where username = '" + txtBruger.Text + "' and password = '" + txtAdgang.Text + "' " );
					Con.Open();
					cmd.Connection = Con;
					SqlDataReader DB_Reader = cmd.ExecuteReader();
					while( DB_Reader.Read() ) {
						string DB_UserName = DB_Reader[ "username" ].ToString();
						string DB_PassWord = DB_Reader[ "password" ].ToString();
						string DB_rights = DB_Reader[ "return" ].ToString();

						if( txtBruger.Text == DB_UserName && txtAdgang.Text == DB_PassWord ) {
							if( ( DB_rights == "1" ) || ( DB_rights == "2" ) ) {
								txtBruger.Text = "Velkommen " + DB_UserName;
								btnLogin.Text = "Log ud fra rettighedsniveau " + DB_rights;
								session[ "UserAuthentication" ] = DB_UserName;
							}
							txtBruger.Visible = false;
							txtAdgang.Visible = false;
						}
					}
				} else {
					txtBruger.Text = "";
					txtBruger.Visible = true;
					txtAdgang.Visible = true;
					btnLogin.Text = "Log ind";
					session.Abandon();
				}
			} catch( Exception e ) {

			}
		}

	}
}