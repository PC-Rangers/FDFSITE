using System;

namespace FDFk7
{
    public partial class Default : System.Web.UI.Page
    {

        protected void Page_Load( object sender, EventArgs args )
        {//FIXME skal laves så der også Loades når man ikke er logget ind
            if( Session["UserAuthentication"] != null )
            {
                Basis bob = new Basis( "Load", new object[]{ txtBruger, txtAdgang, btnLogin, Session, Request } );
            }
        }

        public void LoginOut( object sender, EventArgs args )
        {//FIXME skal laves så den kan bruges i GaaTil
            if( btnLogin.Text.Substring( 4, 2 ) == "ud" )
            {
                Basis bob = new Basis( "Logout", new object[]{ txtBruger, txtAdgang, btnLogin, Session } );
            }
            else if( txtBruger.Text != "" && txtAdgang.Text != "" )
            {
                Basis bob = new Basis( "Login", new object[]{ txtBruger, txtAdgang, btnLogin, Session } );
            }
        }

        public void GaaTil( object sender, EventArgs args )
        {
            Basis bob = new Basis( new object[]{ sender, Response, Session } );
        }

    }
}