using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FDFk7
{
    public partial class adminUseres : System.Web.UI.Page
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
//            SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
//
//            SqlCommand cmd_select = new SqlCommand( "SELECT ADM_GruppeMode.Besked, ADM_GruppeMode.Tekst, ADM_GruppeMode.StandardDato, ADM_GruppeMode.NaesteDato FROM USR_Gruppe, ADM_GruppeMode, USR_Medlemmer WHERE USR_Medlemmer.MedlemID = 1 AND ADM_GruppeMode.Gruppe = USR_Gruppe.GruppeID AND USR_Gruppe.GruppeID = USR_Medlemmer.Gruppe" );
//
//            Con.Open();
//
//            cmd_select.Connection = Con;
//            SqlDataReader DB_Reader = cmd_select.ExecuteReader();

            //Top af tabel
            string[] strHeadList = new string[]{ "#", "Navn", "Gruppe", "Telefon", "E-mail", "Rettighed" };

            solutions.Rows.Add( new TableHeaderRow() );
            TableHeaderCell[] tcList = new TableHeaderCell[strHeadList.Count()];
            for( int i = 0 ; i < tcList.Count() ; i++ )
            {
                tcList[i] = new TableHeaderCell();
                tcList[i].Text = strHeadList[i];
            }

            solutions.Rows[0].Cells.AddRange( tcList );

            /*Indset data*/
            // Opretter forbindelse til databasen
            SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
            // Trækker data fra databasen
            SqlCommand cmd_select = new SqlCommand( "SELECT USR_Ledere.Navn, USR_Gruppe.GruppeNavn, USR_Ledere.Telefon, USR_Brugere.MailAdresse, USR_Brugere.Rettighedder FROM USR_Gruppe, USR_Ledere, USR_Brugere WHERE USR_Ledere.LederID = USR_Brugere.FKBrugereLedereID AND USR_Ledere.LederID  = USR_Gruppe.Gruppe_Leder" );
            //opretter forbindelse
            cmd_select.Connection = Con;
            Con.Open();
            SqlDataReader DB_Reader = cmd_select.ExecuteReader();

            while( DB_Reader.Read() )
            {
                //tmplstString.Add( DB_Reader.ToString() );

                int adder = 0;
                while( adder <= DB_Reader.Depth )
                {
                    TableRow newRow = new TableRow();
                    solutions.Rows.Add( newRow );

                    TableCell newFirstCell = new TableCell();
                    newFirstCell.Text = adder.ToString();
                    newRow.Cells.Add( newFirstCell );

                    for( int i = 0 ; i < DB_Reader.FieldCount ; i++ )
                    {
                        TableCell newcell = new TableCell();
                        newcell.Text = DB_Reader[i].ToString();
                        newRow.Cells.Add( newcell );
                    }

                    adder++;
                }


            }
        }

        public void ibBru0RClick( object sender, EventArgs args )
        {

        }

        public void ibBru0SClick( object sender, EventArgs args )
        {

        }

    }
}