using System;

namespace FDFk7
{

    public partial class Userdata : System.Web.UI.Page
    {
        protected void Page_Load( object sender, EventArgs args )
        {
            if( Session["UserAuthentication"] != null )
            {
                new Basis( "Load", new object[] { txtBruger, txtAdgang, btnLogin, Session } );
            }
        }

        public void LoginOut( object sender, EventArgs args )
        {
            if( btnLogin.Text.Substring( 4, 2 ) == "ud" )
            {
                new Basis( "Logout", new object[] { txtBruger, txtAdgang, btnLogin, Session } );
            }
            else if( txtBruger.Text != "" && txtAdgang.Text != "" )
            {
                new Basis( "Login", new object[] { txtBruger, txtAdgang, btnLogin, Session } );
            }
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

        private void Send( string fnk, object[] obj )
        {

        }
    }
}