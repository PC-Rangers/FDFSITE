// /** Made By Daniel V. Sandholt **/
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FDFk7 {
	public class Basis {
		Button knap;
		TextBox txtBruger, txtAdgang;
		string mainURL = "http://127.0.0.1:8080/";

		public Basis( object sender, EventArgs args, Button btn, string fnk, object[] Objekter, HttpResponse hR ) {
			knap = btn;
			if( fnk == "LoginAttempt" ) {
				txtBruger = ( TextBox )Objekter[ 0 ];
				txtAdgang = ( TextBox )Objekter[ 1 ];
				LoginAttempt( sender, args, hR );
			}
		}

		public Basis( object sender, EventArgs args, Button btn, string fnk, HttpResponse hR ) {
			knap = btn;
			switch( fnk ) {
				case "GotoForside":
				case "GotoOmOs":
				case "GotoUdlejning":
				case "GotoKontakt":
					Sideskift( fnk, hR );
					break;
			}
		}

		public void Sideskift( string fnk, HttpResponse hR ) {
			switch( fnk ) {
				case "GotoForside":
					hR.Redirect( mainURL + "Default.aspx" );
					break;
				case "GotoOmOs":
				case "GotoKontakt":
					hR.Redirect( mainURL + fnk.Substring( 4 ) + ".aspx" );
					break;
				case "GotoUdlejning":
				// rq.Redirect( url + "Udlejning.aspx" );
					break;
			}
		}

		public void LoginAttempt( object sender, EventArgs args, HttpResponse hR ) {
			if( txtBruger.Text != "" && txtAdgang.Text != "" ) {
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
						if( DB_rights == "1" ) {
							txtBruger.Text = "Velkommen " + DB_UserName;
							knap.Text = "Du er logget ind med rettighedsniveau " + DB_rights;
						}
						if( DB_rights == "2" ) {
							txtBruger.Text = "Velkommen " + DB_UserName;
							knap.Text = "Du er logget ind med rettighedsniveau " + DB_rights;
						}
//						SetCookie( DB_rights, hR );
					}
				}
			}
		}

		private void SetCookie( string rights, HttpResponse hR ) {
			//FIXME session i stedet..
			HttpCookie kage = new HttpCookie( rights );
			kage.Name = mainURL;
			kage.Expires = DateTime.UtcNow.AddMinutes( 5 );//FIXME skal nok sættes op til noget der ligner 20 - DVS
			hR.AppendCookie( kage );
		}

	}
}