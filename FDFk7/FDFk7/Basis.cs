// /** Made By Daniel V. Sandholt **/
using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.SessionState;
using System.Web.UI.WebControls;

using System.Web.Security;

namespace FDFk7 {
	public class Basis {

		private string mainURL = "http://localhost:51017/";
		//"http://fdfk7.dk.nt8.unoeuro-server.com/";
		//"http://127.0.0.1:8080/";
		//http://127.0.0.1:51017/
		private HttpResponse hR;
		private HttpSessionState session;

		public Basis( string fnk, object[] obj ) {
			switch( fnk ) {
			case "Load":
				session = ( HttpSessionState )obj[ 3 ];
				if( session[ "UserAuthentication" ] != null ) {
					Load( obj );
				}
				break;
			case "Login":
			case "Logout":
				session = ( HttpSessionState )obj[ 3 ];
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

		private void Sideskift( HttpResponse hR, string til ) {
			hR.Redirect( mainURL + til + ".aspx" );
		}

		private void Load( object[] obj ) {
			( ( TextBox )obj[ 0 ] ).Visible = false;
			( ( TextBox )obj[ 1 ] ).Visible = false;
			Button btn = ( Button )obj[ 2 ];
			btn.Text = "Log ud " + session[ "UserAuthentication" ];
		}

		private void LogInUd( string fnk, object[] obj ) {
			TextBox txtBruger = ( ( TextBox )obj[ 0 ] );
			TextBox txtAdgang = ( ( TextBox )obj[ 1 ] );
			Button btnLogin = ( ( Button )obj[ 2 ] );

			try {
<<<<<<< HEAD
				if (fnk == "Login")
				{
					// Tjek for input af brugernavn og adgangskode
					if (txtBruger.Text != "" && txtAdgang.Text != "")
					{
						// Opretter forbindelse til databasen
						SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
=======
				if( fnk == "Login" ) {
					if( txtBruger.Text != "" && txtAdgang.Text != "" ) {
						// Opretter forbindelse til databasen
						SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
						// Valg af bruger
						SqlCommand cmd = new SqlCommand( "SELECT BrugerNavn,Adgangskode,Salt,Rettighedder FROM USR_Brugere WHERE BrugerNavn = '" + txtBruger.Text + "' " );
						Con.Open();
						cmd.Connection = Con;
						SqlDataReader DB_Reader = cmd.ExecuteReader();
						while( DB_Reader.Read() ) {
							string DB_UserName = DB_Reader[ "brugernavn" ].ToString();
							string DB_PassWord = DB_Reader[ "kodeord" ].ToString();
							string DB_rights = DB_Reader[ "retur" ].ToString();

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
				}
			} catch( Exception e ) {
>>>>>>> FETCH_HEAD

						// querry der tæller brugere med det brugernavn i databasen
						SqlCommand cmd_count = new SqlCommand("SELECT count(BrugerNavn) FROM USR_Brugere WHERE BrugerNavn = '" + txtBruger.Text + "' ", Con);

						try
						{
							Con.Open();
							// Tæller brugere med det brugernavn i databasen
							int total = (Int32)cmd_count.ExecuteScalar();

							if (total == 1)
							{
								// Valg af bruger fra databasen
								SqlCommand cmd_select = new SqlCommand( "SELECT BrugerNavn,Adgangskode,Salt,Rettighedder FROM USR_Brugere WHERE BrugerNavn = '" + txtBruger.Text + "' " );

								cmd_select.Connection = Con;
								SqlDataReader DB_Reader = cmd_select.ExecuteReader();

								while (DB_Reader.Read())
								{
									string DB_UserName 	= DB_Reader["BrugerNavn"].ToString();
									string DB_PassWord 	= DB_Reader["Adgangskode"].ToString();
									string DB_Salt 		= DB_Reader["Salt"].ToString();
									string DB_rights 	= DB_Reader["Rettighedder"].ToString();

									string txtPass = txtAdgang.Text;

									// Fastslår længden af koden
									int length = txtPass.Length;
									// Deler koden op i 2
									string firstHalf = txtPass.Substring(0, length / 2);
									string secondHalf = txtPass.Substring(length / 2, length - (length / 2));

									/*
									 * TEST behandling af krydring af password
									txtBruger.Text = firstHalf + " " + DB_Salt + " " + secondHalf;
									*/

									// Samler password 
									string toHash =  firstHalf + DB_Salt + secondHalf;

								}



								// whirlpool(pass)

								// if hashpass = dbpass{session["Authentication"] = crc32(user + rettighed);}
								// else {string msg = "Brugernavn / adgangskode er ikke korrekt";}

							}
							else
							{
								txtBruger.Text = "Brugernavn / adgangskode er ikke korrekt";
							}

						}

						catch( Exception e ) 
						{

						}

					}

				}
				else
				{
					txtBruger.Text = "";
					txtBruger.Visible = true;
					txtAdgang.Visible = true;
					btnLogin.Text = "Log ind";
					session.Abandon();
				}
			}
			catch( Exception e ) 
			{

			}
		} 
	}
}

