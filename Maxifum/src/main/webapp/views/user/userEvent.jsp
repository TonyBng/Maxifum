<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
						<th>Id</th>
						<th>Para el dia:</th>
						<th>Hora:</th>
						<th>Cliente:</th>
					</tr>
					</thead>
					<tbody>
						<c:forEach items="${serviceList}" var="service">
							<tr>
								<td>${service.serviceId}</td>
								<td>${service.year}:${service.month}:${service.day}</td>
								<td>${service.hour}:${service.minute}</td>
								<td>DummyClient1</td>
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
		$('.table').DataTable({
			 "language": {
		            "lengthMenu": "Mostrando _MENU_ servicios por pagina.",
		            "zeroRecords": "No tienes servicios pendientes.",
		            "info": "Mostrando _PAGE_ de _PAGES_",
		            "infoEmpty": "No se encontro servicio.",
		            "infoFiltered": "(Filtrado de un total de _MAX_ servicios.)",
		            "search":         "Buscar:",
		            	  "paginate": {
		            	        "first":      "Primero",
		            	        "last":       " Ultimo",
		            	        "next":       "Siguiente",
		            	        "previous":   "Anterior"
		            	    },
		            	    "aria": {
		            	        "sortAscending":  ": Activar ordenamiento acendente",
		            	        "sortDescending": ": Activar ordenamiento decendente"
		            	    }
		        }
        });
	});
</script>

