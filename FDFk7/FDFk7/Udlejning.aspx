﻿<%@ Page Language="C#" Inherits="FDFk7.Udlejning" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FDF K7 Frihavn - Udlejning</title>

	<!-- Bootstrap -->
	<link href="./css/bootstrap.min.css" rel="stylesheet">
    <link href="./bootstrap/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <link href="./css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">

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
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Nye reservation" runat="server"  id="btnadminNyeReservation" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="CMS" runat="server" 				id="btnadminCMS" OnClick="GaaTil" />
		        </div>
		    </div>
		</div>
	</div>

	<!-- Side -->
	<div class="container">
		<!-- Example row of columns -->
		<div class="row top-buffer-small">

		    <img src="http://fdftaarnby.com/wp-content/themes/taarnby/images/frontpagephotos/traditioner.png" width="100%" class="bottom-buffer-medium">
    	
		</div>

    	<div class="col-sm-6 top-buffer-small">

		    <h2 class="bottom-buffer-small">Hytten</h2>
		      <p>
		        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod
		        tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,
		        quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo
		        consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse
		        cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non
		        proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		      </p>

		      <table class="tbl-margin top-buffer-large">
		        <tr>
		          <td class="tbl-padding">Pris weekend</td>
		          <td>1.199,00 kr.</td>
		        </tr>
		        <tr>
		          <td class="tbl-padding">Pris Uge</td>
		          <td>3.445,00 kr.</td>
		        </tr>
		      </table>
		</div>

		<div class="col-sm-6 top-buffer-small">
    		<div class="thumbnail">

	        	<div class="caption buf">
	         		<h2>Periode valg</h2>

                    <div action="form" class="top-buffer-small">
	                    <asp:RadioButtonList runat="server" id="rblTidsrum" />
                    </div>

                    <label for="dtp_input2" class="col-md-2 control-label top-buffer-small">Vælg Dato</label>
                    <div class="input-group date form_date top-buffer-small" data-date="" data-date-format="dd MM yyyy" data-link-field="dtp_input2" data-link-format="yyyy-mm-dd">
	                    <input class="form-control" size="16" type="text" value="" readonly>
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                </div>
					<input type="hidden" id="dtp_input2" value="" /><br/>
            	</div>

        	</div>

        	<div role="form">
	        	<div class="pull-right btn-margin">
	        		<asp:Button type="button" CssClass="btn btn-default" Text="Bestil" runat="server" id="btnKurv" OnClick="GaaTil" />
	        	</div>
	        	<!-- Usage as a class -->
	        	<div class="clearfix"></div>
			</div>

		</div>

	</div> <!-- /Side -->

</form>

	<div class="clearfix"></div>

	<div class="footer-color">
		<div class="container">
			<div class="row padding">
				<footer>
					<p>© Company 2014</p>
				</footer>
			</div>
		</div>
	</div>




    
    <script type="text/javascript" src="./jquery-1.8.3.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="./js/bootstrap-datetimepicker.js" charset="UTF-8"></script>
    <script type="text/javascript" src="./js/locales/bootstrap-datetimepicker.da.js" charset="UTF-8"></script>
        <script type="text/javascript">
            $('.form_date').datetimepicker({ formate: 'yyyy-mm-dd hh:ii', language: 'da', weekStart: 1, todayBtn: 1, autoclose: 1, todayHighlight: 1, startView: 2, minView: 2, forceParse: 0 });
    </script>



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