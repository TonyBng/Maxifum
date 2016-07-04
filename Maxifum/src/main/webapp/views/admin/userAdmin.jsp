
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

</style>
<div class="panel panel-default">
	<div class="panel-heading">
		<i class="fa fa-tasks fa-fw"></i> Usuarios
		<div class="pull-right">
			<div class="btn-group"></div>
		</div>
	</div>
	<!-- /.panel-heading -->
	<div class="panel-body">
		<div class="row">
			<div class="col-sm-12" style="margin-top: 10px; margin-bottom: 10px;">
				<div class="pull-right ">
					<button id="btnAddUser" class="btn btn-success">Añadir usuario <i class="fa fa-user-plus  fa-fw" aria-hidden="true"></i></button>
				</div>
			</div>
			<div class="col-sm-12">
				<div class="table-responsive">
					<table
						class="table table-bordered table-striped table-hover table-condensed">
						<thead>
							<tr>
								<th>Login</th>
								<th>Nombre</th>
								<th>Apellido</th>
								<th>Telefono</th>
								<th>Administrador</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${userList}" var="user">
								<tr>
									<td>${user.userLogin}</td>
									<td>${user.userFirstName}</td>
									<td>${user.userLastName}</td>
									<td>${user.phoneNumber}</td>
									<td>${user.administrator}</td>
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
		$(document)
				.ready(
						function() {
							$('#btnAddUser').click(function() {
								$.ajax({
									url : 'nuevoUsuario',
									data : {},
									success : function(data) {
										$('#contentDiv').html(data);
									}
								})
							});
							$('.table')
									.DataTable(
											{
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