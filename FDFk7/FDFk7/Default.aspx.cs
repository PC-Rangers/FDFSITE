using System;

namespace FDFk7 {
	public partial class Default : System.Web.UI.Page {

		protected void Page_Load( object sender, EventArgs args ) {
			if( Session[ "UserAuthentication" ] != null ) {
				Basis bob = new Basis( "Load", new object[]{ txtBruger, txtAdgang, btnLogin, Session, Request } );
			}
		}

		public void LoginOut( object sender, EventArgs args ) {
			if( btnLogin.Text.Substring( 4, 2 ) == "ud" ) {
				Basis bob = new Basis( "Logout", new object[]{ txtBruger, txtAdgang, btnLogin, Session } );
			} else if( txtBruger.Text != "" && txtAdgang.Text != "" ) {
				Basis bob = new Basis( "Login", new object[]{ txtBruger, txtAdgang, btnLogin, Session } );
			}
		}

		public void GotoForside( object sender, EventArgs args ) {
			Basis bob = new Basis( "Forside", new object[]{ sender, Response, Session } );
		}

		public void GotoOmOs( object sender, EventArgs args ) {
			Basis bob = new Basis( "OmOs", new object[]{ sender, Response, Session } );
		}

		public void GotoUdlejning( object sender, EventArgs args ) {
			Basis bob = new Basis( "Udlejning", new object[]{ sender, Response, Session } );
		}

		public void GotoKontakt( object sender, EventArgs args ) {
			Basis bob = new Basis( "Kontakt", new object[]{ sender, Response, Session } );
		}

	}
}