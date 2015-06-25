<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" />
<title>Masterpass</title>
<script src="../js/jquery-1.11.1.min.js"></script>
<script language="javascript" src="../js/bootstrap.min.js"></script>
<script language="javascript" src="../js/custom.js"></script>
<script language="javascript" src="../js/offers.js"></script>


<!-- Bootstrap -->
<link href="../css/bootstrap.min.css" rel="stylesheet">
<!-- Custom Css -->
<!-- <link href="../css/font-awesome.min.css" rel="stylesheet">
 -->
<link href="../css/main.css" rel="stylesheet">
<!-- <link href="../css/MasterPass.switch.css" rel="stylesheet"> -->
<link href="../img/favicon.png" rel="icon" type="image/png">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
</head>


<body>
	<!-- Navigation -->
	<nav id="navigation" class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header page-scroll">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top"><img
					src="../img/logo.png" alt="masterpass" width="153" height="22"></a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul id="nav" class="nav navbar-nav navbar-right">

					<li class="hidden"><a href="#page-top"></a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal"><button
								type="button" class="btn btn-success" data-dismiss="modal"
								data-toggle="modal">Sign In</button></a></li>
					<li><a href="#" data-toggle="modal" data-target="#myModal1"><button
								type="button" class="btn btn-default">Sign Up</button> <a></li>
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
			<div class="intro-text"></div>
		</div>
	</header>


	<footer>
		<div class="container bottom">
			<p class="pull-left">
				<a href="#" target="_blank" title="Terms, Privacy, Cookies">Copyright</a>
			</p>
			<p class="pull-right">
				<a href="#" target="_blank" title="Terms, Privacy, Cookies">All
					rights reserved</a> | <a href="#" target="_blank"
					title="Terms, Privacy, Cookies">Terms & Conditions</a> | <a
					href="#" target="_blank" title="Terms, Privacy, Cookies">Privacy
					policy</a>
			</p>
		</div>
	</footer>

	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<img src="../img/logo1.png">
					<!--<h4 class="modal-title" id="myModalLabel">Login</h4>-->
				</div>

				<div
					style="position: relative; display: block; bottom: 0; left: 0; width: 900px; margin: 0 25px; height: auto; background: url(https://static.masterpass.com/lightbox/version48/Switch/assets/img/header_border.png) bottom left repeat-x; padding-bottom: 10px; padding-top: 10px;">
					Sign in to your MasterPass<br>
				</div>


				<div style="margin: 0 25px; padding-top: 10px;">Simply enter
					your email address or mobile number and password to sign in.</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-lg-2"></div>
						<div class="col-lg-3">
							Instructions
							<div
								style="background-image: url(../img/wallet_lg_bg.png); height: 133px; width: 196px;">
								<div
									style="background-image: url(../img/logo1.png); width: 153px; height: 22px; position: relative; left: 20px; top: 50px;"></div>
							</div>
						</div>
						<div class="col-lg-6">
							<form class="form-horizontal">
								<fieldset>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-2 control-label" for="textinput">Email</label>
										<div class="col-md-8">
											<input id="textinput" name="textinput" type="text"
												placeholder="Please Enter Your Email"
												class="form-control input-md" required="">
											<!--<span class="help-block">Please Enter Your User Name</span>  -->
										</div>
									</div>

									<!-- Text input-->
									<div class="form-group">
										<label class="col-md-2 control-label" for="textinput">Password</label>
										<div class="col-md-8">
											<input id="textinput" name="textinput" type="text"
												placeholder="Please Enter Your Password"
												class="form-control input-md" required="">
											<!--<span class="help-block"></span>-->
										</div>
									</div>
								</fieldset>
							</form>
						</div>

					</div>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-success" data-dismiss="modal"
						data-toggle="modal" data-target="#myModal1">Login</button>
					<button type="button" class="btn btn-default">Cancel</button>
				</div>		
			</div>
		</div>
	</div>



	<!-- Modal -->
	<div class="modal fade" id="myModal1" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog modal-lg" role="document">
			<div class="modal-content main-screen">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span>	</button>
					<img src="../img/logo1.png">
				</div>
				<div class="modal-body">
					<div class="row">
						<div class="col-md-2 leftnav">
							<h5>
								<a href="#" class="navheader">My Wallet</a>
							</h5>
							<ul class="navitems" style="display: none">
								<li><a href="#">Payment Methods</a></li>
								<li><a href="#">Addresses</a></li>
								<li><a href="#">Loyality Programms</a></li>
								<li><a href="#" class="loyalty">Loyality Offers</a></li>
							</ul>
						</div>
						<div class="col-md-9" style="margin-left: 10px">
							<div id="loyalty" style="display:none"></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript">
		$(document).ready(function() {
			$(".loyalty").click(function() {
				loadOffersJSON();
				$("#loyalty").slideDown();
			});
			$(".navitems").hide();
			$(".navheader").click(function() {
				$(".navitems").slideDown();
			});

			var winheight = $(window).height();
			$("#header").height(winheight)

		});
	</script>
</body>
</html>