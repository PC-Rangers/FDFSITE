// /** Made By Daniel V. Sandholt **/
using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FDFk7 {
	public class basis {
		Button knap;
		TextBox txtBruger, txtAdgang;

		public basis( object sender, EventArgs args, Button btn, string fnk, object[] Objekter ) {
			knap = btn;
			if( fnk == "LoginKnap_Click" ) {
				txtBruger = ( TextBox )Objekter[ 0 ];
				txtAdgang = ( TextBox )Objekter[ 1 ];
				LoginKnap_Click( sender, args );
			}
		}

		public basis( object sender, EventArgs args, Button btn, string fnk, HttpResponse rq ) {
			string url = "http://127.0.0.1:8080/";
			knap = btn;
			if( fnk == "GotoOmOs" ) {
				rq.Redirect( url + "OmOs.aspx" );
			} else if( fnk == "GotoForside" ) {
				rq.Redirect( url + "Default.aspx" );
			}
		}

		public void LoginKnap_Click( object sender, EventArgs args ) {
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
					}
				}
			}
		}

	}
}