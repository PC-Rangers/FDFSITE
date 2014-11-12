using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.SessionState;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace FDFk7 
{
    public partial class Userdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs args)
        {
            if (Session["UserAuthentication"] != null)
            {
                Basis bob = new Basis("Load", new object[] { txtBruger, txtAdgang, btnLogin, Session });
            }
        }

        public void LoginOut(object sender, EventArgs args)
        {
            if (btnLogin.Text.Substring(4, 2) == "ud")
            {
                Basis bob = new Basis("Logout", new object[] { txtBruger, txtAdgang, btnLogin, Session });
            }
            else if (txtBruger.Text != "" && txtAdgang.Text != "")
            {
                Basis bob = new Basis("Login", new object[] { txtBruger, txtAdgang, btnLogin, Session });
            }
        }

        public void GotoForside(object sender, EventArgs args)
        {
            Basis bob = new Basis("Forside", new object[] { sender, Response, Session });
        }

        public void GotoOmOs(object sender, EventArgs args)
        {
            Basis bob = new Basis("OmOs", new object[] { sender, Response, Session });
        }

        public void GotoUdlejning(object sender, EventArgs args)
        {
            Basis bob = new Basis("Udlejning", new object[] { sender, Response, Session });
        }

        public void GotoKontakt(object sender, EventArgs args)
        {
            Basis bob = new Basis("Kontakt", new object[] { sender, Response, Session });
        }

        public void IndSendNy(object sender, EventArgs args)
        {
            SqlConnection ConNy = new SqlConnection("Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun");
            SqlCommand Cmd_insert = new SqlCommand("", ConNy);
            ConNy.Open();

        }
        public void IndSendUpdate(object sender, EventArgs args)
        {
            SqlConnection ConUpdate = new SqlConnection("Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun");
            SqlCommand Cmd_Update = new SqlCommand("Update ", ConUpdate);
            ConUpdate.Open();
        }
    }
}