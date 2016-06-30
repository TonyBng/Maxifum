
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</style>
<div class="panel panel-default">
	<div class="panel-heading">
		<i class="fa fa-tasks fa-fw"></i> Servicios Pendientes
		<div class="pull-right">
			<div class="btn-group"></div>
		</div>
	</div>
	<!-- /.panel-heading -->
	<div class="panel-body">
		<div class="col-sm-12">
			<div class="table-responsive">
				<table
					class="table table-bordered table-striped table-hover table-condensed">
					<thead>
						<tr>
							<th>Servicio</th>
							<th>Evaluacion</th>
							<th>Comentarios</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${serviceList}" var="service">
							<tr>
								<td>${service.serviceId}</td>
								<td><input id="star${service.serviceId}" type="text"
									class="rating stars" data-size="sm"
									value="${service.evaluation}"></td>
								<td>${service.clientComment}</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<!-- /.panel-body -->
</div>
<script>
	$(document).ready(function() {
		$(".stars").rating({
			max : 5,
			size : 'sm',
			stars : 5,
			readonly : false,
			showClear : false,
			starCaptions : function(val) {
				if(val==0){
					return 'No evaluado';
				} else if (val < 2) {
					return ' Malo';
				} else if (val < 4) {
					return ' regular';
				} else if (val > 4) {
					return 'Bueno';
				}
			}
		});
		$('.table').DataTable({
			"language" : {
				"lengthMenu" : "Mostrando _MENU_ servicios por pagina.",
				"zeroRecords" : "No tienes servicios pendientes.",
				"info" : "Mostrando _PAGE_ de _PAGES_",
				"infoEmpty" : "No se encontro servicio.",
				"infoFiltered" : "(Filtrado de un total de _MAX_ servicios.)",
				"search" : "Buscar:",
				"paginate" : {
					"first" : "Primero",
					"last" : " Ultimo",
					"next" : "Siguiente",
					"previous" : "Anterior"
				},
				"aria" : {
					"sortAscending" : ": Activar ordenamiento acendente",
					"sortDescending" : ": Activar ordenamiento decendente"
				}
			}
		});
	});
</script>
