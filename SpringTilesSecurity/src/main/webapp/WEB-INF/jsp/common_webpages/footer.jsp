<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Home | CRM</title>
<link href="${pageContext.request.contextPath}/crm_assets/css/bootstrap.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/crm_assets/css/font-awesome.min.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/crm_assets/css/prettyPhoto.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/crm_assets/css/price-range.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/crm_assets/css/animate.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/crm_assets/css/main.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/crm_assets/css/responsive.css" rel="stylesheet">
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
<link rel="shortcut icon" href="${pageContext.request.contextPath}/images/ico/favicon.ico">
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="${pageContext.request.contextPath}/crm_assets/images/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="${pageContext.request.contextPath}/crm_assets/images/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="${pageContext.request.contextPath}/crm_assets/images/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="${pageContext.request.contextPath}/crm_assets/images/ico/apple-touch-icon-57-precomposed.png">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/crm_assets/css/jquery.dataTables.css">

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.11.3/themes/smoothness/jquery-ui.css">
	<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#ll').hide();
		$('#logot').click(function() {
			var tx = $('#ll').text();
			url = "logout.htm?textvalue=" + tx;
			document.location.href = url;
		});

	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#deleteAcc').hide();
		$('#deleteAccount').click(function() {
			var tx = $('#deleteAcc').text();
			url = "deleteAccount.htm?massage=" + tx;
			document.location.href = url;
		});

	});
</script>

<script type="text/javascript">
	$(document).ready(function() {
		setTimeout(function() {
			$('#lg').fadeOut("slow", function() {
			});
		}, 2000);
	});
</script>


<script type="text/javascript">
	$(document).ready(function() {
		setTimeout(function() {
			$('#delete').fadeOut("slow", function() {
			});
		}, 2000);
	});
</script>
</head>
<!--/head-->
<footer id="footer">
	<!--Footer-->
	<div class="footer-top">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="companyinfo">
						<h2>
							<span>E</span>-Clean-Repair-Maintenance.
						</h2>
						<p>Finding time to clean your home, along with everything else you do, can be challenging</p>
					</div>
				</div>
				<div class="col-sm-7">
					<div class="col-sm-3">
						
					</div>

					<div class="col-sm-3">
						
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="${pageContext.request.contextPath}/crm_assets/images/home/iframe3.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>Circle of Hands</p>
							<h2>24 DEC 2016</h2>
						</div>
					</div>

					<div class="col-sm-3">
						<div class="video-gallery text-center">
							<a href="#">
								<div class="iframe-img">
									<img src="${pageContext.request.contextPath}/crm_assets/images/home/iframe4.png" alt="" />
								</div>
								<div class="overlay-icon">
									<i class="fa fa-play-circle-o"></i>
								</div>
							</a>
							<p>Circle of Hands</p>
							<h2>24 DEC 2016</h2>
						</div>
					</div>
				</div>
				<div class="col-sm-3">
					<div class="address">
						<img src="${pageContext.request.contextPath}/crm_assets/images/home/map.png" alt="" />
						<p>EI-T Karvenagar, IN(India)</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="footer-widget">
		<div class="container">
			<div class="row">
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Service</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Online Help</a></li>
							<li><a href="#">Contact Us</a></li>
							<li><a href="#">Order Status</a></li>
							<li><a href="#">Change Location</a></li>
							<li><a href="#">FAQâ€™s</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>Policies</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Terms of Use</a></li>
							<li><a href="#">Privecy Policy</a></li>
							<li><a href="#">Refund Policy</a></li>
							<li><a href="#">Billing System</a></li>
							<li><a href="#">Ticket System</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-2">
					<div class="single-widget">
						<h2>About Shopper</h2>
						<ul class="nav nav-pills nav-stacked">
							<li><a href="#">Company Information</a></li>
							<li><a href="#">Careers</a></li>
							<li><a href="#">Store Location</a></li>
							<li><a href="#">Affillate Program</a></li>
							<li><a href="#">Copyright</a></li>
						</ul>
					</div>
				</div>
				<div class="col-sm-3 col-sm-offset-1">
					<div class="single-widget">
						<h2>About Servicers</h2>
						<form action="#" class="searchform">
							<input type="text" placeholder="Your email address" />
							<button type="submit" class="btn btn-default">
								<i class="fa fa-arrow-circle-o-right"></i>
							</button>
							<p>
								Get the most recent updates from <br />our site and be updated
								your self...
							</p>
						</form>
					</div>
				</div>

			</div>
		</div>
	</div>

	<div class="footer-bottom">
		<div class="container">
			<div class="row">
				<p class="pull-left">Copyright © 2015 E-CleanRepairMaintenance
					Inc.. All rights reserved.</p>
				<p class="pull-right">
					Designed by<span><a target="_blank"
						href="#">RYM</a></span>
				</p>
			</div>
		</div>
	</div>

</footer>
<!--/Footer-->



<script type="text/javascript" charset="utf8"
	src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.8.2.min.js"></script>
<script type="text/javascript" charset="utf8"
	src="http://ajax.aspnetcdn.com/ajax/jquery.dataTables/1.9.4/jquery.dataTables.min.js"></script>
<script>
	$(function() {
		$("#example").dataTable();
	})
</script>
<script src="${pageContext.request.contextPath}/crm_assets/js/jquery-1.10.2.min.map"></script>
<script src="${pageContext.request.contextPath}/crm_assets/js/moment+langs.min.js"></script>
<script src="${pageContext.request.contextPath}/crm_assets/js/password-strengthChecker.js"></script>
<script src="${pageContext.request.contextPath}/crm_assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/crm_assets/js/jquery.scrollUp.min.js"></script>
<script src="${pageContext.request.contextPath}/crm_assets/js/price-range.js"></script>
<script src="${pageContext.request.contextPath}/crm_assets/js/jquery.prettyPhoto.js"></script>
<script src="${pageContext.request.contextPath}/crm_assets/js/main.js"></script>