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
          <a class="navbar-brand" href="#">FDFK7</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <div class="navbar-form navbar-right" role="form">
            <div class="form-group">
              <input type="text" placeholder="Brugernavn" class="form-control">
            </div>
            <div class="form-group">
              <input type="password" placeholder="Adgangskode" class="form-control">
            </div>
            <button type="submit" class="btn btn-success">Log ind</button>
          </div>
        </div><!--/.navbar-collapse -->
      </div>
    </nav>

    <!-- Nav menu -->
    <div class="container">
      <div class="row top-buffer-large right-buffer-small">
        <div class="navbar-right">
            <div class="btn-group pull-right">
              <button type="button" class="btn btn-default">Forside</button>
              <button type="button" class="btn btn-default">Udlejning</button>
              <button type="button" class="btn btn-default">Om os</button>
              <button type="button" class="btn btn-default">Kontakt</button>
            </div>
        </div>
      </div>
    </div>

    <!-- Side indhold -->
    <div class="container">
        <div class="row top-buffer-small">
         

			<div class="padding bottom-buffer-small">
				<div id="map-container" class="col-md-12"></div>
			</div>

			<div class="container">
			 <!-- Skal være i slutningen af dokumentet -->
			    <script src="http://maps.google.com/maps/api/js?sensor=false"></script>
			    <script>  
			 
			      function init_map() {
			    	var var_location = new google.maps.LatLng(55.732028, 12.343371);
			 
			        var var_mapoptions = {
			          center: var_location,
			          zoom: 14
			        };
			 
				    var var_marker = new google.maps.Marker({
				      position: var_location,
				      map: var_map,
				      title:"Venice"});
				 
			        var var_map = new google.maps.Map(document.getElementById("map-container"),
			            var_mapoptions);
				 
				    var_marker.setMap(var_map); 
				 
			      }
			 
			      google.maps.event.addDomListener(window, 'load', init_map);
			 
			    </script>

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