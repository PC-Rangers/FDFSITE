using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FDFk7 {
	public partial class Default : System.Web.UI.Page {

		public void LoginKnap_Click( object sender, EventArgs args ) {
			if( txtBruger.Text != "" && txtAdgang.Text != "" ) {
				TextBox[] brugerPass = new TextBox[]{ txtBruger, txtAdgang };
				basis bob = new basis( sender, args, btnLogin, "LoginKnap_Click", brugerPass );
			}
		}

		public void GotoForside( object sender, EventArgs args ) {
			basis bob = new basis( sender, args, btnForside, "GotoForside", Response );
		}

		public void GotoOmOs( object sender, EventArgs args ) {
			basis bob = new basis( sender, args, btnOmOs, "GotoOmOs", Response );
		}

		public void GotoUdlejning( object sender, EventArgs args ) {
			basis bob = new basis( sender, args, btnUdlejning, "GotoUdlejning", Response );
		}

		public void GotoKontakt( object sender, EventArgs args ) {
			basis bob = new basis( sender, args, btnKontakt, "GotoKontakt", Response );
		}

	}
}