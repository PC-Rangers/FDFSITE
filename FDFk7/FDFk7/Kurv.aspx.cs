using System;
using System.Web.UI.WebControls;

namespace FDFk7
{
    public partial class Kurv : System.Web.UI.Page
    {

        protected void Page_Load( object sender, EventArgs args )
        {
            new Basis( 
                new object[]{ sender, Response, Session, txtBruger, txtAdgang },
                new System.Web.UI.WebControls.Button[]
                { btnLogin, btnBruger, btnadminCreateMessage, btnadminCreateUser, btnadminUseres,
                    btnadminHytte, btnadminNyeResavationer, btnadminCreateAdmin, btnadminCMS
                }
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

        public void ClickTilfoejPeriode( object sender, EventArgs args )
        {
            //FIXME gør noget med "Tilføj periode"
        }

        public void ClickGaaTilBetaling( object sender, EventArgs args )
        {
            //txtNavn
            //txtAdresse
            //txtPostNr
            //txtBy
            //txtNote
            //FIXME "Gå til betaling"
        }
		
    }
}