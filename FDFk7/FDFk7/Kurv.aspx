﻿<%@ Page Language="C#" Inherits="FDFk7.Kurv" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FDF K7 Frihavn - Kurv</title>

	<!-- Bootstrap -->
	<link href="css/bootstrap.min.css" rel="stylesheet">

	<!-- Custom -->
	<link href="css/app.css" rel="stylesheet">
</head>
<body>
<form class="container" id="body" runat="server" role="form">

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

            <div>
            	<!-- Indtastning -->
                <div class="col-sm-6 top-buffer-small">
                    <label for="txtNavn">Navn</label>
                    <asp:TextBox type="email" placeholder="Navn" CssClass="form-control bottom-buffer-small" runat="server" id="txtNavn" />

                    <label for="txtAdresse">Adresse</label>
                    <asp:TextBox type="email" placeholder="Adresse" CssClass="form-control bottom-buffer-small" runat="server" id="txtAdresse" />

                    <div class="col-sm-4 no-gutter right-padding-small">
                        <label for="txtPostNr">Post nr.</label>
                    	<asp:TextBox type="email" placeholder="PostNr" CssClass="form-control bottom-buffer-small" runat="server" id="txtPostNr" />
                    </div>
                    <div class="col-sm-8 no-gutter">
                        <label for="txtBy">By</label>
                    	<asp:TextBox type="email" placeholder="By" CssClass="form-control bottom-buffer-small" runat="server" id="txtBy" />
                    </div>

                    <label for="txtNote">Evt. Note</label>
                    <asp:TextBox type="email" placeholder="Note" CssClass="form-control bottom-buffer-small" runat="server" id="txtNote" />
                </div>

                <!-- Info om pris -->
                <div class="col-sm-12 top-buffer-small">
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Produkt</th>
                                <th>Periode</th>
                                <th>Pris</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>1</td>
                                <td>Weekend</td>
                                <td>11/06-10 - 13/06-10</td>
                                <td class="text-right tbl-width-num">959,20 kr.</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>Fuld uge</td>
                                <td>14/06-10 - 20/06-10</td>
                                <td class="text-right tbl-width-num">2.756,00 kr.</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>Weekend</td>
                                <td>25/06-10 - 27/06-10</td>
                                <td class="text-right tbl-width-num">959,20 kr.</td>
                            </tr>
                        </tbody>
                    </table>

                    <div class="col-sm-3 top-buffer-small col-md-offset-9 no-gutter">
                      <table class="table table-hover">
                          <thead>
                              <tr>
                                  <th></th>
                                  <th></th>
                              </tr>
                          </thead>
                          <tbody>
                              <tr>
                                  <td>I alt</td>
                                  <td class="text-right tbl-width-num">4.674,40 kr.</td>
                              </tr>
                              <tr>
                                  <td>Moms</td>
                                  <td class="text-right">1.169,00 kr.</td>
                              </tr>
                              <tr>
                                  <td>Alt ialt</td>
                                  <td class="text-right">5.843,00 kr.</td>
                              </tr>
                          </tbody>
                      </table>
                  </div>

              </div>
          	</div>

          	<div class="pull-right btn-margin">
          		<asp:Button type="button" CssClass="btn btn-default" Text="Tilføj periode" runat="server" 	id="btnTiljoejPeriode" OnClick="ClickTilfoejPeriode" />
          	</div>
			<div class="pull-right btn-margin">
          		<asp:Button type="button" CssClass="btn btn-default" Text="Gå til betaling" runat="server" 	id="btnGaaTilBetaling" OnClick="ClickGaaTilBetaling" />
			</div>
			<!-- Usage as a class -->
			<div class="clearfix"></div>

      </div>
    </div><!-- Side -->

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