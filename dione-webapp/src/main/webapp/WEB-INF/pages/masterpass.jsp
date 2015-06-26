<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<html>
 <head>
    <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
    <title>Masterpass</title>
    <script src="${pageContext.request.contextPath}/js/jquery-1.11.1.min.js"></script>
	<script language="javascript" src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/js/custom.js"></script>
    <script language="javascript" src="${pageContext.request.contextPath}/js/offers.js"></script>
    <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  	<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
	
    <!-- Bootstrap -->
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"><!-- Custom Css -->
	<%-- <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet"> --%>
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
	<link href="${pageContext.request.contextPath}/img/favicon.png" rel="icon" type="image/png"><!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  </head>
  
  
  <body>
	<!-- Navigation -->
    <nav id="navigation" class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"><img src="${pageContext.request.contextPath}/img/logo.png" alt="masterpass" width="153" height="22"></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul id="nav" class="nav navbar-nav navbar-right">
				
                    <li class="hidden"><a href="#page-top"></a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal"><button type="button" class="btn btn-success" data-dismiss="modal" data-toggle="modal">Sign In</button></a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal1"><button type="button" class="btn btn-default">Sign Up</button><a></li>
                    <!--<li><a href="#" data-toggle="modal" data-target="#myModal">Sign In</a></li>
            		<li><a href="#" data-toggle="modal" data-target="#myModal1">Sign Up</a></li>-->
                </ul>
            </div>
					
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
    <!-- Header -->

    <header id="header">
        <div class="container">
            <div class="intro-text">
				
            </div>
        </div>
    </header>

	
	<footer>
		<div class="container bottom">
        	<p class="pull-left">
				<a href="#" target="_blank" title="Terms, Privacy, Cookies">Copyright</a>
            </p>
            <p class="pull-right">
            	<a href="#" target="_blank" title="Terms, Privacy, Cookies">All rights reserved</a> |
                <a href="#" target="_blank" title="Terms, Privacy, Cookies">Terms & Conditions</a> |
                <a href="#" target="_blank" title="Terms, Privacy, Cookies">Privacy policy</a>
            </p>
		</div>
	</footer>
	
	<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog" role="document">
    <div class="modal-content" style="width: 700px; top: 100;"">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		<img src="${pageContext.request.contextPath}/img/logo1.png">
        <!--<h4 class="modal-title" id="myModalLabel">Login</h4>-->
      </div>
	  
	  <div style="
    position: relative;    display: block;    bottom: 0;    left: 0;    
    margin: 0 25px;    height: auto;    background: url(https://static.masterpass.com/lightbox/version48/Switch/assets/img/header_border.png) bottom left repeat-x;    
    padding-bottom: 10px; padding-top: 10px;">Sign in to your MasterPass<br></div>


	<div style="
    margin: 0 25px;
    padding-top: 10px;">Simply enter your email address or mobile number and password to sign in.</div>
      <div class="modal-body">
        <div class="row">
				
		<div class="col-lg-4">
				
				<div style="
    background-image: url(${pageContext.request.contextPath}/img/wallet_lg_bg.png);
    height: 133px;
    width: 196px;
            "> <div style="
    background-image: url(${pageContext.request.contextPath}/img/logo1.png);
    width: 153px;
    height: 22px;
    position: relative;
    left: 20px;
    top: 50px;
"></div></div>
			</div>
			<div class="col-lg-8"  style="position: relative; top: 10px;">
				<form class="form-horizontal">
<fieldset>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-2 control-label" for="textinput">Email</label>  
  <div class="col-md-8">
  <input id="textinput" name="textinput" type="text" placeholder="Please Enter Your Email" class="form-control input-md" required="">
  <!--<span class="help-block">Please Enter Your User Name</span>  -->
  </div>
</div>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-2 control-label" for="textinput">Password</label>  
  <div class="col-md-8">
  <input id="textinput" name="textinput" type="password" placeholder="Please Enter Your Password" class="form-control input-md" required="">
  <!--<span class="help-block"></span>-->
  </div>
</div>
</fieldset>
</form>
			</div>
			
		</div>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-success" data-dismiss="modal" data-toggle="modal" data-target="#myModal1">Login</button>
        <button type="button" class="btn btn-default">Cancel</button>
      </div>
    </div>
  
  	<div class="MasterPass-ribbon" style="position: relative;top: 100;">
		<img class="ribbon-background" src="https://static.masterpass.com/lightbox/version50/Switch/assets/img/lightbox_footer.png">
		<div class="notification-overlay"></div>
		<div class="dialog-overlay"></div>

		<div class="ribbon-container">
			<div class="MasterPass-logo">
				<img src="https://static.masterpass.com/lightbox/version50/Switch/assets/img/MP_for_footer.png" alt="MasterPass logo">
				<img id="MasterPass_lock" class="MasterPass-lock" src="https://static.masterpass.com/lightbox/version50/Switch/assets/img/icon-ribbon-lock2.png" alt="">
			</div>

			<div class="ribbon-tools">
				<a href="#" class="command" id="shopping-cart" style="display: none;">
					<img src="https://static.masterpass.com/lightbox/version50/Switch/assets/img/cart.png" alt="Cart">
				</a>
				<a href="#" class="command" id="change-wallet" data-command="beginFlow" data-param="checkout" style="display: none;">
					<img src="https://static.masterpass.com/lightbox/version50/Switch/assets/img/ChangeWallet.png" alt="Change Wallet">
				</a>
			</div>
		</div>
  
  </div>
</div>
</div>



<!-- Modal -->
<div class="modal fade" id="myModal1" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content main-screen" Style="width:900px"">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <img src="${pageContext.request.contextPath}/img/logo1.png">
      </div>
      <div class="modal-body">
        <div class="row">
			<div class="col-md-2 leftnav" style="height:800px">
				<div><i class="fa fa-home iconOrange fa-3x" style="float: left; color:#FB9B1E" ></i><h5 class="navheader" style="position: relative; left: 10px; top: 15px; background-color: transparent; font-family: initial; font-size: medium;">HOME</h5>
				<br> <br></div>
				<div>
					<h5 class="navheader" style="left: 30px;font-size: medium; padding-left: 20px;">MY ACCOUNT</h5>
					  <div>
						<ul>
						  <li><i class="fa fa-user fa-2x" style="float: left; color:#FB9B1E"></i><p style="position: relative; left: 10px; top: 5px; background-color: transparent; font-family: initial; font-size: medium;">PROFILE</p></li>
						  <li><i class="fa fa-cog fa-2x" style="float: left; color:#FB9B1E"></i><p style="position: relative; left: 10px; top: 5px; background-color: transparent; font-family: initial; font-size: medium;">SETTINGS</p></li>
						  <li><i class="fa fa-share-alt fa-2x" style="float: left; color:#FB9B1E"></i><p style="position: relative; left: 10px; top: 5px; background-color: transparent; font-family: initial; font-size: medium;">CONNECTIONS</p></li>
						</ul>
					  </div>
					<h5 class="navheader" style="left: 30px;font-size: medium; padding-left: 20px;">MY WALLET</h5>
					  <div>
						<ul>
						  <li><i class="fa fa-credit-card fa-2x" style="float: left; color:#FB9B1E"></i><p style="position: relative; left: 10px; top: -5px; background-color: transparent; font-family: initial; font-size: medium;">PAYMENT METHODS</p></li>
						  <li><i class="fa fa-location-arrow fa-2x" style="float: left; color:#FB9B1E"></i><p style="position: relative; left: 10px; top: 10px; background-color: transparent; font-family: initial; font-size: medium;">ADDRESS</p></li>
						  <li><i class="fa fa-shopping-cart fa-2x" style="float: left; color:#FB9B1E"></i><a href="#" class="programms" style="position: relative; left: 10px; top: -5px; background-color: transparent; font-family: initial; font-size: x-small;" onclick="return showMap();">LOYALTY PROGRAM</a></li>
						  <li><i class="fa fa-cart-plus fa-2x" style="float: left; color:#FB9B1E"></i><a href="#" class="loyalty" style="position: relative; left: 10px; top: -5px; background-color: transparent; font-family: initial; font-size: x-small;">LOYALTY OFFERS</a></li>
						  	<ul>
						  		<li><i class="fa fa-globe fa-1x" style="float: left; color:#FB9B1E"></i><a href="#" class="programms" style="position: relative; left: 10px; top: -10px; background-color: transparent; font-family: initial; font-size: small;" onclick="return showMap();">Near By</a></li>
						  	</ul>
						</ul>	
					  </div>
					  <div></div>
					<h5 class="navheader" style="left: 30px;font-size: medium; padding-left: 20px;">WHATS NEW</h5>
					<br>	
					<h5 class="navheader" style="left: 30px;font-size: medium; padding-left: 20px;">LEGAL</h5>
						<div>
							<ul>
							  <li><h6 style="position: relative; left: 10px; top: 10px; background-color: transparent; font-family: initial; font-size: large;">Privacy</h6></li>
							  <li><h6 style="position: relative; left: 10px; top: 10px; background-color: transparent; font-family: initial; font-size: large;">Terms of Use</h6></li>
							</ul>
						 </div>
						<br>
					<div><i class="fa fa-sign-out fa-2x" style="float: left; color:#FB9B1E"></i><h5 class="navheader" style="position: relative; left: 10px; top: 5px; background-color: transparent; font-family: initial; font-size: medium;">SIGN OUT</h5></div>
				</div>
				<!-- <h5><a href="#" class="navheader">Home</a></h5>
				<h5><a href="#" class="navheader">My Wallet</a></h5>
				<ul class="navitems" style="display:none">
				  <li><a href="#">Payment Methods</a></li>
				  <li><a href="#">Addresses</a></li>
				  <li><a href="#" class="programms">Loyality Programms</a></li>
				  <li><a href="#" class="loyalty">Loyality Offers</a></li>
				</ul -->
			</div>
		<div class="col-md-9" style="margin-left: 10px; height:800px; overflow:scroll; overflow-x:none">
			<div id="default">
				<div >
				<h4 style="
    position: relative;    display: block;    bottom: 0;    
    left: -15px;    
    width: 700px;    margin: 0 25px;    height: auto;    background: url(https://static.masterpass.com/lightbox/version48/Switch/assets/img/header_border.png) bottom left repeat-x;    
    padding-bottom: 10px; padding-top: 10px;">Welcome to your wallet</h4>
		<br>
	
				<h6 style="position: relative;    display: block;    bottom: 0;  left: -15px;    
    width: 700px;    margin: 0 25px;    height: auto;    background: url(https://static.masterpass.com/lightbox/version48/Switch/assets/img/header_border.png) bottom left repeat-x;    
    padding-bottom: 10px; padding-top: 10px;">Manage your payment methods, address list and much more.</h6>
				<br>
				<br>
				<div class="row">
					<div class="col-lg-4">
						<i class="fa fa-credit-card fa-5x" style="padding-left: 120px; color: #FB9B1E;"></i>
					</div>
					
					<div class="col-lg-5">
						<h6 style="top: 10px; position: relative; font-size: large; color:black">Payments methods</h6>
						<h6 style="top: 10px; position: relative;" class="fa fa-plus-circle">Add</h6>
						<h6 style="left:10px; top: 10px; position: relative;" class="fa fa-list-ul">View All</h6>
					</div>
					<br>
					<h6 style="position: relative;    display: block;    bottom: 0;  left: -15px;    
    width: 700px;    margin: 0 25px;    height: auto;    background: url(https://static.masterpass.com/lightbox/version48/Switch/assets/img/header_border.png) bottom left repeat-x;    
    padding-bottom: 10px; padding-top: 10px; top:70px"></h6>
				</div>
				
				<br>
				<br>
				<br>
				<br>
				<div class="row">
					<div class="col-lg-4">
						<i class="fa fa-envelope-o fa-5x" style="padding-left: 120px; color: #FB9B1E;"></i>
					</div>
					
					<div class="col-lg-5">
						<h6 style="top: 10px; position: relative; font-size: large; color:black">Address</h6>
						<h6 style="top: 10px; position: relative;" class="fa fa-plus-circle">Add</h6>
						<h6 style="left:10px; top: 10px; position: relative;" class="fa fa-list-ul">View All</h6>
					</div>
					<br>

					<h6 style="position: relative;    display: block;    bottom: 0;  left: -15px;    
    width: 700px;    margin: 0 25px;    height: auto;    background: url(https://static.masterpass.com/lightbox/version48/Switch/assets/img/header_border.png) bottom left repeat-x;    
    padding-bottom: 10px; padding-top: 10px; top:70px"></h6>
				</div>
				
				<br>
				<br>
				<br>
				<br>
				<div class="row">
					<div class="col-lg-4">
						<i class="fa fa-shopping-cart fa-5x" style="padding-left: 120px; color: #FB9B1E;"></i>
					</div>
					
					<div class="col-lg-5">
						<h6 style="top: 10px; position: relative; font-size: large; color:black">Loyalty Program</h6>
						<h6 style="top: 10px; position: relative;" class="fa fa-plus-circle">Add</h6>
						<h6 style="left:10px; top: 10px; position: relative;" class="fa fa-list-ul">View All</h6>
					</div>
					<br>
					<h6 style="position: relative;    display: block;    bottom: 0;  left: -15px;    
    width: 700px;    margin: 0 25px;    height: auto;    background: url(https://static.masterpass.com/lightbox/version48/Switch/assets/img/header_border.png) bottom left repeat-x;    
    padding-bottom: 10px; padding-top: 10px; top:70px"></h6>
				</div>
				<br>
				<br>
				<div class="row">
					<h4 class="col-lg-9" style="top:70px">We've added something new!</h4>
				
				</div>
				
				</div>
			</div>
			
			<div id="loyalty" style="display:none">
			</div>
			<div id="programms" style="display:none">
				<div id="map_wrapper">
					<div id="map_canvas" class="mapping"></div>
				</div>
				<!--<iframe width="780" height="700" frameborder="10px" style="border:10px"  src="https://www.google.com/maps/embed/v1/place?key=AIzaSyATwIeyRwOg89rJqkMCbQB4uim8hzm-D0c&q=1035+Aster+Ave+Sunnyvale+CA" allowfullscreen>
				</iframe>-->
			</div>
		</div>
		<!-- <div class="col-md-9" style="margin-left:10px">
			
		</div> -->
		</div>
      </div>
    </div>
  </div>
</div>

	<script type="text/javascript">
	var data_path = "${pageContext.request.contextPath}/resources/json/searchOffers_response.json";
	$(function() {
		var icons = {
		  header: "ui-icon-plusthick",
		  activeHeader: "ui-icon-minusthick"
		};
		$( "#accordion" ).accordion({
		  icons: icons
		  //background-color: black
		});
	  });
	
    $(document).ready(function() {
		$(".loyalty").click(function(){
			loadOffersJSON(data_path);
			$("#loyalty").slideDown();
			$("#programms").hide();
			$("#default").hide();
		});
		$(".navitems").hide();
		$(".navheader").click(function(){
			$(".navitems").slideDown();
		});
		
		var winheight = $(window).height();
		$("#header").height(winheight)
		
		
	});
    
    $(document).ready(function() {
		
		$(".navitems").hide();
		$(".navheader").click(function(){
			$(".navitems").slideDown();
		});
		
		var winheight = $(window).height();
		$("#header").height(winheight)
		
		
	});
	
	function showMap()
	{
		    //loadOffersJSON();
			$("#programms").slideDown();
			$("#loyalty").hide();
			$("#default").hide();
			initialize();
	}
	
    
    jQuery(function($) {
        // Asynchronously Load the map API 
        var script = document.createElement('script');
        script.src = "http://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false&callback=initialize";
        document.body.appendChild(script);
    	});
    
    function initialize() {
        var map;
        var bounds = new google.maps.LatLngBounds();
    	
        var mapOptions = {
            mapTypeId: 'roadmap'
        };
    	var markers =[];
    	var infoWindowContent =[];
//    	var longitude;
    	$.ajax({
       		method: "GET",
      		url: "personalizedoffer",
    	})
    	.done(function(data){
		//$.getJSON( data_path, function( data ) {
				console.log(data);
    			//var offerData = data.BrowseOffersResponse.Return.OfferData;
    			var offerData = data.offerData;

    			for(var i = 0; i < offerData.length; i++){
    				var entry = offerData[i].sourceGeos.geo;
    				markers.push([entry.country.displayText,entry.latitude,entry.longitude]);
    				imageUrl = 'http://placehold.it/350x260';
    				var imageentry = offerData[i].offerMedia.offerImage.entry;
    				for(var j = 0; j < imageentry.length;j++){
    					if(imageentry[j].key == 'MERCHANT_LOGO'){
    						imageUrl = imageentry[j].value.item.imageUrl;
    					}
    				}
    				
    				var divHtml = '<div class="col-sm-3 padding"><div class="col-item" Style="width:90px; height:100px">';
    				divHtml += '<div class="photo"><img src="' + imageUrl  + '" style="display:block;height:auto;max-width:90px" alt="a" /></div>';
    				divHtml += '<div class="info"><div class="row"><div class="price col-md-10"><div style="height: 60px;"><h5 style="color: wheat; font-size: small;">';
    				divHtml += offerData[i].headline.substr(0,20);
    				divHtml += '</h5></div><h5 class="price-text-color" style="font-size: smaller;">' + offerData[i].tagCategory + '</h5>';
    				divHtml += '</div></div><div class="separator clear-left">' +
    	                            '<p class="btn-details">' +
    	                                '<i class="fa fa-list"></i><a href="http://www.jquery2dotnet.com" class="hidden-sm" style="font-size: xx-small;">More details</a></p>'+
    	                        '</div>'+
    	                        '<div class="clearfix">' +
    	                        '</div>' +
    	                    '</div>' +
    	                '</div>' +
    				'</div>';
    				infoWindowContent.push([divHtml]) ;
    			}
    			
    			// Display a map on the page
        map = new google.maps.Map(document.getElementById("map_canvas"), mapOptions);
        map.setTilt(45);
            
        // Multiple Markers
        
                         
        // Info Window Content
    	//copy Text from Note pad++
            
        // Display multiple markers on a map
        var infoWindow = new google.maps.InfoWindow(), marker, i;
        
        // Loop through our array of markers & place each one on the map  
        for( i = 0; i < markers.length; i++ ) {
            var position = new google.maps.LatLng(markers[i][1], markers[i][2]);
            bounds.extend(position);
            marker = new google.maps.Marker({
                position: position,
                map: map,
                title: markers[i][0]
            });
            
            // Allow each marker to have an info window    
            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                   infoWindow.setContent(infoWindowContent[i][0]);
                   infoWindow.open(map, marker);
    			   
                }
            })(marker, i));

            // Automatically center the map fitting all markers on the screen
            map.fitBounds(bounds);
        }

        // Override our map zoom level once our fitBounds function runs (Make sure it only runs once)
        var boundsListener = google.maps.event.addListener((map), 'bounds_changed', function(event) {
            this.setZoom(7);
			this.setCenter(new google.maps.LatLng(37.5072222,-122.2668));
            google.maps.event.removeListener(boundsListener);
    	});                
        
       });
        
    }
</script>
</body>
</html>