using System;
using System.Web.UI.WebControls;

namespace FDFk7
{
    public partial class OmOs : System.Web.UI.Page
    {

        protected void Page_Load( object sender, EventArgs args )
        {
            new Basis( 
                new object[]{ sender, Response, Session, txtBruger, txtAdgang },
                new Button[]{ btnLogin, btnBruger, btnOpretBesked, btnNytMedlem, btnBrugere, btnHytte, btnNyeResavationer, btnNyLeder, btnCMS }
            );
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