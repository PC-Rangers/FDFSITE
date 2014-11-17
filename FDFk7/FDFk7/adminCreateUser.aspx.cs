using System;

using System.Security.Cryptography;
using System.Text;

// krævet for Stopwatch.GetTimestamp
using System.Diagnostics;
using System.Web.UI.WebControls;

namespace FDFk7
{
    public partial class adminCreateUser : System.Web.UI.Page
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
            if( !ddlRettighed.AutoPostBack )
            {
                SetData();
            }
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
            ddlBrugerGrp.AutoPostBack = true;
            ddlBrugerGrp.Items.Add( new ListItem( "Medlem", "1" ) );
            ddlBrugerGrp.Items.Add( new ListItem( "Leder", "0" ) );

            ddlRettighed.AutoPostBack = true;
            ddlRettighed.Items.Add( new ListItem( "Bruger", "2" ) );
            ddlRettighed.Items.Add( new ListItem( "Admin", "1" ) );
            if( Session["Authentication"] == "39d87404" )
            {
                ddlRettighed.Items.Add( new ListItem( "Super Admin", "0" ) );
            }
        }

        public void CreateUser( object sender, EventArgs args )
        {
//            txtNavn.Text;
//            txtKode.Text;
//            txtMail.Text;
//            ddlBrugerGrp.SelectedValue;
//            ddlRettighed.SelectedValue;

            // generere salt
            SHA512 sha = new SHA512Managed();

            String timeStamp = Stopwatch.GetTimestamp().ToString();

            byte[] hash = sha.ComputeHash( Encoding.ASCII.GetBytes( timeStamp ) );

            StringBuilder stringBuilder = new StringBuilder();
            foreach( byte b in hash )
            {
                stringBuilder.AppendFormat( "{0:x2}", b );
            }
            string salt = stringBuilder.ToString();
        }

    }
}

