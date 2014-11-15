﻿using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.SessionState;
using System.Web.UI.WebControls;
using System.Text;
using System.Security.Cryptography;

namespace FDFk7
{
    public class Basis
    {

        private string mainURL = "http://127.0.0.1:8080/";
        /*Mac: "http://127.0.0.1:8080/";
        * Win: "http://localhost:51017/";
        * Web: "http://fdfk7.dk.nt8.unoeuro-server.com/";
        */
        private HttpSessionState session;

        /** Load **/
        public Basis( string fnk, object[] obj ) // { sender, Response, Session, txtBruger, txtAdgang, btnLogin }
        {
            session = (HttpSessionState)obj[2];
            Load( obj );
        }

        /** GaaTil og LogInOut **/
        public Basis( object[] obj ) // LogInUd { sender, Response, Session, txtBruger, txtAdgang }
        {                          // Sideskift { sender, Response, Session }
            switch( ((Button)obj[0]).ID )
            {
                case "btnLogin":
                    session = (HttpSessionState)obj[2];
                    if( ((Button)obj[0]).Text.Substring( 4, 2 ) == "ud" )//Der logges ud
                    {
                        LogInUd( "Logud", obj );
                    } else if( ((TextBox)obj[3]).Text != "" && ((TextBox)obj[4]).Text != "" )//Brugernavn og pass er ikke tomme
                    {
                        LogInUd( "Login", obj );
                    }
                    break;
            //hvis knappen hedder "btn" + navnPåSide bruges default
                default:// mainURL + (knapID - "btn") + sideEndelse ;; fx = "http://fdfk7.dk.nt8.unoeuro-server.com/" + "OmOs" + ".aspx"
                    ((HttpResponse)obj[1]).Redirect( mainURL + ((Button)obj[0]).ID.Substring( 3 ) + ".aspx" );
                    break;
            }
        }

        private void Load( object[] obj )
        {
            if( session["UserRights"] == null )//hvis man ikke er logget ind
            {
                switch( ((System.Web.UI.Page)obj[0]).Request.AppRelativeCurrentExecutionFilePath )//navn på den side der gåes til
                {
                    case "~/Admin.aspx":
                    case "~/Bruger.aspx":
                    case "~/Userdate.aspx":
                    case "~/adminCreateUser.aspx":
                    case "~/Tilmelding.aspx":
                        LogTilSide( false, obj );
                        break;
                }
            } else if( (session["UserRights"] == "Admin") || (session["UserRights"] == "Super admin") )
            {
                ((TextBox)obj[3]).Visible = false;
                ((TextBox)obj[4]).Visible = false;
                ((Button)obj[5]).Text = "Log ud " + session["UserAuthentication"];
            } else// almindelig bruger
            {
                switch( ((System.Web.UI.Page)obj[0]).Request.AppRelativeCurrentExecutionFilePath )//navn på den side der gåes til
                {
                    case "~/Admin.aspx":
                    case "~/adminCreateUser.aspx":
                        LogTilSide( false, obj );
                        break;
                }
            }
        }

        private void LogInUd( string fnk, object[] obj )
        {
            TextBox txtBruger = ((TextBox)obj[3]);
            TextBox txtAdgang = ((TextBox)obj[4]);
            Button btnLogin = ((Button)obj[0]);

            try
            {
                if( fnk == "Login" )
                {
                    // Tjek for input af brugernavn og adgangskode
                    if( txtBruger.Text != "" && txtAdgang.Text != "" )
                    {
                        // Opretter forbindelse til databasen
                        SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );


                        // querry der tæller brugere med det brugernavn i databasen
                        SqlCommand cmd_count = new SqlCommand( "SELECT count(BrugerNavn) FROM USR_Brugere WHERE BrugerNavn = '" + txtBruger.Text + "' ", Con );

                        Con.Open();
                        // Tæller brugere med det brugernavn i databasen
                        int total = (Int32)cmd_count.ExecuteScalar();

                        if( total == 1 )
                        {
                            // Valg af bruger fra databasen
                            SqlCommand cmd_select = new SqlCommand( "SELECT BrugerNavn,Adgangskode,Salt,Rettighedder FROM USR_Brugere WHERE BrugerNavn = '" + txtBruger.Text + "' " );

                            cmd_select.Connection = Con;
                            SqlDataReader DB_Reader = cmd_select.ExecuteReader();

                            while( DB_Reader.Read() )
                            {
                                string DB_UserName = DB_Reader["BrugerNavn"].ToString();
                                string DB_PassWord = DB_Reader["Adgangskode"].ToString();
                                string DB_Salt = DB_Reader["Salt"].ToString();
                                string DB_rights = DB_Reader["Rettighedder"].ToString();

                                string txtPass = txtAdgang.Text;

                                // Fastslår længden af koden
                                int length = txtPass.Length;
                                // Deler koden op i 2
                                string firstHalf = txtPass.Substring( 0, length / 2 );
                                string secondHalf = txtPass.Substring( length / 2, length - (length / 2) );

                                /*
								*   TEST behandling af krydring af password
								*	txtBruger.Text = firstHalf + " " + DB_Salt + " " + secondHalf;
								*/

                                // Samler password 
                                string toHash = firstHalf + DB_Salt + secondHalf;
                                //string hashPass = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(toHash, "sha1");

                                SHA512 sha = new SHA512Managed();
                                byte[] hash = sha.ComputeHash( Encoding.ASCII.GetBytes( toHash ) );

                                StringBuilder stringBuilder = new StringBuilder();
                                foreach( byte b in hash )
                                {
                                    stringBuilder.AppendFormat( "{0:x2}", b );
                                }
                                string hashPass = stringBuilder.ToString();

                                if( hashPass == DB_PassWord )
                                {

                                    session["User"] = DB_UserName;

                                    switch( DB_rights )
                                    {
                                        case "0":
                                            // superadmin   = 39d87404
                                            session["Authentication"] = "39d87404";
                                            session["UserRights"] = "Super admin";
                                            break;
                                        case "1":
                                            // admin        = 880e0d76
                                            session["Authentication"] = "880e0d76"; 
                                            session["UserRights"] = "Admin";                                           
                                            break;
                                        case "2":
                                            // bruger       = c014bea4
                                            session["Authentication"] = "c014bea4";
                                            session["UserRights"] = "Bruger";
                                            break;
                                        default:
                                            // none         = 7f9000cf
                                            session["Authentication"] = "7f9000cf";
                                            break;
                                    }

                                    txtBruger.Text = "Velkommen " + DB_UserName;
                                    btnLogin.Text = "Log ud fra rettighedsniveau " + session["UserRights"];
                                } else
                                {
                                    txtBruger.Text = "Brugernavn / adgangskode er ikke korrekt";
                                }

                            }

                            //Se på rettigheder og gå til rette side
                            LogTilSide( true, obj );

                        } else
                        {
                            txtBruger.Text = "Brugernavn / adgangskode er ikke korrekt";
                        }

                    }
                } else
                {
                    session.Abandon();
                    LogTilSide( false, obj );
                }
            } catch( Exception e )
            {
            }

        }

        private void LogTilSide( bool ind, object[] obj )
        {
            if( ind )
            {
                switch( (string)session["UserRights"] )
                {
                    case "Bruger":
                        ((HttpResponse)obj[1]).Redirect( mainURL + "Bruger.aspx" );
                        break;
                    case "Admin":
                    case "Super admin":
                        ((HttpResponse)obj[1]).Redirect( mainURL + "Admin.aspx" );
                        break;
                }
            } else//Logud
            {
                ((HttpResponse)obj[1]).Redirect( mainURL + "Default.aspx" );
            }
        }

    }
}