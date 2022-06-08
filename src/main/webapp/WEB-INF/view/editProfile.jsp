<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit profile</title>

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

</head>
<body>

	<nav
		class="navbar navbar-light navbar-expand-md sticky-top navigation-clean"
		style="box-shadow: 0px 0px 6px 0px; opacity: 0.90;">
		<div class="container-fluid">
			<a class="navbar-brand" href="index.jsp"><img
				src="${pageContext.request.contextPath}/assets/img/index/logo.png"
				style="width: 149px;"></a>
			<button data-toggle="collapse" class="navbar-toggler"
				data-target="#navcol-1">
				<span class="sr-only">Toggle navigation</span><span
					class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navcol-1">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item"><a class="nav-link active" href="#">Mercado</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Academia</a></li>
					<li class="nav-item"><a class="nav-link"
						href="./controller?accion=ranking">Ranking</a></li>
					<li class="nav-item"><a class="nav-link" href="#">About</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Perfil&nbsp;<i
							class="fa fa-user" style="color: #2a076e;"></i></a></li>
					<li class="nav-item"><a class="nav-link" href="#"><i
							class="fa fa-bell" style="color: #2a076e;"></i></a></li>
					<li class="nav-item"><a class="nav-link" href="#">EUR</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<div class="row no-gutters register-form">
		<div class="col-md-8 offset-md-2">
			<form:form action="insertarUsuario" modelAttribute="user"
				method="post" id="profile" onsubmit="" name="prof"
				class="custom-form">
				<h1 style="border-bottom-style: none;">Rellenar Perfil</h1>
				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="email-input-field">Email
						</label>
					</div>
					
					<div class="col-sm-6 input-column">

						<form:input type="email" path="email" class="form-control"
							placeholder="" value="${user.email}" />
						<form:errors path="email" style="color:red"></form:errors>

					</div>

				</div>
				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="pawssword-input-field">Contraseña</label>
					</div>
					<div class="col-sm-6 input-column">


						<form:input type="pass" path="pass" class="form-control"
							placeholder="" value="${user.pass}" />
						<form:errors path="pass" style="color:red"></form:errors>

					</div>

				</div>
				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="name-input-field">Nick</label>
					</div>
					<div class="col-sm-6 input-column">

						<form:input type="nick" path="nick" class="form-control"
							placeholder="" value="${user.nick}" />
						<form:errors path="nick" style="color:red"></form:errors>

					</div>

				</div>
				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="name-input-field">Nombre</label>
					</div>
					<div class="col-sm-6 input-column">

						<form:input type="first_name" path="first_name"
							class="form-control" placeholder="" value="${user.first_name}" />
						<form:errors path="first_name" style="color:red"></form:errors>

					</div>

				</div>
				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="name-input-field">Apellidos</label>
					</div>
					<div class="col-sm-6 input-column">

						<form:input type="last_name" path="last_name" class="form-control"
							placeholder="" value="${user.last_name}" />
						<form:errors path="last_name" style="color:red"></form:errors>

					</div>

				</div>
				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="name-input-field">Fecha
							de nacimiento</label>
					</div>
					<div class="col-sm-6 input-column">

						<form:input type="" path="b_date" class="form-control"
							placeholder="" value="${user.b_date}" />
						<form:errors path="b_date" style="color:red"></form:errors>

					</div>

				</div>

				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="name-input-field">Pais
							de residencia</label>
					</div>
					<div class="col-sm-6 input-column">

						<form:input type="country" path="country" class="form-control"
							placeholder="" value="${user.country}" />
						<form:errors path="country" style="color:red"></form:errors>

					</div>

				</div>

				<div class="form-row form-group">
					<div class="col-sm-4 text-center label-column">
						<label class="col-form-label" for="name-input-field">Capital</label>
					</div>
					<div class="col-sm-6 input-column">

						<form:input type="capital" path="capital" class="form-control"
							placeholder="" value="${user.capital}" />
						<form:errors path="capital" style="color:red"></form:errors>

					</div>

				</div>

				<div class="form-check">
					<input class="form-check-input" type="checkbox" id="formCheck-1"><label
						class="form-check-label" for="formCheck-1">He leido, y
						acepto la politica de privacidad</label>
				</div>
				<button id="submit" class="btn btn-light submit-button"
					type="submit"
					style="background: #ffdf08; height: 47px; color: rgb(0, 0, 0); border-radius: 5px;">Enviar</button>
			</form:form>
		</div>
	</div>
	<footer class="footer-dark" style="background: #2a076e;">
		<div class="container">
			<div class="row">
				<div class="col-sm-6 col-md-3 item">
					<h3 style="color: #ffffff;">Servicios</h3>
					<ul>
						<li><a href="#">Web design</a></li>
						<li><a href="#">Development</a></li>
						<li><a href="#">Hosting</a></li>
					</ul>
				</div>
				<div class="col-sm-6 col-md-3 item">
					<h3 style="color: #ffffff;">About</h3>
					<ul>
						<li><a href="#" style="color: rgb(240, 249, 255);">Company</a></li>
						<li><a href="#">Team</a></li>
						<li><a href="#">Careers</a></li>
					</ul>
				</div>
				<div class="col-md-6 item text">
					<h3 style="color: #ffffff;">
						<i class="fa fa-rocket"></i>&nbsp;CriCoin
					</h3>
					<p>Praesent sed lobortis mi. Suspendisse vel placerat ligula.
						Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis
						tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel
						in justo.</p>
				</div>
				<div class="col item social">
					<a href="#" style="color: #ffdf08;"><i
						class="icon ion-social-facebook"></i></a><a href="#"
						style="color: #ffdf08;"><i class="icon ion-social-twitter"></i></a><a
						href="#" style="color: #ffdf08;"><i
						class="icon ion-social-snapchat"></i></a><a href="#"
						style="color: #ffdf08;"><i class="icon ion-social-instagram"></i></a>
				</div>
			</div>
			<p class="copyright">
				<i class="fa fa-rocket"></i>&nbsp;CriCoin © 2021
			</p>
		</div>
	</footer>
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/js/bs-init.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.6.0/umd/popper.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/datatables/1.10.21/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.6.5/js/dataTables.buttons.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.flash.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/jquery.dataTables.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.html5.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
	<script
		src="https://cdn.datatables.net/1.10.20/js/dataTables.bootstrap4.min.js"></script>
	<script
		src="https://cdn.datatables.net/buttons/1.6.5/js/buttons.print.min.js"></script>
	<script src="assets/js/Bootstrap-DataTables.js"></script>
	<script src="assets/js/DataTable---Fully-BSS-Editable.js"></script>
	<script src="assets/js/editProfile.js"></script>

</body>
</html>