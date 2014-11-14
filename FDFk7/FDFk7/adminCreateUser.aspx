﻿<%@ Page Language="C#" Inherits="FDFk7.adminCreateUser" %>
<!DOCTYPE html>
<html>
<head runat="server">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>FDF K7 Frihavn - Medlem</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom -->
    <link href="css/app.css" rel="stylesheet">
</head>

<body>
<form id="body" runat="server">

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
	        </div>
	    </div>
	  </div>
	</div>

	<!-- Side indhold -->
	<div class="container">
    	<div class="row top-buffer-small">

				<div class="col-sm-6 top-buffer-small">

		            <label for="exampleInputEmail1">Brugernavn</label>
		            <input type="text" class="form-control bottom-buffer-small" id="navn">

		            <label for="exampleInputEmail1">Midlertidig adgangskode</label>
		            <input type="text" class="form-control bottom-buffer-small" id="kode">

		            <input type="hidden" id="salt" value="date"> <!-- skal laves i koden og ikke sendes med her fra. -->

		            <label for="exampleInputEmail1">Email adresse </label>
		            <input type="text" class="form-control bottom-buffer-small" id="mail"> 

		            <label for="exampleInputEmail1">Bruger gruppe</label>
		            <input type="text" class="form-control bottom-buffer-small" id="gruppe"> <!-- skal være en drop down menu. -->

		            <label for="exampleInputEmail1">Rettigheds niveau</label>
		            <input type="text" class="form-control bottom-buffer-small" id="rettighed"> <!-- skal være en drop down menu. -->






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