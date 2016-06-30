
<!DOCTYPE html>
<html lang="en">

<head>
<!-- 	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.css" /> -->
<!-- 	<script src="http://code.jquery.com/jquery-2.0.1.min.js"></script> -->
<!-- 	<script src="http://code.jquery.com/mobile/1.4.5/jquery.mobile-1.4.5.min.js"></script> -->

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Maxifum - Administracion</title>

<!-- Bootstrap Core CSS -->
<link href="webjars/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="resources/css/metisMenu.min.css" rel="stylesheet">

<!-- Timeline CSS -->
<link href="resources/css/timeline.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="resources/css/sb-admin-2.css" rel="stylesheet">

<!-- Morris Charts CSS -->
<link href="resources/css//morris.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href="webjars/font-awesome/4.6.2/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- 	Calendar -->
<link href="resources/css/bootstrap-timepicker.css" rel="stylesheet">

<link href="resources/css/fullcalendar.css" rel="stylesheet">
<link href="resources/css/fullcalendarCustom.css" rel="stylesheet">




<!-- jQuery -->
<script src="webjars/jquery/2.2.3/jquery.js"></script>

<!-- Bootstrap Core JavaScript -->
<script src="webjars/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<!-- Metis Menu Plugin JavaScript -->
<script src="resources/js/metisMenu.min.js"></script>

<!-- Morris Charts JavaScript -->
<script src="resources/js/raphael-min.js"></script>
<script src="resources/js/morris.js"></script>
<!-- 			<script src="resources/js/morris-data.js"></script> -->

<!-- Custom Theme JavaScript -->
<script src="resources/js/sb-admin-2.js"></script>


<!-- 			calendar -->
<script src="resources/js/moment.js"></script>
<script src="resources/js/fullcalendar.js"></script>
<script src="resources/js/lang-all.js"></script>
<script src="resources/js/bootstrap-timepicker.js"></script>


<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

	<div id="wrapper">
		<!-- Navigation -->
		<nav class="navbar navbar-default navbar-static-top" role="navigation"
			style="margin-bottom: 0">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Maxifum - Panel de
					Administracion</a>
			</div>
			<!-- /.navbar-header -->

			<ul class="nav navbar-top-links navbar-right">

				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-tasks fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-tasks">
						<!-- 						Pending Task -->
						<li><a href="#">
								<div>
									<i class="fa fa-calendar-plus-o fa-fw"></i> Nuevo Servicio<span
										class="pull-right text-muted small">Servicio #4478</span>
								</div>
						</a></li>
						<li class="divider"></li>

						<!-- 						Pending Task -->
						<li><a href="#">
								<div>
									<i class="fa fa-calendar-plus-o fa-fw"></i> Nuevo Servicio<span
										class="pull-right text-muted small">Servicio #4479</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<!-- 						Pending Task -->
						<li><a href="#">
								<div>
									<i class="fa fa-calendar-plus-o fa-fw"></i> Nuevo Servicio<span
										class="pull-right text-muted small">Servicio #4480</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>Ver
									todos mis Servicios</strong> <i class="fa fa-calendar"></i>
						</a></li>
					</ul> <!-- /.dropdown-tasks --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-bell fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-alerts">
						<li><a href="#">
								<div>
									<i class="fa fa-check-circle-o fa-fw"></i> Nueva Evaluacion <span
										class="pull-right text-muted small">Servicio #4450</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-check-circle-o fa-fw"></i> Nueva Evaluacion <span
										class="pull-right text-muted small">Servicio #4449</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a href="#">
								<div>
									<i class="fa fa-check-circle-o fa-fw"></i> Nueva Evaluacion <span
										class="pull-right text-muted small">Servicio #4448</span>
								</div>
						</a></li>
						<li class="divider"></li>
						<li><a class="text-center" href="#"> <strong>Ver
									todas mis Evaluaciones</strong> <i class="fa fa-angle-right"></i>
						</a></li>
					</ul> <!-- /.dropdown-alerts --></li>
				<!-- /.dropdown -->
				<li class="dropdown"><a class="dropdown-toggle"
					data-toggle="dropdown" href="#"> <i class="fa fa-user fa-fw"></i>
						<i class="fa fa-caret-down"></i>
				</a>
					<ul class="dropdown-menu dropdown-user">
						<li><a href="#"><i class="fa fa-user fa-fw"></i> Mi
								Perfil</a></li>
						<li><a href="#"><i class="fa fa-gear fa-fw"></i> Mi
								Configuracion</a></li>
						<li class="divider"></li>
						<li><a href="login.html"><i class="fa fa-sign-out fa-fw"></i>
								Salir</a></li>
					</ul> <!-- /.dropdown-user --></li>
				<!-- /.dropdown -->
			</ul>
			<!-- /.navbar-top-links -->

			<div class="navbar-default sidebar" role="navigation">
				<div class="sidebar-nav navbar-collapse">
					<ul class="nav" id="side-menu">

						<li><a href="landing"><i class="fa fa-dashboard fa-fw"></i>
								Inicio</a></li>
						<li><a href="#"><i class="fa fa-bar-chart-o fa-fw"></i>
								Reportes<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="misReportes">Mis Reportes</a></li>
								<li><a href="reportes ">Reportes Generales</a></li>
							</ul> <!-- /.nav-second-level --></li>
						<li><a href="misServicios"><i class="fa fa-bug fa-fw"></i>
								Mis Servicios</a></li>
						<li><a href="clientes"><i class="fa fa-users fa-fw"></i>
								Clientes</a></li>
						<li><a href="#"><i class="fa fa-wrench fa-fw"></i>
								Configuracion<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="gestionUsuarios">Gestion de Usuarios</a></li>
								<li><a href="gestionClientes">Gestion de Clientes</a></li>

							</ul> <!-- /.nav-second-level --></li>
						<li><a href="#"><i class="fa fa-sitemap fa-fw"></i>
								Gestion de Servicios<span class="fa arrow"></span></a>
							<ul class="nav nav-second-level">
								<li><a href="#">Nuevo Servicio</a></li>
								<li><a href="#">Consultar Servicio</a></li>
							</ul> <!-- /.nav-second-level --></li>
					</ul>
				</div>
				<!-- /.sidebar-collapse -->
			</div>
			<!-- /.navbar-static-side -->
		</nav>

		<div id="page-wrapper">
			<div class="row">
				<div class="col-lg-12">
					<h1 class="page-header">Administracion de Servicios</h1>
				</div>
				<!-- /.col-lg-12 -->
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-green">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-tasks fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">12</div>
									<div>Servicios pendientes</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">Ver detalles</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-3 col-md-6">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-thumbs-o-up fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">26</div>
									<div>Evaluaciones</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">Ver detalles</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>

				<div class="col-lg-3 col-md-6">
					<div class="panel panel-yellow">
						<div class="panel-heading">
							<div class="row">
								<div class="col-xs-3">
									<i class="fa fa-calendar fa-5x"></i>
								</div>
								<div class="col-xs-9 text-right">
									<div class="huge">3</div>
									<div>Servicios para Hoy</div>
								</div>
							</div>
						</div>
						<a href="#">
							<div class="panel-footer">
								<span class="pull-left">Mostrar Calendario</span> <span
									class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
								<div class="clearfix"></div>
							</div>
						</a>
					</div>
				</div>
			</div>
			<!-- /.row -->
			<div class="row">
				<div class="col-lg-12">
					<div id="contentDiv">
						<jsp:include page="user/userCalendar.jsp" /></div>
					<!-- /#page-wrapper -->
				</div>
			</div>
			<!-- /#wrapper -->
</body>

</html>