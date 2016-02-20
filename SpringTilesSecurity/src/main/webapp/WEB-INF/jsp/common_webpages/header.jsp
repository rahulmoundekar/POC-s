<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>  
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<sql:setDataSource
        var="my"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/crm"
        user="root" password="root"/>
      <c:set var="cid1" value="1"/>
      <c:set var="cid2" value="2"/>
      <c:set var="cid3" value="3"/>
      <c:set var="cid4" value="4"/>
     
   <sql:query var="listservices1"   dataSource="${my}">
        SELECT * FROM subcategory WHERE category_id=?
        <sql:param value="${cid1}" />
    </sql:query>
    
    <sql:query var="listservices2"   dataSource="${my}">
        SELECT * FROM subcategory WHERE category_id=?
        <sql:param value="${cid2}" />
    </sql:query>
    
    <sql:query var="listservices3"   dataSource="${my}">
        SELECT * FROM subcategory WHERE category_id=?
        <sql:param value="${cid3}" />
    </sql:query>
    
     <sql:query var="listservices4"   dataSource="${my}">
        SELECT * FROM subcategory WHERE category_id=?
        <sql:param value="${cid4}" />
    </sql:query>
   
    
<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href="#"><i class="fa fa-phone"></i> +91 95 01 88 8211</a></li>
								<li><a href="#"><i class="fa fa-envelope"></i> info@domain.com</a></li>
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
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="index.html"><img src="${pageContext.request.contextPath}/crm_assets/images/home/CRMLogo.png" alt="" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									India
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="?lang=en">English</a></li>
									<li><a href="?lang=hi ">Hindi</a></li>
									<li><a href="?lang=devanagari">Marathi</a></li>
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
								<li><a href="wishlist"><i class="fa fa-star"></i> <spring:message code="label.Wishlist" /></a></li>
								<li><a href="checkout.htm"><i class="fa fa-crosshairs"></i> <spring:message code="label.Checkout" /></a></li>
								<li><a href="cart.htm"><i class="fa fa-shopping-cart"></i><spring:message code="label.Cart" /></a></li>
								<li><a href="login/loginPage"><i class="fa fa-lock"></i><spring:message code="label.Login" /></a></li>
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
								<li><a href="index.htm" class="active">Home</a></li>
								<li class="dropdown"><a href="#">Home Services<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                     <c:forEach var="cat" items="${listservices1.rows}">
                                     <li><a href="servicesDetails.htm?cid=${cat.subcategory_id}"><c:out value="${cat.subcategory_name}"></c:out></a></li>
                                     </c:forEach>
                                    </ul>
                                </li> 
                                <li class="dropdown"><a href="#">Yard & OutDoor<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                    <c:forEach var="cat" items="${listservices2.rows}">
                                     <li><a href="servicesDetails.htm?cid=${cat.subcategory_id}"><c:out value="${cat.subcategory_name}"></c:out></a></li>
                                     </c:forEach>
                                    </ul>
                                </li> 
                                <li class="dropdown"><a href="#">Automotive<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                    <c:forEach var="cat" items="${listservices3.rows}">
                                     <li><a href="servicesDetails.htm?cid=${cat.subcategory_id}"><c:out value="${cat.subcategory_name}"></c:out></a></li>
                                     </c:forEach>
                                    </ul>
                                </li> 
                                <li class="dropdown"><a href="#">Computer & Electronics<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                    <c:forEach var="cat" items="${listservices4.rows}">
                                     <li><a href="servicesDetails.htm?cid=${cat.subcategory_id}"><c:out value="${cat.subcategory_name}"></c:out></a></li>
                                     </c:forEach>
                                    </ul>
                                </li> 
								<li><a href="contactus.htm">Contact</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						
					</div>
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->
	</body>
</html>
	