<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<section id="form">
	<!--form-->
	<div class="container">
		<div class="row">
			<div class="col-sm-4 col-sm-offset-1">
				<div class="login-form">
					<h2>Login to your account</h2>
					<h5 style="color: red;">${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}</h5>
					<form:form
						action="${pageContext.request.contextPath}/j_spring_security_check"
						method='POST' name='loginForm' id="loginForm"
						modelAttribute="user">
						<input id="j_username" name="j_username" type="text"
							placeholder="Username">
						<input id="j_password" name="j_password" type="password"
							placeholder="Password">
						<button type="submit" class="btn btn-default">Login</button>
					</form:form>
				</div>
				<!--/login form-->
			</div>
			<div class="col-sm-1">
				<h2 class="or">OR</h2>
			</div>
			<div class="col-sm-4">
				<div class="signup-form">
					<!--sign up form-->
					<h2>New User Signup!</h2>
					<form action="#">
						<input type="text" placeholder="Name" /> <input type="text"
							placeholder="Mobile Number" /> <input type="email"
							placeholder="Email Address" /> <input type="password"
							placeholder="Password" />
						<button type="submit" class="btn btn-default">Signup</button>
					</form>
				</div>
				<!--/sign up form-->
			</div>
		</div>
	</div>
</section>
<!--/form-->