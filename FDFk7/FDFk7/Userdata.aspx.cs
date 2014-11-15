﻿using System;
using System.Data.SqlClient;
using System.Web;
using System.Web.SessionState;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace FDFk7
{
    public partial class Userdata : System.Web.UI.Page
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

        public void IndSendNy( object sender, EventArgs args )
        {
            SqlConnection ConNy = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
            SqlCommand Cmd_insert = new SqlCommand( "", ConNy );
            ConNy.Open();

        }

        public void IndSendUpdate( object sender, EventArgs args )
        {
            SqlConnection ConUpdate = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
            SqlCommand Cmd_Update = new SqlCommand( "Update ", ConUpdate );
            ConUpdate.Open();
        }
    }
}