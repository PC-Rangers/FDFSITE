using System;

namespace FDFk7
{
    public partial class Kontakt : System.Web.UI.Page
    {

        protected void Page_Load( object sender, EventArgs args )
        {
            new Basis( "Load", new object[]{ txtBruger, txtAdgang, btnLogin, Session, Request } );
        }

        public void LoginOut( object sender, EventArgs args )
        {
            new Basis( new Object[]{ sender, Response, Session, txtBruger, txtAdgang } );
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

    }
}