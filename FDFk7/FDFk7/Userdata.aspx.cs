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

            /*/FIXME her settes dataen fra forrige view*/
            ;
        }

        public void IndSendNy( object sender, EventArgs args )
        {
            SqlConnection ConNy = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
            SqlCommand Cmd_insert = new SqlCommand( "", ConNy );
            ConNy.Open();

            //FIXME gør noget med data

//            //Bruger
//            txtNavn.Text;
//            txtAdr.Text;
//            txtPostNr.Text;
//            txtByNavn.Text;
//            txtEmail.Text;
//            txtTlf.Text;
//            txtCPR.Text;
//            txtSkole.Text;
//            txtKlasse.Text;

//            //Relation 1
//            txtNavnR1.Text;
//            txtEmailR1.Text;
//            txtTlfR1.Text;

//            //Relation 2
//            txtNavnR1.Text;
//            txtEmailR1.Text;
//            txtTlfR1.Text;

//            //Info om bruger
//            txtStivkrampe.Text;
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