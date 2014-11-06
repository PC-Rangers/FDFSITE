using System;
using System.Data.SqlClient;
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

		public void GotoOmOs( object sender, EventArgs args ) {
			basis bob = new basis( sender, args, btnLogin, "GotoOmOs", Response );
		}

	}
}