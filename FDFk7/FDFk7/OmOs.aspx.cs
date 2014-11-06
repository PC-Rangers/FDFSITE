using System;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FDFk7 {
	public partial class OmOs : System.Web.UI.Page {

		public void LoginKnap_Click( object sender, EventArgs args ) {
			TextBox[] brugerPass = new TextBox[]{ txtBruger, txtAdgang };
			basis bob = new basis( sender, args, btnLogin, "LoginKnap_Click", brugerPass );
		}

	}
}