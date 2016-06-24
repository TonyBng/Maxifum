<!DOCTYPE html>
<style>
.navbar-inverse .navbar-nav>li>a {
	color: #AAAAAA;
}

.navbar-inverse .navbar-brand {
	color: #FFFFFF;
}
</style>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#">Maxifum</a>
		</div>
		<ul class="nav navbar-nav" style="">
			<li class="active"><a href="userCalendar" class="headerLink">Calendario</a>
			<li><a href="userServices" class="headerLink">Servicios</a></li>
			<li><a href="adminCalendar" class="headerLink">Calendario
					Administrativo</a></li>
			<li><a href="adminGraphs" class="headerLink">Estadisticas</a></li>
			<li><a href="adminPendings" class="headerLink">Evaluaciones</a></li>
			<li><a href="adminUsers" class="headerLink">Personal</a></li>
		</ul>
	</div>
</nav>
<script>
	$(".nav a").on("click", function() {
		$(".nav").find(".active").removeClass("active");
		$(this).parent().addClass("active");
	});
</script>