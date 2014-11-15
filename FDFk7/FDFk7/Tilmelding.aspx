<%@ Page Language="C#" Inherits="FDFk7.Tilmelding" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FDF K7 Frihavn - Tilmelding</title>

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
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Nye resavationer" runat="server" id="btnadminNyeResavationer" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="CMS" runat="server" 				id="btnadminCMS" OnClick="GaaTil" />
		        </div>
		    </div>
		</div>
	</div>

    <!-- Side indhold -->
    <div class="container">
        <div class="row top-buffer-small">
            <img src="http://fdftaarnby.com/wp-content/themes/taarnby/images/frontpagephotos/traditioner.png" width="100%" class="bottom-buffer-medium">
        </div>

        <div class="col-sm-6 top-buffer-small">

            <h2 class="bottom-buffer-small">Bålhygge i snestorm</h2>
            <p>
              Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
              tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
              quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
              consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
              cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
              proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
            </p>
            <p class="lead">Husk brandeknuder og skumfiduser</p>

            <table class="tbl-margin">
                <tr>
                    <td class="tbl-padding"><strong>Dato</strong></td>
                    <td><strong>04/01-15</strong></td>
                </tr>
                <tr>
                    <td class="tbl-padding">Pris</td>
                    <td>2.445,00 kr.</td>
                </tr>
                <tr>
                    <td class="tbl-padding">Arrangør</td>
                    <td>Benny Hansen</td>
                </tr>
            </table>
        </div>

        <div class="col-sm-6 top-buffer-small">
            <div class="thumbnail">

                <div class="caption">
                    <h2>Tilmelding</h2>

                    <div role="form">
                        <div class="form-group top-buffer-small">
                            <label for="txtNavn">Navn</label>
                            <asp:TextBox type="text" placeholder="Navn" CssClass="form-control" runat="server" id="txtNavn" />
                        </div>
                        <div class="form-group">
                            <label for="txtTelefon">Telefon</label>
                            <asp:TextBox type="text" placeholder="Telefon" CssClass="form-control" runat="server" id="txtTelefon" />
                        </div>
                        <div class="form-group">
                            <label for="txtEmail">E-mail</label>
                            <asp:TextBox type="text" placeholder="E-mail" CssClass="form-control" runat="server" id="txtEmail" />
                        </div>
                        <label for="txtBesked">Evt. besked</label>
                        <asp:TextBox type="text" placeholder="Besked" CssClass="form-control" runat="server" id="txtBesked" />

                        <div class="pull-right btn-margin">
                        	<asp:Button type="button" CssClass="btn btn-default" Text="Tilmeld" runat="server" 	id="btnTilmeld" OnClick="ClickTilmeld" />
                        </div>

                        <!-- Usage as a class -->
                        <div class="clearfix"></div>
                    </div>

                </div><!-- /Tilmelding -->

            </div>
        </div>

    </div>

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