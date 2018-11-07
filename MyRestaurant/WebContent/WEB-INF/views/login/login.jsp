<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Pizzateria</title>
<body class="login-page sidebar-collapse">
	<div class="page-header header-filter"
		style="background-image: url('resources/images/pizza.jpg'); background-size: cover; background-position: top center;">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6 ml-auto mr-auto">
					<div class="card card-login">
						<form class="form" id="loginForm" name="loginForm"
							action="authenticate.do" modelAttribute="loginForm" method="POST">
							<div class="card-header card-header-primary text-center">
								<h3 class="card-title">PIZZATERIA</h3>
								<div class="social-line">
									<i class="fa fa-user"></i>
								</div>
							</div>
							<div class="panel-heading">
								<div class="text-danger text-center">${errorMsg}</div>
							</div>
							<div class="card-body">

								<span class="bmd-form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="material-icons">face</i>
											</span>
										</div>
										<input id="userId" type="text" class="form-control"
											name="userId" value="" placeholder="User Name...">
									</div>
								</span> <span class="bmd-form-group">
									<div class="input-group">
										<div class="input-group-prepend">
											<span class="input-group-text"> <i
												class="material-icons">lock_outline</i>
											</span>
										</div>

										<input id="password" type="password" class="form-control"
											name="password" placeholder="Password...">
									</div>
								</span>

							</div>
							<div class="footer text-center">
								<button type="submit"
									class="btn btn-primary btn-link btn-wd btn-lg-custom">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<footer class="footer">
		<div class="container">
			<div class="copyright float-center"> &copy; 2018 Dotworld Technologies</div>
		</div>
		</footer>

	</div>
</body>

</html>