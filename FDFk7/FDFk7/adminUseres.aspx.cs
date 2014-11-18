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
        PlaceHolder phCeller = new PlaceHolder();

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
            //Top af tabel
            string[] strHeadList = new string[]{ "#", "Navn", "Gruppe", "Telefon", "E-mail", "Rettighed", "Rediger", "Slet" };

            solutions.Rows.Add( new TableHeaderRow() );
            TableHeaderCell[] tcList = new TableHeaderCell[strHeadList.Count()];
            for( int i = 0 ; i < tcList.Count() ; i++ )
            {
                tcList[i] = new TableHeaderCell();
                tcList[i].Text = strHeadList[i];
            }

            solutions.Rows[0].Cells.AddRange( tcList );

            try
            {
                /*Indset data*/
                // Opretter forbindelse til databasen
                SqlConnection Con = new SqlConnection( "Data Source=mssql3.unoeuro.com;Initial Catalog=fdfk7_dk_db;Persist Security Info=True;User ID=fdfk7_dk;Password=4Xbc8tun" );
                // Trækker data fra databasen
                SqlCommand cmd_select = new SqlCommand( "SELECT USR_Ledere.Navn, USR_Gruppe.GruppeNavn, USR_Ledere.Telefon, USR_Brugere.MailAdresse, USR_Brugere.Rettighedder FROM USR_Gruppe, USR_Ledere, USR_Brugere, RTB_Gruppe_Ledere WHERE USR_Ledere.LederID = USR_Brugere.FKBrugereLedereID AND USR_Ledere.LederID = RTB_Gruppe_Ledere.LederID AND USR_Gruppe.GruppeID = RTB_Gruppe_Ledere.GruppeID" );
                //opretter forbindelse
                cmd_select.Connection = Con;
                Con.Open();
                SqlDataReader DB_Reader = cmd_select.ExecuteReader();

                int antal = 0;
                while( DB_Reader.Read() )
                {
                    TableRow newRow = new TableRow();

                    TableCell newFirstCell = new TableCell();
                    newFirstCell.Text = antal.ToString();
                    newRow.Cells.Add( newFirstCell );

                    int i = 0;
                    while( i < DB_Reader.FieldCount )
                    {
                        TableCell newcell = new TableCell();
                        newcell.Text = DB_Reader[i].ToString();
                        newcell.ID = "Row" + antal + "Cell" + i;
                        newRow.Cells.Add( newcell );
                        phCeller.Controls.Add( newRow.Cells[i] );
                        i++;
                    }

                    //Rediger knap
                    Button Rediger = new Button();
                    Rediger.Text = "Rediger";
                    Rediger.ID = "btnR" + antal + "Rediger";
                    Rediger.Click += RedigerSletBruger;
                    newRow.Cells.Add( new TableCell() );
                    newRow.Cells[i + 1].Controls.Add( Rediger );

                    //Slet knap
                    Button Slet = new Button();
                    Slet.Text = "Slet";
                    Slet.ID = "btnS" + antal + "Slet";
                    Slet.Click += RedigerSletBruger;
                    newRow.Cells.Add( new TableCell() );
                    newRow.Cells[i + 2].Controls.Add( Slet );

                    solutions.Rows.Add( newRow );

                    antal++;
                }
            } catch( Exception ex )
            {
            }
        }

        public void RedigerSletBruger( object sender, EventArgs args )
        {
            string ID = ((Button)sender).ID.Substring( 4, 1 );
            string hvad = ((Button)sender).ID.Substring( 5 );
            string IDLederNavn = "Row" + ID + "Cell0";
            string IDGruppeNavn = "Row" + ID + "Cell1";
            string IDLederTlf = "Row" + ID + "Cell2";
            string IDBrugerMail = "Row" + ID + "Cell3";
            string IDBrugerRettighed = "Row" + ID + "Cell4";

            foreach( Control c in phCeller.Controls )
            {
                if( c.GetType() == typeof( TextBox ) )
                {
                    switch( ((TextBox)c).ID )
                    {
                        default:
                            break;
                    }
                }
            }

//            TextBox tmpTB = phCeller.Controls.GetType();


            if( hvad == "Rediger" )
            {

            } else if( hvad == "Slet" )
            {

            }
        }

    }
}