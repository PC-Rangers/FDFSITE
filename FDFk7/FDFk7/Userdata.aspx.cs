using System;
using System.Data.SqlClient;
using System.Web.UI.WebControls;

namespace FDFk7
{
    public partial class Userdata : System.Web.UI.Page
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
            SetData();
        }

        public void LoginOut( object sender, EventArgs args )
        {
            new Basis( new Object[]{ sender, Response, Session, txtBruger, txtAdgang } );
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

        void SetData()
        {
            if( !ddlR1.AutoPostBack )
            {
                ddlR1.AutoPostBack = true;
                ddlR1.Items.Add( new ListItem( "Mor", "0" ) );
                ddlR1.Items.Add( new ListItem( "Far", "1" ) );
                ddlR1.Items.Add( new ListItem( "Værge", "2" ) );

                ddlR2.AutoPostBack = true;
                ddlR2.Items.Add( new ListItem( "Mor", "0" ) );
                ddlR2.Items.Add( new ListItem( "Far", "1" ) );
                ddlR2.Items.Add( new ListItem( "Værge", "2" ) );
            }

            // Opretter forbindelse til databasen
//            SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
//            try
//            {
//                /*Indset data*/
//                // Trækker data fra databasen
//                SqlCommand cmd_select = new SqlCommand( "SELECT USR_Ledere.Navn, USR_Gruppe.GruppeNavn, USR_Ledere.Telefon, USR_Brugere.MailAdresse, USR_Brugere.Rettighedder FROM USR_Gruppe, USR_Ledere, USR_Brugere, RTB_Gruppe_Ledere WHERE USR_Ledere.LederID = USR_Brugere.FKBrugereLedereID AND USR_Ledere.LederID = RTB_Gruppe_Ledere.LederID AND USR_Gruppe.GruppeID = RTB_Gruppe_Ledere.GruppeID" );
//                //opretter forbindelse
//                cmd_select.Connection = Con;
//                Con.Open();
//                SqlDataReader DB_Reader = cmd_select.ExecuteReader();
//
//                int antal = 0;
//                while( DB_Reader.Read() )
//                {
//                    txtNavn.Text = DB_Reader[0].ToString();
//
//                    antal++;
//                }
//            } finally
//            {
//                Con.Close();
//            }
        }

        public void IndSendNy( object sender, EventArgs args )
        {
//            //Bruger
            string strNavn = txtNavn.Text;
            string strAdr = txtAdr.Text;
            string strPostNr = txtPostNr.Text;
            string strByNavn = txtByNavn.Text;
            string strEmail = txtEmail.Text;
            string strTlf = txtTlf.Text;
            string strCPR = txtCPR.Text;
            string strSkole = txtSkole.Text;
            string strKlasse = txtKlasse.Text;

//            //Relation 1
            string strNavnR1 = txtNavnR1.Text;
            string strEmailR1 = txtEmailR1.Text;
            string strTlfR1 = txtTlfR1.Text;

//            //Relation 2
            string strNavnR2 = txtNavnR2.Text;
            string strEmailR2 = txtEmailR2.Text;
            string strTlfR2 = txtTlfR2.Text;

//            //Info om bruger
            string strStivk = txtStivkrampe.Text;
            string strPencilin = chkPencilin.Checked.ToString();
            string strTilBilled = chkTilBilled.Checked.ToString();
            string strAllergier = txtAllergier.Text;
            string strNoter = txtNoter.Text;


            //læg data op
            SqlConnection ConNy = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
            try
            {
                ConNy.Open();
//                SqlCommand Cmd_insert = new SqlCommand( "INSERT INTO USR_Brugere (BrugerNavn, Adgangskode, MailAdresse, BrugerGruppe, Rettighedder, Salt)" +
//                                            " VALUES('" + strNavn + "', '" + strKode + "', '" + strMail + "', '" + strGruppe + "', '" + strRet + "', '" + salt + "')", ConNy );
//                Cmd_insert.ExecuteNonQuery();
            } finally
            {
                ConNy.Close();
            }
        }

        public void IndSendUpdate( object sender, EventArgs args )
        {
            SqlConnection ConUpdate = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
            SqlCommand Cmd_Update = new SqlCommand( "Update ", ConUpdate );
            ConUpdate.Open();

            //FIXME gør noget med data
        }
    }
}