<%@ Page Language="C#" Inherits="FDFk7.Userdata" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FDF K7 Frihavn - Userdata</title>

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

		    <!-- Login -->
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

			<div class="form">
				<!-- Bruger -->
				<div class="col-sm-6 top-buffer-small">

		            <label for="txtNavn">Navn</label>
		            <asp:TextBox type="text" placeholder="Navn" CssClass="form-control bottom-buffer-small" runat="server" id="txtNavn" />

		            <label for="txtAdr">Adresse</label>
		            <asp:TextBox type="text" placeholder="Adresse" CssClass="form-control bottom-buffer-small" runat="server" id="txtAdr" />

		            <div class="col-sm-4 no-gutter right-padding-small bottom-buffer-medium">
						<label for="txtPostNr">Post nr.</label>
						<asp:TextBox type="text" placeholder="Post nummer" CssClass="form-control bottom-buffer-small" runat="server" id="txtPostNr" />
					</div>

					<div class="col-sm-8 no-gutter bottom-buffer-medium">
						<label for="txtByNavn">By</label>
						<asp:TextBox type="text" placeholder="Bynavn" CssClass="form-control bottom-buffer-small" runat="server" id="txtByNavn" />
		            </div>

		            <div class="col-sm-12 no-gutter bottom-buffer-medium">
						<label for="txtEmail">E-mail</label>
		            	<asp:TextBox type="text" placeholder="E-mail" CssClass="form-control bottom-buffer-small" runat="server" id="txtEmail" />

						<label for="txtTlf">Telefon</label>
		            	<asp:TextBox type="text" placeholder="Telefon nummer" CssClass="form-control bottom-buffer-small" runat="server" id="txtTlf" />

						<label for="txtCPR">CPR nr. (I en smøre uden -)</label>
		            	<asp:TextBox type="text" placeholder="På følgende måde: 1234567890" CssClass="form-control bottom-buffer-small" runat="server" id="txtCPR" />
		            </div>

		            <div class="col-sm-12 no-gutter bottom-buffer-medium">
						<label for="txtSkole">Skole</label>
		            	<asp:TextBox type="text" placeholder="Skole" CssClass="form-control bottom-buffer-small" runat="server" id="txtSkole" />

						<label for="txtKlasse">Klasse</label>
		            	<asp:TextBox type="text" placeholder="Klasse" CssClass="form-control bottom-buffer-small" runat="server" id="txtKlasse" />
		            </div>

				</div>

				<!-- Værge -->
		        <div class="col-sm-6 top-buffer-small">
		        	
		        	<!-- Relation 1 -->
                    <div class="well">
						<label for="ddlR1">Relation</label>
						<asp:DropDownList CssClass="form-control bottom-buffer-small" runat="server" id="ddlR1" />

						<label for="txtNavnR1">Navn</label>
		            	<asp:TextBox type="text" placeholder="Navn" CssClass="form-control bottom-buffer-small" runat="server" id="txtNavnR1" />

						<div class="col-sm-12 no-gutter">
							<label for="txtEmailR1">E-mail</label>
		            		<asp:TextBox type="text" placeholder="E-mail" CssClass="form-control bottom-buffer-small" runat="server" id="txtEmailR1" />
						</div>

						<div class="col-sm-12 no-gutter bottom-buffer-medium">
							<label for="txtTlfR1">Telefon</label>
		            		<asp:TextBox type="text" placeholder="Telefon" CssClass="form-control bottom-buffer-small" runat="server" id="txtTlfR1" />
						</div>

                        <div class="clearfix"></div>
                    </div>

                    <!-- Relation 2 -->
					<label for="ddlR2">Relation</label>
					<asp:DropDownList CssClass="form-control bottom-buffer-small" runat="server" id="ddlR2" />

					<label for="tctNavnR2">Navn</label>
	            	<asp:TextBox type="text" placeholder="Navn" CssClass="form-control bottom-buffer-small" runat="server" id="txtNavnR2" />

					<div class="col-sm-12 no-gutter">
						<label for="txtEmailR2">E-mail</label>
	            		<asp:TextBox type="text" placeholder="E-mail" CssClass="form-control bottom-buffer-small" runat="server" id="txtEmailR2" />
					</div>

					<div class="col-sm-12 no-gutter bottom-buffer-medium">
						<label for="txtTlfR2">Telefon</label>
	            		<asp:TextBox type="text" placeholder="Telefon" CssClass="form-control bottom-buffer-small" runat="server" id="txtTlfR2" />
					</div>

    			</div>

    			<!-- Info om bruger -->
		        <div class="col-sm-12">

		        	<!-- Pre noter -->
		            <div class="col-sm-12 no-gutter bottom-buffer-medium">
		            	<div class="col-sm-4 no-gutter right-padding-small ">
		                
			                <label>Stivkrampe vaccine</label>
			                <asp:TextBox type="date" placeholder="dato" CssClass="form-control" runat="server" id="txtStivkrampe" />

			                <div>
			                	<asp:CheckBox CssClass="chekbox" runat="server" id="chkPencilin" Text="&nbsp; Tåler pencilin" />
			                </div>
							<div>
			                	<asp:CheckBox CssClass="chekbox" runat="server" id="chkTilBilled" Text="&nbsp; Tillad billeder" />
			                </div>

		            	</div>
		              
			            <div class="col-sm-8 no-gutter">
							<asp:TextBox placeholder="Allergier" CssClass="form-control txtAreaNoResize" runat="server" id="txtAllergier" TextMode="MultiLine" Rows="5" />
			            </div>
					</div>

		            <div class="col-sm-12 no-gutter bottom-buffer-medium">
		            	<asp:TextBox placeholder="Noter" CssClass="form-control txtAreaNoResize" runat="server" id="txtNoter" TextMode="MultiLine" Rows="8" />
		            </div>

					<div class="btn-group pull-right top top-buffer-small">
						<asp:Button type="button" CssClass="btn btn-default" Text="Ny bruger" runat="server" id="btnNySend" OnClick="IndSendNy" />
					</div>
                    <div class="btn-group pull-right top top-buffer-small">
                        <asp:Button type="button" CssClass="btn btn-default" Text="Updater bruger" runat="server" id="btnUpdateSend" OnClick="IndSendUpdate" />
                    </div>

				</div>

			</div> <!-- /form -->

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