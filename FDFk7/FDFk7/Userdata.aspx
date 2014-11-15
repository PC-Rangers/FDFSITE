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

			<div class="form">
				<div class="col-sm-6 top-buffer-small">

		            <label for="exampleInputEmail1">Navn</label>
		            <input type="text" class="form-control bottom-buffer-small" id="Navn">

		            <label for="exampleInputEmail1">Adresse</label>
		            <input type="text" class="form-control bottom-buffer-small" id="Adresse">

		            <div class="col-sm-4 no-gutter right-padding-small bottom-buffer-medium">
		              <label for="exampleInputEmail1">Post nr.</label>
		              <input type="text" class="form-control bottom-buffer-small" id="Postnr">
		            </div>
		            <div class="col-sm-8 no-gutter bottom-buffer-medium">
		              <label for="exampleInputEmail1">By</label>
		              <input type="text" class="form-control bottom-buffer-small" id="Bynavn">
		            </div>

		            <div class="col-sm-12 no-gutter bottom-buffer-medium">

		              <label for="exampleInputEmail1">E-mail</label>
		              <input type="email" class="form-control bottom-buffer-small" id="Email">

		              <label for="exampleInputEmail1">Telefon</label>
		              <input type="tel" class="form-control bottom-buffer-small" id="Telefon">

		              <label for="exampleInputEmail1">CPR nr. (I en smøre uden -)</label>
		              <input type="text" class="form-control bottom-buffer-small" id="CPR">

		            </div>
		            <div class="col-sm-12 no-gutter bottom-buffer-medium">

		              <label for="exampleInputEmail1">Skole</label>
		              <input type="text" class="form-control bottom-buffer-small" id="Skole">

		              <label for="exampleInputEmail1">Klasse</label>
		              <input type="text" class="form-control bottom-buffer-small" id="Klasse">

		            </div>

				</div>


		        <div class="col-sm-6 top-buffer-small">
                    <div class="well">
					<label for="exampleInputEmail1">Relation</label>
					<select class="form-control bottom-buffer-small">
						<option></option>
						<option>Mor</option>
						<option>Far</option>
						<option>Værge</option>
					</select>

					<label for="exampleInputEmail1">Navn</label>
					<input type="text" class="form-control bottom-buffer-small" id="NavnV1">

					<div class="col-sm-12 no-gutter">
						<label for="exampleInputEmail1">E-mail</label>
						<input type="email" class="form-control bottom-buffer-small" id="EmailV1">
					</div>
					<div class="col-sm-12 no-gutter bottom-buffer-medium">
						<label for="exampleInputEmail1">Telefon</label>
						<input type="tel" class="form-control bottom-buffer-small" id="TelefonV1">
					</div>
                        <div class="clearfix"></div>
                    </div>

					<label for="exampleInputEmail1">Relation</label>
					<select class="form-control bottom-buffer-small">
						<option></option>
						<option>Mor</option>
						<option>Far</option>
						<option>Værge</option>
					</select>

					<label for="exampleInputEmail1">Navn</label>
					<input type=" text" class="form-control bottom-buffer-small" id="NavnV2">

					<div class="col-sm-12 no-gutter">
						<label for="exampleInputEmail1">E-mail</label>
						<input type="email" class="form-control bottom-buffer-small" id="EmailV2">
					</div>
					<div class="col-sm-12 no-gutter bottom-buffer-medium">
						<label for="exampleInputEmail1">Telefon</label>
						<input type="tel" class="form-control bottom-buffer-small" id="TelefonV2">
					</div>

    			</div>


		        <div class="col-sm-12">

		            <div class="col-sm-12 no-gutter bottom-buffer-medium">
		            	<div class="col-sm-4 no-gutter right-padding-small ">
		                
			                <label>Stivkrampe vaccine</label>
			                <input type="date" class="form-control">
			                

			                <div class="checkbox">
			                	<label>
			                    	<input type="checkbox" id="Penicilin" value="option1">
			                    	Tåler pencilin
			                	</label>
			                </div>
			                <div class="checkbox">
			                	<label>
			                    	<input type="checkbox" id="TilladBillede" value="option1">
			                    	Tillad billeder
			                	</label>
			                </div>
		            	</div>
		              
			            <div class="col-sm-8 no-gutter">
			                <textarea class="form-control txtAreaNoResize" id="Allergi" rows="5" placeholder="Allergier" ></textarea>
			            </div>
					</div>



		            <div class="col-sm-12 no-gutter bottom-buffer-medium">
		            	<textarea class="form-control txtAreaNoResize top-buffer-small" id="Note" rows="8" placeholder="Noter"></textarea>
		            </div>

					<div class="btn-group pull-right top top-buffer-small">
						<asp:Button type="button" CssClass="btn btn-default" Text="Ny bruger" runat="server" id="btnNySend" OnClick="IndSendNy" />
					</div>
                    <<div class="btn-group pull-right top top-buffer-small">
                        <asp:Button type="button" CssClass="btn btn-default" Text="Updater bruger" runat="server" id="btnUpdateSend" OnClick="IndSendUpdate" />
                    </div>

				</div>

			</div> <!-- /form -->

    	</div>

	</div> <!-- /container -->

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