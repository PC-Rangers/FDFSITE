using System;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace FDFk7
{
    public partial class Bruger : System.Web.UI.Page
    {

        protected void Page_Load( object sender, EventArgs args )
        {
            new Basis( 
                new object[]{ sender, Response, Session, txtBruger, txtAdgang },
                new System.Web.UI.WebControls.Button[]
                { btnLogin, btnBruger, btnadminCreateMessage, btnadminCreateUser, btnadminUseres,
                    btnadminHytte, btnadminNyeReservation, btnadminCreateAdmin, btnadminCMS
                }
            );
            SetVaerdier();
        }

        public void LoginOut( object sender, EventArgs args )
        {
            new Basis( new Object[]{ sender, Response, Session, txtBruger, txtAdgang } );
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

        public void SetVaerdier()
        {
            //Næste møde
            try
            {
                // Opretter forbindelse til databasen
                SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );

                SqlCommand cmd_select = new SqlCommand( "SELECT ADM_GruppeMode.Besked, ADM_GruppeMode.Tekst, ADM_GruppeMode.StandardDato, ADM_GruppeMode.NaesteDato FROM USR_Gruppe, ADM_GruppeMode, USR_Medlemmer WHERE USR_Medlemmer.MedlemID = 1 AND ADM_GruppeMode.Gruppe = USR_Gruppe.GruppeID AND USR_Gruppe.GruppeID = USR_Medlemmer.Gruppe" );

                Con.Open();

                cmd_select.Connection = Con;
                SqlDataReader DB_Reader = cmd_select.ExecuteReader();
                while( DB_Reader.Read() )
                {
                    string normDato = DB_Reader["StandardDato"].ToString();
                    string nxtDato = DB_Reader["NaesteDato"].ToString();

                    lblBesked.Text = DB_Reader["Besked"].ToString();
                    lblTekst.Text = DB_Reader["Tekst"].ToString();

                    if( !string.IsNullOrEmpty( nxtDato ) )
                    {
                        lblTidspunkt.Text = nxtDato;
                    } else
                    {
                        lblTidspunkt.Text = normDato;
                    }
                }
            } catch( Exception e )
            {
            }


            //Lederinfo
            try
            {
                // Opretter forbindelse til databasen
                SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );

                SqlCommand cmd_select = new SqlCommand( "SELECT USR_Leder.Navn, USR_Leder.Telefon, USR_Leder.Billede FROM USR_Gruppe, USR_Leder, USR_Medlemmer WHERE USR_Medlemmer.MedlemID = 1 AND ADM_GruppeMode.Gruppe = USR_Gruppe.GruppeID AND USR_Gruppe.GruppeID = USR_Medlemmer.Gruppe" );

                Con.Open();

                cmd_select.Connection = Con;
                SqlDataReader DB_Reader = cmd_select.ExecuteReader();
                while( DB_Reader.Read() )
                {

                }
            } catch( Exception e )
            {
            }



            lblLederTlf.Text = "11 22 33 44";
            lnkLederMail.InnerText = "alias@domain.tld";
            lnkLederMail.HRef = "mailto:alias@domain.tld";
            lnkLederBillede.ImageUrl = "http://img2.wikia.nocookie.net/__cb20071101145659/da.uncyclopedia/images/thumb/1/10/Spejder.jpg/254px-Spejder.jpg";
            lblLederTekst.Text = "Ea commodo\n                          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n                          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n                          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
        
            //Næste arrangement
        

            lnkArrBillede.ImageUrl = "http://fdftaarnby.com/wp-content/themes/taarnby/images/frontpagephotos/traditioner.png";
            lblArrTitel.Text = "Bålhygge i snestorm";
            lblArrTekst.Text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n                  consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n                  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n                  proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
            lblArrNote.Text = "Husk brandeknuder og skumfiduser";
            lblArrDato.Text = DateTime.Now.ToString();
            lblArrPris.Text = "2.445,00 kr.";
            lblArrArrangoer.Text = "Benny Hansen";
        }
		
    }
}