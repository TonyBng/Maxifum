<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="container col-sm-12">
	<h1 class="well">Registration Form</h1>
	<div class="col-sm-12 well">
		<div class="row">
			<form:form id='newUserForm' commandName="newUser" method="post">
				<div class="col-sm-12">
					<div class="row">
						<div class="col-sm-6 form-group">
							<label>Nombre(s):</label>
							<form:input path="userFirstName" id='userFirstName' type="text"
								placeholder="Ingrese nombre o nombres" class="form-control"></form:input>
						</div>
						<div class="col-sm-6 form-group">
							<label>Apellidos:</label>
							<form:input path="userFirstName" id='userFirstName' type="text"
								placeholder="Ingrese apellidos" class="form-control"></form:input>
						</div>
					</div>

					<div class="row">
						<div class="col-sm-4 form-group">
							<label>Login:</label>
							<form:input path="userLogin" id='userLogin' type="text"
								placeholder="Ingrese Nuevo login para la cuenta"
								class="form-control"></form:input>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-4 form-group">
							<label>Contraseņa:</label>
							<form:input path="userPassword" id='userPassword' type="text"
								placeholder="Ingrese una contraseņa para el usuario"
								class="form-control"></form:input>
						</div>
						<div class="col-sm-4 form-group">
							<label>Confirmar Contraseņa:</label>
							<form:input path="userPassword2" id='userPassword2' type="text"
								placeholder="Ingrese nuevamente la contraseņa"
								class="form-control"></form:input>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label>Telefono:</label>
							<form:input path="phoneNumber" id='phoneNumber' type="text"
								placeholder="Ingrese una contraseņa para el usuario"
								class="form-control"></form:input>
						</div>
					</div>
					<div class="row">
						<div class="col-sm-6 form-group">
							<label> Administrador<form:checkbox path="administrator"
									id='administrator' value=""></form:checkbox></label>
						</div>

					</div>
					<form:button id="btnSummitNewUser" type="submit"
						class="btn btn-lg btn-info">Submit</form:button>
				</div>
			</form:form>
		</div>
	</div>
</div>
<script>
	$(document).ready(function() {
		$('#newUserForm').submit(function(event) {
			event.preventDefault();
			 var form = $('#newUserForm').serialize();
			$.ajax({
				type : "post",
				data : form,
				url : "newUserAction",
				success : function(data) {
					$('#contentDiv').html(data);
				},
				error : function(xhr, status, error) {
					console.log(error)
				}
			});
		});
	});
</script>