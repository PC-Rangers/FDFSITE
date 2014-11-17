using System;
using System.Web.UI.WebControls;

namespace FDFk7
{
    public partial class Udlejning : System.Web.UI.Page
    {

        protected void Page_Load( object sender, EventArgs args )
        {
            new Basis( 
                new object[]{ sender, Response, Session, txtBruger, txtAdgang },
                new System.Web.UI.WebControls.Button[]
                { btnLogin, btnBruger, btnadminCreateMessage, btnadminCreateUser, btnadminUseres,
                    btnadminHytte, btnadminNyeReservation, btnadminCreateAdmin, btnadminCMS
                }
            );
            SetData();
        }

        public void LoginOut( object sender, EventArgs args )
        {
            new Basis( new Object[]{ sender, Response, Session, txtBruger, txtAdgang } );
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

        void SetData()
        {
            if( !rblTidsrum.AutoPostBack )
            {
                rblTidsrum.AutoPostBack = true;
                rblTidsrum.Items.Add( new ListItem( "&nbsp; Hel uge", "helUge" ) );
                rblTidsrum.Items.Add( new ListItem( "&nbsp; Weekend", "weekend" ) );
            }
        }

        public void GaaTilKurv( object sender, EventArgs args )
        {
            //FIXME gør noget
            GaaTil( sender, args );
        }

    }
}