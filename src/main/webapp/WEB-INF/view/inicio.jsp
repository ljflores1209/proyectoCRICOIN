<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="ISO-8859-1">
<title>Cricoin</title>

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

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Navigation-with-Button.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/css/Highlight-Phone.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Article-List.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/Footer-Dark.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/ionicons.min.css">


</head>

<body>

    <nav class="navbar navbar-light navbar-expand-md sticky-top navigation-clean-button" data-aos="fade" style="filter: blur(0px);opacity: 0.90;">
        <div class="container-fluid"><a class="navbar-brand" href="inicio"><img alt="foto" src="${pageContext.request.contextPath}/assets/img/index/logo.png" style="width: 149px;margin: 9px;"></a><button data-toggle="collapse" class="navbar-toggler" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse justify-content-end" id="navcol-1">
            <span class="navbar-text actions">
            	<a class="login" href="market.jsp">Mercado&nbsp;</a>
            	<a class="login" href="blog.jsp">Blog&nbsp;</a>
				<a class="login" href="About.jsp">About&nbsp;</a>
				<a class="login" href="./controller?accion=ranking">Ranking&nbsp;</a>
				
				
            <%if(session.getAttribute("user")=="" || session.getAttribute("user")==null){ %>
	           		<a class="login" href="login">Iniciar sesion</a>
	           		<a class="btn btn-light action-button" type="submit" role="button" data-bss-hover-animate="pulse" href="formularioRegistro" style="background: #ffdf08;color: rgb(0,0,0);">Registrarse</a>
          	<%} else{ %>
            		<a class="btn btn-light action-button" href="cerrarSesion" role="button" data-bss-hover-animate="pulse" href="register.jsp" style="background: #ffdf08;color: rgb(0,0,0);">Cerrar sesi�n</a>
            <%} %>
	           		<a class="login" href="/ProyectoLuisSpring" style="margin-left: 15px;">Inicio</a>
           		</span>
        	</div>
        </div>
    </nav>
	<section data-aos="fade" class="highlight-phone"
		style="background: rgb(42, 7, 110); height: 380px;">
		<div class="container">
			<div class="row">
				<div class="col-md-8" style="margin-top: 25px;">
					<div class="intro">
						<h2 style="color: var(- -light);">EL EXCHANGE DE CONFIANZA</h2>
						<p style="color: var(- -light);">En CriCoin te damos el cambio
							m�s justo. Somos lideres del sector. &nbsp;</p>

						<%
						if (session.getAttribute("user") == "" || session.getAttribute("user") == null) {
						%>

						<form action="./controller?accion=insertarEmail" method="POST"
							id="idForm" onsubmit="return validateIndexEmail()" name="myForm">
							<div class="form-group">
								<input type="text" name="email" id="inputEmail"
									style="border-radius: 5px; margin-right: 13px; margin-bottom: 10px;">
								<button id="submit" type="submit" class="btn btn-primary"
									role="button"
									style="background: #ffdf08; border-radius: 15px; color: var(- -gray-dark);">Registrarse</button>
								<div class="invalid-feedback text-white" id="errorEmail"></div>
								<h6>
									<c:out value="${mensaje}" />
								</h6>
							</div>
						</form>

						<%
						} else {
						%>
						<h3 class="main-bienvenido-h3">
							Bienvenido <span style="color: #ffdf08"><c:out value="${user.nick}" /></span>
						</h3>
						<span class="navbar-text actions"> <a
							class="btn btn-light action-button" href="editProfile.jsp"
							role="button" data-bss-hover-animate="pulse"
							style="background: #ffdf08; color: rgb(0, 0, 0);">Perfil</a>
						</span>
						<%
						}
						%>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="d-none d-md-block phone-mockup">
						<img class="device" src="${pageContext.request.contextPath}/assets/img/index/bitcoin-4851376_1280.png"
							style="margin: 0px; box-shadow: 0px 0px 20px; margin-top: 25px;">
					</div>
				</div>
			</div>
		</div>
	</section>
	<section data-aos="fade" style="margin-top: 43px; margin-bottom: 56px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="operaciones.jsp"><img data-bss-hover-animate="pulse"
						src="${pageContext.request.contextPath}/assets/img/index/bitcoin-3132574_640.jpg"
						style="width: 100%; height: auto; box-shadow: 0px 0px 20px rgb(152, 152, 153); border-radius: 5px;"></a>
				</div>
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="#"><img data-bss-hover-animate="pulse"
						src="${pageContext.request.contextPath}/assets/img/index/bitcoin-1813503_640.jpg"
						style="width: 100%; height: auto; box-shadow: 0px 0px 20px var(- -secondary); border-radius: 5px;"></a>
				</div>
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="#"><img data-bss-hover-animate="pulse"
						src="${pageContext.request.contextPath}/assets/img/index/crypto-3569795_640.jpg"
						style="width: 100%; height: auto; box-shadow: 0px 0px 20px var(- -secondary); border-radius: 5px;"></a>
				</div>
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="#"><img data-bss-hover-animate="pulse"
						src="${pageContext.request.contextPath}/assets/img/index/analytics-3088958_640.jpg"
						style="background-size: cover; width: 100%; height: auto; box-shadow: 0px 0px 20px var(- -secondary); border-radius: 5px;"></a>
				</div>
			</div>
		</div>
	</section>
	<section style="margin-top: 43px; margin-bottom: 56px;">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="#">
						<div class="card">
							<div
								style="width: 250px; height: 220px; background-color: #FFFFFF; overflow: hidden; box-sizing: border-box; border: 1px solid rgb(42, 7, 110); border-radius: 4px; text-align: right; line-height: 14px; block-size: 220px; font-size: 12px; font-feature-settings: normal; text-size-adjust: 100%; box-shadow: inset 0 -20px 0 0 #56667F; padding: 1px; padding: 0px; margin: 0px;">
								<div
									style="height: 200px; padding: 0px; margin: 0px; width: 100%;">
									<iframe
										src="https://widget.coinlib.io/widget?type=single_v2&theme=light&coin_id=859&pref_coin_id=1505"
										width="250" height="196px" scrolling="auto" marginwidth="0"
										marginheight="0" frameborder="0" border="0"
										style="border: 0; margin: 0; padding: 0; line-height: 14px;"></iframe>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="#">
						<div class="card">
							<div
								style="width: 250px; height: 220px; background-color: #FFFFFF; overflow: hidden; box-sizing: border-box; border: 1px solid #56667F; border-radius: 4px; text-align: right; line-height: 14px; block-size: 220px; font-size: 12px; font-feature-settings: normal; text-size-adjust: 100%; box-shadow: inset 0 -20px 0 0 #56667F; padding: 1px; padding: 0px; margin: 0px;">
								<div
									style="height: 200px; padding: 0px; margin: 0px; width: 100%;">
									<iframe
										src="https://widget.coinlib.io/widget?type=single_v2&theme=light&coin_id=145&pref_coin_id=1505"
										width="250" height="196px" scrolling="auto" marginwidth="0"
										marginheight="0" frameborder="0" border="0"
										style="border: 0; margin: 0; padding: 0; line-height: 14px;"></iframe>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="#">
						<div class="card">
							<div
								style="width: 250px; height: 220px; background-color: #FFFFFF; overflow: hidden; box-sizing: border-box; border: 1px solid #56667F; border-radius: 4px; text-align: right; line-height: 14px; block-size: 220px; font-size: 12px; font-feature-settings: normal; text-size-adjust: 100%; box-shadow: inset 0 -20px 0 0 #56667F; padding: 1px; padding: 0px; margin: 0px;">
								<div
									style="height: 200px; padding: 0px; margin: 0px; width: 100%;">
									<iframe
										src="https://widget.coinlib.io/widget?type=single_v2&theme=light&coin_id=1209&pref_coin_id=1505"
										width="250" height="196px" scrolling="auto" marginwidth="0"
										marginheight="0" frameborder="0" border="0"
										style="border: 0; margin: 0; padding: 0; line-height: 14px;"></iframe>
								</div>
							</div>
						</div>
					</a>
				</div>
				<div class="col-lg-3 col-sm-6 mt-4">
					<a href="#">
						<div class="card">
							<div
								style="width: 250px; height: 220px; background-color: #FFFFFF; overflow: hidden; box-sizing: border-box; border: 1px solid #56667F; border-radius: 4px; text-align: right; line-height: 14px; block-size: 220px; font-size: 12px; font-feature-settings: normal; text-size-adjust: 100%; box-shadow: inset 0 -20px 0 0 #56667F; padding: 1px; padding: 0px; margin: 0px;">
								<div
									style="height: 200px; padding: 0px; margin: 0px; width: 100%;">
									<iframe
										src="https://widget.coinlib.io/widget?type=single_v2&theme=light&coin_id=280&pref_coin_id=1505"
										width="250" height="196px" scrolling="auto" marginwidth="0"
										marginheight="0" frameborder="0" border="0"
										style="border: 0; margin: 0; padding: 0; line-height: 14px;"></iframe>
								</div>
							</div>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<section data-aos="fade" class="article-list">
		<div class="container">
			<div class="intro">
				<h2 class="text-center"
					style="margin-bottom: 7px; padding: 22px 0px 0px;">Academia</h2>
			</div>
			<div class="row articles">
				<div class="col-sm-6 col-md-4 item">
					<a href="#"><img class="img-fluid shadow"
						src="${pageContext.request.contextPath}/assets/img/index/chart-2779132_640.jpg" style="border-radius: 5px;"></a>
					<h3 class="name">Aprende a tradear</h3>
					<p class="description">Con nuestro curso r�pido de inversi�n en
						Criptodivisas aprender�s a tradear en un tiempo record y con la
						mayor de las seguridades. Garantizado.</p>
					<a class="action" href="#"><i class="fa fa-arrow-circle-right"
						style="color: #ffdf08;"></i></a>

				</div>
				<div class="col-sm-6 col-md-4 item">
					<a href="#"><img class="img-fluid shadow"
						src="${pageContext.request.contextPath}/assets/img/index/stock-1863880_640.jpg" style="border-radius: 5px;"></a>
					<h3 class="name">Aprende BlockChain</h3>
					<p class="description">No te saltes este fant�stico curso sobre
						BlockChain, la tecnolog�a que hay detr�s de este innovador y
						lucrativo mercado de Criptodivisas.</p>
					<a class="action" href="#"><i class="fa fa-arrow-circle-right"
						style="color: #ffdf08;"></i></a>
				</div>
				<div class="col-sm-6 col-md-4 item">
					<a href="#"><img class="img-fluid shadow"
						src="${pageContext.request.contextPath}/assets/img/index/mathematics-3821034_640.jpg"
						style="border-radius: 5px;"></a>
					<h3 class="name">�C�mo funciona CriCoin?</h3>
					<p class="description">A pesar de ser uno de los exchange m�s
						intuitivos de la red, en este cusillo r�pido, te llevaremos de la
						mano en un completo recorrido de nuestra plataforma.</p>
					<a class="action" href="#"><i class="fa fa-arrow-circle-right"
						style="color: #ffdf08;"></i></a>
				</div>
			</div>
		</div>
	</section>
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
                    <h3 style="color: #ffffff;"><i class="fa fa-rocket"></i>&nbsp;CriCoin</h3>
                    <p>Praesent sed lobortis mi. Suspendisse vel placerat ligula. Vivamus ac sem lacus. Ut vehicula rhoncus elementum. Etiam quis tristique lectus. Aliquam in arcu eget velit pulvinar dictum vel in justo.</p>
                </div>
                <div class="col item social"><a href="#" style="color: #ffdf08;"><i class="icon ion-social-facebook"></i></a><a href="#" style="color: #ffdf08;"><i class="icon ion-social-twitter"></i></a><a href="#" style="color: #ffdf08;"><i class="icon ion-social-snapchat"></i></a><a href="#" style="color: #ffdf08;"><i class="icon ion-social-instagram"></i></a></div>
            </div>
            <p class="copyright"><i class="fa fa-rocket"></i>&nbsp;CriCoin � 2021</p>
        </div>
    </footer>
	
	<script src="https://cdnjs.cloudflare.com/ajax/libs/aos/2.3.4/aos.js"></script>
</body>
</html>