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
                new Button[]{ btnLogin, btnProfil, btnOpretBesked, btnNytMedlem, btnBrugere, btnHytte, btnNyeResavationer, btnNyLeder, btnCMS }
            );
        }

        public void LoginOut( object sender, EventArgs args )
        {
            new Basis( new Object[]{ sender, Response, Session, txtBruger, txtAdgang } );
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

        public void CreateUser( string fnk, object[] obj )
        {
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

