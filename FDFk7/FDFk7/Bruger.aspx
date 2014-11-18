<%@ Page Language="C#" Inherits="FDFk7.Bruger" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FDF K7 Frihavn - Bruger</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom -->
	<link href="css/app.css" rel="stylesheet">
</head>
<body>
<form class="container" id="body" runat="server" role="form">

	<!-- Top -->
	<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	  	<div class="container">

		    <div class="navbar-header">
		      	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			    <a class="navbar-brand" href="/Default.aspx">FDFK7</a>
		    </div>

		    <!-- Login/Ud -->
		    <div id="navbar" class="navbar-collapse collapse" runat="server">
				<div class="navbar-form navbar-right" role="form">
					<div class="form-group">
						<asp:TextBox type="text" placeholder="Brugernavn" CssClass="form-control" runat="server" id="txtBruger" />
					</div>
					<div class="form-group">
						<asp:TextBox type="password" placeholder="Adgangskode" CssClass="form-control" runat="server" id="txtAdgang" TextMode="Password" />
					</div>
					<asp:Button type="submit" CssClass="btn btn-success" id="btnLogin" Text="Log ind" runat="server" OnClick="LoginOut" />
  				</div>
		    </div><!--/.navbar-collapse -->

		</div>
	</nav>

    <!-- Nav menu -->
	<div class="container">
		<div class="row top-buffer-large right-buffer-small">
	    	<div class="navbar-right">
	        	<div class="btn-group pull-right">
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Forside" runat="server" id="btnDefault" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Udlejning" runat="server" id="btnUdlejning" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Om Os" runat="server" id="btnOmOs" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Kontakt" runat="server" id="btnKontakt" OnClick="GaaTil" />

	            	<asp:Button type="button" CssClass="btn btn-default" Text="Profil" runat="server" 	id="btnBruger" OnClick="GaaTil" />

	            	<asp:Button type="button" CssClass="btn btn-default" Text="Opret besked" runat="server" 	id="btnadminCreateMessage" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Nyt medlem" runat="server" 		id="btnadminCreateUser" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Ny leder" runat="server" 		id="btnadminCreateAdmin" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Brugere" runat="server" 			id="btnadminUseres" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Hytte" runat="server" 			id="btnadminHytte" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Nye reservation" runat="server" id="btnadminNyeReservation" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="CMS" runat="server" 				id="btnadminCMS" OnClick="GaaTil" />
		        </div>
		    </div>
		</div>
	</div>

    <!-- Side indhold -->
    <div class="container">
        <div class="row top-buffer-small">

        	<!-- Næste møde -->
            <div class="col-sm-6 top-buffer-small">
                <div class="thumbnail">

                    <div class="caption">
                        <h2>Næste gruppe møde:</h2>

                        <h5> <asp:Label type="text" runat="server" id="lblTidspunkt" /> </h5>
                        <p class="text-muted"><strong> <asp:Label type="text" runat="server" id="lblBesked" /> </strong></p>

                        <p> <asp:Label type="text" runat="server" id="lblTekst" /> </p>
                    </div>

                </div>
            </div>

            <!-- Leder info -->
            <div class="col-sm-6 top-buffer-small">
                <div class="thumbnail">

                	<div class="caption">

                        <div class="col-sm-8">
                            <h2>Palle Panik</h2>
                            <table class="tbl-buffer-medium">
                                <tr>
                                    <td class="tbl-padding">Telefon</td>
                                    <td> <asp:Label runat="server" id="lblLederTlf" /> </td>
                                </tr>
                                <tr>
                                    <td class="tbl-padding">E-mail</td>
                                    <td> <a runat="server" id="lnkLederMail"> </a> </td>
                                </tr>
                            </table>
                        </div>

                        <div class="col-sm-4">
                            <asp:Image runat="server" id="lnkLederBillede" width="150px" height="150px" CssClass="img-circle" />
                        </div>

                        <div class="col-sm-12"> <asp:Label runat="server" id="lblLederTekst" /> </div>

                    </div>

                    <div class="clearfix"></div>
                </div>
            </div>

            <!-- Næste arrangement -->
            <div class="col-sm-12 top-buffer-small">
            	<asp:Image runat="server" id="lnkArrBillede" width="100%" CssClass="bottom-buffer-medium" />

                <h2 class="bottom-buffer-small"> <asp:Label runat="server" id="lblArrTitel" /> </h2>
                <p> <asp:Label runat="server" id="lblArrTekst" /> </p>
                <p class="lead"> <asp:Label runat="server" id="lblArrNote" /> </p>

                <table class="tbl-margin">
                    <tr>
                        <td class="tbl-padding"><strong>Dato</strong></td>
                        <td><strong> <asp:Label runat="server" id="lblArrDato" /> </strong></td>
                    </tr>
                    <tr>
                        <td class="tbl-padding">Pris</td>
                        <td> <asp:Label runat="server" id="lblArrPris" /> </td>
                    </tr>
                    <tr>
                        <td class="tbl-padding">Arrangør</td>
                        <td> <asp:Label runat="server" id="lblArrArrangoer" /> </td>
                    </tr>
                </table>
            </div>

        </div>
    </div> <!-- /Side -->

</form>

    <hr>

    <footer>
        <div class="container">
            <div class="row">
                <p>© 2014 FDFK7 - Alle rettigheder forbeholdes</p>
            </div>
        </div>
    </footer>


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

    <script src="../../dist/js/bootstrap.min.js"></script>
    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>


  </body>
  </html>