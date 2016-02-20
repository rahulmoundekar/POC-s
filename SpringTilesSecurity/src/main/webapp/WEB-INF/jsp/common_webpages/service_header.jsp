<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +91 95 01 88 8211</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
								<li>
								<c:if test="${pageContext.request.userPrincipal.name != null}">
									<a href="#"><i class="fa fa-user"></i> Welcome | ${pageContext.request.userPrincipal.name}</a>
								</c:if>	
								</li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
								<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		<div id="ll" style="color: blue;" hidden="true">You Are Logout Successfully</div>
		<div id="deleteAcc" hidden="true">Account Deleted Successfully</div>
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="${pageContext.request.contextPath}/resources/crm_assets/images/home/CRMLogo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									India
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">English</a></li>
									<li><a href="#">Hindi</a></li>
									<li><a href="#">Marathi</a></li>
								</ul>
							</div>
							<div class="btn-group">
								<div class="search_box pull-right">
									<input type="text" placeholder="Search"/>
								</div>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
							<li><a href="#" id="logot"><i class="fa fa-lock"></i> Sign Out</a></li> 
								<div class="btn-group pull-right">
									<div class="btn-group">
										<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
											Account Setting
										<span class="caret"></span>
										</button>
										<ul class="dropdown-menu">
												<li><a href="changePassword.htm">Change Password</a></li>
												<li><a href="editProfile.htm">Edit Profile</a></li>
												<li><a href="#" id="deleteAccount">Delete Account</a></li>
										</ul>
									</div>
								</div>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="sindex.htm" class="active">Home</a></li>
								<li><a href="timeline.htm">Timeline</a></li>
								<li><a href="contactus.htm">Notifications</a></li>
								<li class="dropdown"><a href="#">Service Request<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.html">Pending Requests</a></li>
										<li><a href="checkout.html">Completed Requests</a></li>
										<li><a href="product-details.html">History</a></li> 
                                    </ul>
                                </li> 
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	