using System;
using System.Web;
using System.Web.UI;

namespace FDFk7 {
	
	public partial class Default : System.Web.UI.Page {
		public void button1Clicked( object sender, EventArgs args ) {
			string tmpTxt;
			button1.Text = "You clicked me";
			tmpTxt = txtBruger.Text;
			txtBruger.Text = txtAdgang.Text;
			txtAdgang.Text = tmpTxt;
		}
	}
}