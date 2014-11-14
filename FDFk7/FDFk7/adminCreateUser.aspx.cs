using System;
using System.Web;
using System.Web.UI;

using System.Security.Cryptography;
using System.Text;
using System.Diagnostics; // krævet for Stopwatch.GetTimestamp

namespace FDFk7
{
	
    public partial class adminCreateUser : System.Web.UI.Page
    {
		
        protected void Page_Load( object sender, EventArgs args )
        {
            new Basis( "Load", new object[]{ txtBruger, txtAdgang, btnLogin, Session } );
        }

        public void LoginOut( object sender, EventArgs args )
        {
            if( btnLogin.Text.Substring( 4, 2 ) == "ud" )
            {
                new Basis( "Logout", new object[]{ txtBruger, txtAdgang, btnLogin, Session } );
            }
            else if( txtBruger.Text != "" && txtAdgang.Text != "" )
            {
                new Basis( "Login", new object[]{ txtBruger, txtAdgang, btnLogin, Session } );
            }
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

        public void CreateUser ( string fnk, object[] obj )
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

