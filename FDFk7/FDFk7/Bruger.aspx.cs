using System;
using System.Web.UI.WebControls;

namespace FDFk7
{
    public partial class Bruger : System.Web.UI.Page
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
            SetVaerdier();
        }

        public void LoginOut( object sender, EventArgs args )
        {
            new Basis( new Object[]{ sender, Response, Session, txtBruger, txtAdgang } );
        }

        public void GaaTil( object sender, EventArgs args )
        {
            new Basis( new object[]{ sender, Response, Session } );
        }

        public void SetVaerdier()
        {//FIXME skal hentes fra databasen
            //Næste møde
            lblTidspunkt.Text = DateTime.Now.ToString();
            lblBesked.Text = "(Husk ikke at betale medie licens)";
            lblTekst.Text = "Husk Pælestik og Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.";

            //Lederinfo
            lblLederTlf.Text = "11 22 33 44";
            lnkLederMail.InnerText = "alias@domain.tld";
            lnkLederMail.HRef = "mailto:alias@domain.tld";
            lnkLederBillede.ImageUrl = "http://img2.wikia.nocookie.net/__cb20071101145659/da.uncyclopedia/images/thumb/1/10/Spejder.jpg/254px-Spejder.jpg";
            lblLederTekst.Text = "Ea commodo\n                          consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n                          cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n                          proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
        
            //Næste arrangement
            lnkArrBillede.ImageUrl = "http://fdftaarnby.com/wp-content/themes/taarnby/images/frontpagephotos/traditioner.png";
            lblArrTitel.Text = "Bålhygge i snestorm";
            lblArrTekst.Text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\n                  tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\n                  quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\n                  consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\n                  cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\n                  proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";
            lblArrNote.Text = "Husk brandeknuder og skumfiduser";
            lblArrDato.Text = DateTime.Now.ToString();
            lblArrPris.Text = "2.445,00 kr.";
            lblArrArrangoer.Text = "Benny Hansen";
        }
		
    }
}