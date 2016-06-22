<html>
<head>
<style>

</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Maxifum</title>
<!-- JQuery -->
<script src="webjars/jquery/2.2.3/jquery.min.js"></script>
<script src="webjars/datatables/1.10.11/js/jquery.dataTables.js"
	type="text/javascript"></script>
<link href="webjars/datatables/1.10.11/css/jquery.dataTables.css"
	rel="stylesheet">
<script src="webjars/tablesorter/2.25.4/js/jquery.tablesorter.js"
	type="text/javascript"></script>
<script src="webjars/jquery-blockui/2.65/jquery.blockUI.js"
	type="text/javascript"></script>
<!-- Google Charts -->
<!-- TODO find maven-->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<!-- file uploader -->
<link href="webjars/bootstrap-fileinput/4.2.0/css/fileinput.min.css"
	media="all" rel="stylesheet" type="text/css" />
<script src="webjars/bootstrap-fileinput/4.2.0/js/fileinput.min.js"
	type="text/javascript"></script>
<script
	src="webjars/bootstrap-fileinput/4.2.0/js/fileinput_locale_es.js"></script>
<!-- Bootstrap -->
<link href="webjars/bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet">
<script src="webjars/bootstrap/3.2.0/js/bootstrap.js"></script>
<!-- Select2 autocmplete select box -->
<link href="webjars/select2/4.0.2/dist/css/select2.min.css"
	rel="stylesheet">
<script src="webjars/select2/4.0.2/dist/js/select2.full.min.js"></script>
<!-- Font-Awsome-->
<link rel="stylesheet"
	href="webjars/font-awesome/4.6.2/css/font-awesome.min.css">
<!-- Date Picker  -->
<link
	href="webjars/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css"
	rel="stylesheet">
<script
	src="webjars/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
<!-- Notifications -->
<script src="webjars/sweetalert/1.1.3/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="webjars/sweetalert/1.1.3/dist/sweetalert.css">
<!-- Custom Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- Plugin CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css"
	type="text/css">
<!-- Custom CSS -->
<link rel="stylesheet" href="resources/css/creative.css" type="text/css">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="/resources/https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="/resources/https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
<jsp:include page="/views/login.jsp" />
</head>
<body id="page-top">
	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">Maxifum</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="page-scroll" href="#services">Servicios</a></li>
					<li><a class="page-scroll" href="#about">Nosotros</a></li>

					<li><a class="page-scroll" href="#ubicacion">Ubicacion</a></li>
					<li><a class="page-scroll" href="#cotizaciones">Cotizaciones</a></li>
					<li><a href="#" class="page-scroll" role="button"
						data-toggle="modal" data-target="#login-modal">Login</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<header>
		<div class="header-content">
			<div class="header-content-inner">
				<p style="text-align: center">
					<img src="resources/img/maxifum.png" />
				</p>
				<h1>En MAXIFUM protegemos la salud de la familia Mexicana</h1>
				<hr>
				<p>La empresa MAXIFUM de Occidente se fundó el 13 de mayo de
					1985, ante la necesidad de brindar un servicio de calidad para el
					control de plagas, utlizando los productos con mayor avance
					tecnológico en México y el mundo. MAXIFUM empresa 100% mexicana y
					familiar ha contribuido en la salud de la familia mexicana,
					previniendo emfermedades y protegiendo el medio ambiente.</p>
				<a href="#about" class="btn btn-primary btn-xl page-scroll">Saber
					Mas</a>
			</div>
		</div>
	</header>
	<section class="bg-primary" id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">En Maxifum la completa
						satisfacción de nuestros clientes, así como la salud de la familia
						mexicana son nuestros compromisos.</h2>
					<hr class="light">
					<p class="text-faded">
						Pasos Maxifum para ofrecer un excelente servicio, a través de
						programa llamado TEMIP (Técnicas y Estratégias para el Manejo
						Integrado de Plagas). <br> <br> <br> Identificación
						<br> <i class="fa fa-4x fa fa-bullseye text-primary sr-icons"></i>
						<br> Detectar la presencia de una plaga así como la
						clasificación de su especie. Las especies estrechamente
						relacionadas pueden ser muy similares de aspecto, pero tener el
						potencial de crecimiento considerablemente diferente. <br> <br>
						<br> Cuantificación. <br> <i
							class="fa fa-4x fa fa-bug text-primary sr-icons"></i> <br>
						La prueba para medir densidad de población. ¿Cómo cambia la
						densidad de población con el tiempo? <br> <br> <br>
						Determinación. <br> <i
							class="fa fa-4x fa fa-exclamation-triangle text-primary sr-icons"></i>
						<br> Definir riesgos en la población que pudieran causar
						pérdidas económicas. ¿Cuál es el potencial de crecimiento
						población? <br> <br> <br> Especificación.<br>
						<i class="fa fa-4x fa fa-lightbulb-o text-primary sr-icons"></i> <br>
						¿Qué tipo de control de plagas es el adecuado? ¿Qué instrumentos o
						los recursos que son necesarios para poner en práctica una
						operación de control de plagas contundente? 5. Aplicación. Tomar
						los pasos necesarios para suprimir la población de la plaga. Con
						químicos o sin químicos. 6. Evaluación. Confirme la eficacia de la
						táctica tomando muestras de la poblacion. Revalue la situación del
						entorno y tome acciones apropiadas de ser necesario.
					</p>
					<!-- 					<a href="#services" -->
					<!-- 						class="page-scroll btn btn-default btn-xl sr-button">Get -->
					<!-- 						Started!</a> -->
				</div>
			</div>
		</div>
	</section>
	<br>
	<section class="no-padding" id="nichos">
		<div class="container">
			<div class="col-lg-8 col-lg-offset-2 text-center">
				<h2 class="section-heading">Nuestros servicios van enfocados a
					los siguientes tipos de mercado.</h2>
			</div>
		</div>
		<div class="row no-gutter popup-gallery">
			<div class="col-lg-4 col-sm-6">
				<a href="resources/img/portfolio/fullsize/arana2.jpg"
					class="portfolio-box"> <img
					src="resources/img/portfolio/thumbnails/arana2.jpg"
					class="img-responsive" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Casa Hogar</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="resources/img/portfolio/fullsize/cucaracha1.jpg"
					class="portfolio-box"> <img
					src="resources/img/portfolio/thumbnails/cucaracha1.jpg"
					class="img-responsive" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Restaurantes</div>
							<!-- 								<div class="project-name">Project Name</div> -->
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="resources/img/portfolio/fullsize/hormigas3.jpg"
					class="portfolio-box"> <img
					src="resources/img/portfolio/thumbnails/hormigas3.jpg"
					class="img-responsive" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Hospitales</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="resources/img/portfolio/fullsize/alacran1.jpg"
					class="portfolio-box"> <img
					src="resources/img/portfolio/thumbnails/alacran1.jpg"
					class="img-responsive" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Escuelas</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="resources/img/portfolio/fullsize/raton1.jpg"
					class="portfolio-box"> <img
					src="resources/img/portfolio/thumbnails/raton1.jpg"
					class="img-responsive" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Industria</div>
						</div>
					</div>
				</a>
			</div>
			<div class="col-lg-4 col-sm-6">
				<a href="resources/img/portfolio/fullsize/avispa1.jpg"
					class="portfolio-box"> <img
					src="resources/img/portfolio/thumbnails/avispa1.jpg"
					class="img-responsive" alt="">
					<div class="portfolio-box-caption">
						<div class="portfolio-box-caption-content">
							<div class="project-category text-faded">Gobierno</div>
						</div>
					</div>
				</a>
			</div>
		</div>
	</section>
	<section id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Politica Maxifum</h2>
					<hr class="primary">
					<h3>Somos una empresa enfocada a brindar servicios para el
						control y prevención de plagas urbanas, nuestro objetivo principal
						es asesorar y eliminar la existencia de cualquier plaga urbana en
						el comecio y la indústria, así como la protección de su salud y la
						de su familia, evitando cualquier impacto al medio ambiente y
						previniendo a su vez pérdidas económicas como consecuencia de
						estas, claro todo esto siendo siempre amables con nuestro medio
						ambiente.</h3>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-heart text-primary sr-icons"></i>
						<h3>MISION</h3>
						<p class="text-muted">Controlar las plagas dentro de los
							estandares de Profesionalismo, Integridad y Honradez, teniendo
							como objetivo principal la salud de nuestros clientes, empleados
							y del medio ambiente.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa fa-shield text-primary sr-icons"></i>
						<h3>VALORES</h3>
						<p class="text-muted">
							Salud.<br> Responsabilidad.<br> Honestidad.<br>
							Conocimiento.
						</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa fa-eye text-primary sr-icons"></i>
						<h3>Vision</h3>
						<p class="text-muted">Ser la empresa lider en el control de
							fauna nociva apoyado en los recursos humanos y tecnológicos.</p>
					</div>
				</div>
				<div class="col-lg-3 col-md-6 text-center">
					<div class="service-box">
						<i class="fa fa-4x fa-user text-primary sr-icons"></i>
						<h3>NUESTRO PERSONAL</h3>
						<p class="text-muted">
							Cuenta con capacitaciones técnicas en diversas áreas, tales como:<br>
							Primeros Auxilios <br>Expertos en insectos rastreros <br>Roedores
							<br>Reubicación pacífica de aves y murciélagos.
						</p>
					</div>
				</div>

			</div>
		</div>
	</section>
	<section id="ubicacion">
		<aside class="bg-dark">
			<div class="container text-center">
				<div class="call-to-action"></div>
				<div class="row">
					<iframe
						src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d233.29074409493475!2d-103.3439354140194!3d20.68373617631755!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8428b1e92d40c5c1%3A0xc21d033680d4fa4e!2sMaxifum!5e0!3m2!1ses-419!2smx!4v1465445114019"
						width="800" height="600" frameborder="1"
						style="border: thin solidrgb(255, 204, 229)" allowfullscreen>
					</iframe>
				</div>
			</div>
		</aside>
	</section>
	<section id="cotizaciones">
		<div class="container">
			<div class="row">
				<div class="container">
					<div id="contact_form" class="row">
						<div class="col-md-12">
							<h2>Contáctenos</h2>
							<form role="form" id="feedbackForm">
								<div class="form-group">
									<label class="control-label" for="name">Nombres *</label>
									<div class="input-group">
										<input type="text" class="form-control" id="name" name="name"
											placeholder="Introduzca su nombre" /> <span
											class="input-group-addon"><i
											class="glyphicon glyphicon-unchecked form-control-feedback"></i></span>
									</div>
									<span class="help-block" style="display: none;">Por
										favor, escriba su nombre.</span>
								</div>

								<div class="form-group">
									<label class="control-label" for="email">Motivo de
										Contacto*</label> <select name="reason" class="form-control">
										<option value="Consulta General">Cotizacion</option>
										<option value="Realizar Pedido">Informes o aclaracion
											de dudas</option>
										<option value="Informe un problema">Comentario</option>
									</select> <span class="help-block" style="display: none;">Por
										favor, introduce una dirección de correo electrónico válida.</span>
								</div>
								<div class="form-group">
									<label class="control-label" for="email">Dirección de
										Correo Electrónico *</label>
									<div class="input-group">
										<input type="email" class="form-control" id="email"
											name="email" placeholder="Introduzca su correo electrónico" />
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-unchecked form-control-feedback"></i></span>
									</div>
									<span class="help-block" style="display: none;">Por
										favor, introduzca una dirección de correo electrónico válida.</span>
								</div>
								<div class="form-group">
									<label class="control-label" for="message">Mensaje *</label>
									<div class="input-group">
										<textarea rows="5" cols="30" class="form-control" id="message"
											name="message" placeholder="Introduzca su mensaje"></textarea>
										<span class="input-group-addon"><i
											class="glyphicon glyphicon-unchecked form-control-feedback"></i></span>
									</div>
									<span class="help-block" style="display: none;">Por
										favor, introduzca un mensaje.</span>
								</div>
								<button type="submit" id="feedbackSubmit"
									class="btn btn-primary btn-lg" data-loading-text="Enviando..."
									style="display: block; margin-top: 10px;">Enviar
									comentarios</button>
							</form>
						</div>
					</div>
					<hr>
				</div>
				<div class="col-lg-4 col-lg-offset-2 text-center">
					<i class="fa fa-phone fa-3x sr-contact"></i>
					<p>(33) 3613-6786</p>
				</div>
				<div class="col-lg-4 text-center">
					<i class="fa fa-envelope-o fa-3x sr-contact"></i>
					<p>
						<a href="mailto:your-email@your-domain.com">contacto@maxifum.com</a>
					</p>
				</div>
			</div>
		</div>
	</section>
	<script src="resources/js/scrollreveal.min.js"></script>
	<script src="resources/js/jquery.easing.min.js"></script>
	<script src="resources/js/jquery.fittext.js"></script>
	<script src="resources/js/jquery.magnific-popup.min.js"></script>
	<script src="resources/js/creative.js"></script>

</body>
</html>
