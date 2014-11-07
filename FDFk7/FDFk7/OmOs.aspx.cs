using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FDFk7 {
	public partial class OmOs : System.Web.UI.Page {

		public void LoginAttempt( object sender, EventArgs args ) {
			if( txtBruger.Text != "" && txtAdgang.Text != "" ) {
				TextBox[] brugerPass = new TextBox[]{ txtBruger, txtAdgang };
				Basis bob = new Basis( sender, args, btnLogin, "LoginAttempt", brugerPass, Response );
			}
		}

		public void GotoForside( object sender, EventArgs args ) {
			Basis bob = new Basis( sender, args, btnForside, "GotoForside", Response );
		}

		public void GotoOmOs( object sender, EventArgs args ) {
			Basis bob = new Basis( sender, args, btnOmOs, "GotoOmOs", Response );
		}

		public void GotoUdlejning( object sender, EventArgs args ) {
			Basis bob = new Basis( sender, args, btnUdlejning, "GotoUdlejning", Response );
		}

		public void GotoKontakt( object sender, EventArgs args ) {
			Basis bob = new Basis( sender, args, btnKontakt, "GotoKontakt", Response );
		}

	}
}