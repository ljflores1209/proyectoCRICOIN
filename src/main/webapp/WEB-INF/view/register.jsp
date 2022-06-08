<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>

<!-- 	CDN BOOTSTRAP   -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- 	CDN BOOTSTRAP   -->

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/Navigation-with-Button.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/assets/css/Highlight-Phone.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Article-List.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Footer-Dark.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/ionicons.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/assets/css/Login-Form-Clean.css">

</head>
<body>


	<nav
		class="navbar navbar-light navbar-expand-md sticky-top navigation-clean-button"
		data-aos="fade" style="filter: blur(0px); opacity: 0.90;">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><img
				src="${pageContext.request.contextPath}/assets/img/index/logo.png"
				style="width: 149px; margin: 9px;"></a>
			<button class="navbar-toggler" data-toggle="collapse">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
		</div>
	</nav>

	<section class="login-clean">

		<form:form action="muestraFormularioRegister" modelAttribute="user"
			method="POST">
			<h2 class="sr-only">Login Form</h2>
			<div class="illustration">
				<i class="fas fa-rocket" style="color: #5319c3;"></i>
			</div>

			<div class="form-group">
				<form:input type="email" path="email" class="form-control"
					placeholder="Email" />
				<form:errors path="email" style="color:red"></form:errors>
				<!--  <input id="inputEmail" class="form-control" type="text" name="email"
					placeholder="Email" value="${email}" />-->
				<div class="invalid-feedback" id="errorEmail"></div>
			</div>

			<div class="form-group">
				<form:password path="pass" class="form-control"
					placeholder="Password" />
				<form:errors path="pass" style="color:red"></form:errors>
				<div class="invalid-feedback" id="errorPassword"></div>
			</div>
			<div class="form-group">
				<form:password path="pass1" class="form-control"
					placeholder="Confirm password" />
				<form:errors path="pass1" style="color:red"></form:errors>
				<div class="invalid-feedback" id="errorConfirmPassword"></div>
			</div>

			<div class="form-group">
				<button class="btn btn-primary btn-block" type="submit"
					style="background: #ffdf08; color: rgb(0, 0, 0);">Registrarse</button>
			</div>
			<a class="forgot" href="login.jsp">¿Ya estás registrado? Iniciar
				sesión</a>
			<div class="text-danger">
				<h6>${mensaje}</h6>
			</div>
		</form:form>
	</section>


	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bs-init.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
	<script src="assets/js/register.js"></script>

</body>
</html>