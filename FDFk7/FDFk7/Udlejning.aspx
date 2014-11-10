<%@ Page Language="C#" Inherits="FDFk7.Udlejning" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FDF K7 Frihavn - Udlejning</title>

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
	      <a class="navbar-brand" href="#">FDFK7</a>
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
            	<asp:Button type="button" CssClass="btn btn-default" Text="Forside" runat="server" id="btnForside" OnClick="GotoForside" />
            	<asp:Button type="button" CssClass="btn btn-default" Text="Udlejning" runat="server" id="btnUdlejning" OnClick="GotoUdlejning" />
            	<asp:Button type="button" CssClass="btn btn-default" Text="Om Os" runat="server" id="btnOmOs" OnClick="GotoOmOs" />
            	<asp:Button type="button" CssClass="btn btn-default" Text="Kontakt" runat="server" id="btnKontakt" OnClick="GotoKontakt" />
	        </div>
	    </div>
	  </div>
	</div>

	<div class="container">
		<!-- Example row of columns -->
		<div class="row top-buffer-small">

		    
			
		</div> <!-- /row top-buffer-small -->
		</div> <!-- /container -->
		<hr>

		<footer>
			<p>© Company 2014</p>
		</footer>
	


	<!-- Bootstrap core JavaScript
	================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>

	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>

	<script src="../../dist/js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>

</form>
</body>
</html>