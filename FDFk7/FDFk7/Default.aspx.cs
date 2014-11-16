using System;

namespace FDFk7
{
    public partial class Default : System.Web.UI.Page
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

        public void GaaTilTilmeld( object sender, EventArgs args )
        {
            try
            {
                switch( (string)Session["UserRights"] )
                {
                    case "Super admin":
                    case "Admin":
                    case"Bruger":
                        GaaTil( sender, args );
                        break;
                    default:
                        Response.Write( "<script language=javascript>alert('Du skal være logget ind for at kunne dette.')</script>" );
                        break;
                }
            } catch( Exception e )
            {
                
            }
        }

    }
}