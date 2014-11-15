<%@ Page Language="C#" Inherits="FDFk7.Kontakt" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>FDF K7 Frihavn - Kontakt</title>

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

	            	<asp:Button type="button" CssClass="btn btn-default" Text="Profil" runat="server" 	id="btnProfil" OnClick="GaaTil" />

	            	<asp:Button type="button" CssClass="btn btn-default" Text="Opret besked" runat="server" 	id="btnOpretBesked" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Nyt medlem" runat="server" 		id="btnNytMedlem" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Ny leder" runat="server" 		id="btnNyLeder" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Brugere" runat="server" 			id="btnBrugere" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Hytte" runat="server" 			id="btnHytte" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="Nye resavationer" runat="server" id="btnNyeResavationer" OnClick="GaaTil" />
	            	<asp:Button type="button" CssClass="btn btn-default" Text="CMS" runat="server" 				id="btnCMS" OnClick="GaaTil" />
		        </div>
		        </div>
		    </div>
		</div>
	</div>

    <!-- Side indhold -->
    <div class="container">
        <div class="row top-buffer-small">
         

			<div class="padding bottom-buffer-small">
				<div id="map-container" class="col-md-12">
				 <!-- Skal være i slutningen af dokumentet -->
				    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
				    <script>  
				 
				      function init_map() {
				          var var_LocLokalerne = new google.maps.LatLng(55.6980784, 12.5840112);
				          var var_LocTranehuset = new google.maps.LatLng(55.7526963, 12.3809071);
				          var var_LocKirken = new google.maps.LatLng(55.6989846, 12.5887619);

				        var var_mapoptions = {
				            center: new google.maps.LatLng(55.73, 12.50),
				          zoom: 10
				        };
				 
					    var var_marker = new google.maps.Marker({
					        position: var_LocLokalerne,
					      map: var_map,
					      title: "Lokalerne"
					    });
					    var var_marker2 = new google.maps.Marker({
					        position: var_LocTranehuset,
					        map: var_map,
					        title: "Tranehuset"
					    });
					    var var_marker3 = new google.maps.Marker({
					        position: var_LocKirken,
					        map: var_map,
					        title: "Frihavns Kirken"
					    });
					 
				        var var_map = new google.maps.Map(document.getElementById("map-container"),var_mapoptions);
					 
				        var_marker.setMap(var_map);
				        var_marker2.setMap(var_map);
				        var_marker3.setMap(var_map);

				        var infoString = '<div id="content">' +
                                        '</div>' +
                                        '<h4 id=>Lokalerne</h4>' +
                                        '<div id="bodyContent">' +
                                        '<p>Willemoesgade 42</p>' +
                                        '<p>2100 København Ø</p>' +
                                        '<p></p>' +
                                        '</div>' +
                                        '</div>';

				        var infoString2 = '<div id="content2">' +
                                      '</div>' +
                                      '<h4 id=>Tranehuset</h4>' +
                                      '<div id="bodyContent">' +
                                      '<p>Tranemosevej 39-43</p>' +
                                      '<p>2750 Ballerup</p>' +
                                      '</div>' +
                                      '</div>';
				        var infoString3 = '<div id="content3">' +
                                            '</div>' +
                                            '<h4 id=>Frihavns Kirken</h4>' +
                                            '<div id="bodyContent">' +
                                            '<p>Willemoesgade 68,</p>' +
                                            '<p>2100 København Ø</p>' +
                                            '</div>' +
                                            '</div>';

				        var infowindow = new google.maps.InfoWindow({ content: '<div style="width:300px; height:1px"></div>' + infoString});

				        var infowindow2 = new google.maps.InfoWindow({ content: '<div style="width:300px; height:1px"></div>' + infoString2});

				        var infowindow3 = new google.maps.InfoWindow({ content: '<div style="width:300px; height:1px"></div>' + infoString3});
                            
				        google.maps.event.addListener(var_marker, 'click', function ()
				        {
				            if (infowindow2.open) {
				                infowindow2.close();
				            }
				            if (infowindow3.open) {
				                infowindow3.close();
				            }
				            infowindow.open(var_map, var_marker);
				        });
				        google.maps.event.addListener(var_marker2, 'click', function ()
				        {
				            if (infowindow.open) {
				                infowindow.close();
				            }
				            if (infowindow3.open) {
				                infowindow3.close();
				            }
				            infowindow2.open(var_map, var_marker2);
				        });
				        google.maps.event.addListener(var_marker3, 'click', function ()
				        {
				            if (infowindow.open) {
				                infowindow.close();
				            }
				            if (infowindow2.open) {
				                infowindow2.close();
				            }
				            infowindow3.open(var_map, var_marker3);
				        });
				      }
				      google.maps.event.addDomListener(window, 'load', init_map);
				 
				    </script>
				</div>
		    </div>

	        <div class="col-sm-6 top-buffer-small">

				<h2 class="bottom-buffer-small">FDF K7 Frihavn</h2>

				<table class="tbl-margin">
				  <tr>
				    <td class="tbl-padding"><strong><i>Titel</i></strong></td>
				    <td><strong>Bølle Brian</strong></td>
				  </tr>
				  <tr>
				    <td class="tbl-padding">Telefon</td>
				    <td>11 22 33 44</td>
				  </tr>
				    <tr>
				    <td class="tbl-padding">E-mail</td>
				    <td><a href="mailto:#">alias@domain.tld</a></td>
				  </tr>
				</table>

				<table class="tbl-margin">
				  <tr>
				    <td class="tbl-padding"><strong><i>Titel</i></strong></td>
				    <td><strong>Bølle Brian</strong></td>
				  </tr>
				  <tr>
				    <td class="tbl-padding">Telefon</td>
				    <td>11 22 33 44</td>
				  </tr>
				    <tr>
				    <td class="tbl-padding">E-mail</td>
				    <td><a href="mailto:#">alias@domain.tld</a></td>
				  </tr>
				</table>

				<table class="tbl-margin">
				  <tr>
				    <td class="tbl-padding"><strong><i>Titel</i></strong></td>
				    <td><strong>Bølle Brian</strong></td>
				  </tr>
				  <tr>
				    <td class="tbl-padding">Telefon</td>
				    <td>11 22 33 44</td>
				  </tr>
				    <tr>
				    <td class="tbl-padding">E-mail</td>
				    <td><a href="mailto:#">alias@domain.tld</a></td>
				  </tr>
				</table>

				<table class="tbl-margin">
				  <tr>
				    <td class="tbl-padding"><strong><i>Titel</i></strong></td>
				    <td><strong>Bølle Brian</strong></td>
				  </tr>
				  <tr>
				    <td class="tbl-padding">Telefon</td>
				    <td>11 22 33 44</td>
				  </tr>
				    <tr>
				    <td class="tbl-padding">E-mail</td>
				    <td><a href="mailto:#">alias@domain.tld</a></td>
				  </tr>
				</table>

				<table class="tbl-margin">
				  <tr>
				    <td class="tbl-padding"><strong><i>Titel</i></strong></td>
				    <td><strong>Bølle Brian</strong></td>
				  </tr>
				  <tr>
				    <td class="tbl-padding">Telefon</td>
				    <td>11 22 33 44</td>
				  </tr>
				    <tr>
				    <td class="tbl-padding">E-mail</td>
				    <td><a href="mailto:#">alias@domain.tld</a></td>
				  </tr>
				</table>
        	
        	</div>


	        <div class="col-sm-6 top-buffer-small">
	        	<div class="thumbnail">
	        
	          		<div class="caption">
						<h2>Kontakt</h2>
						<div role="form">
						  	<div class="form-group top-buffer-small">
						    	<label for="exampleInputEmail1">Email adresse</label>
						    	<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Indtast din email her.">
							</div>
							<div class="form-group">
							    <label for="exampleInputPassword1">Emne</label>
						    	<input type="text" class="form-control" id="exampleInputPassword1" placeholder="Hvad drejer din henvendelse sig om?">
						  	</div>

								<textarea class="form-control" rows="6" placeholder="Din mor!!!!!"></textarea>

							<div class="pull-right btn-margin"><button type="submit" class="btn btn-default">Send besked</button></div>
							<!-- Usage as a class -->
							<div class="clearfix"></div>
						</div>
        			</div>

        		</div>
    		</div>
        
        </div> <!-- row top-buffer-small -->
    </div> <!-- container -->

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
  
  </form>
</body>
</html>