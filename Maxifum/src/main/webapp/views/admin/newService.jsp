<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="panel panel-default">
	<div class="panel-heading">

		<i class="fa fa-calendar-plus-o fa-fw"></i> Nuevo Servicio
	</div>
	<!-- /.panel-heading -->
	<div class="panel-body">
		<div class="row">
			<!-- Select Basic -->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group">
						<label class="col-md-4 control-label" for="selectClient">Cliente</label>
						<div class="col-md-5">
							<select id="selectClient" name="selectClient"
								class="selectpicker" data-live-search="true" data-style="size:100">
								<option value="1">Cliente 1</option>
								<option value="2">Cliente 2</option>
							</select>
						</div>
<!-- 						<div class="row"> -->
<!-- 							<button id="btnNewClient " name="btnNewClient" -->
<!-- 								class="btn btn-info"> -->
<!-- 								Cliente Nuevo &nbsp; <i class="fa fa-user-plus fa-2x"></i> -->
<!-- 							</button> -->
<!-- 						</div> -->
					</div>
				</div>
			</div>

			<!-- Select Multiple -->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group">
						<label class="col-md-4 control-label" for="selectLocations">Sitio</label>
						<div class="col-md-8">
							<select id="selectLocations" name="selectLocations"
								class="form-control" multiple="multiple">
								<option value="1">Locacion 1</option>
								<option value="2">Locacion 2</option>
							</select>
						</div>
					</div>
					<div class="row">
						<button id="btnNewClient " name="btnNewClient"
							class="btn btn-info">
							Nueva Ubicacion &nbsp; <i class="fa fa-map-marker fa-2x"></i>
						</button>
					</div>
				</div>
			</div>

			<!-- Text input-->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group  ">
						<label class="col-md-4 control-label" for="txtDueDate">Fecha
							de Servicio</label>
						<div class="col-md-8 input-group bootstrap-timepicker timepicker">
							<input id="txtDueDate" name="txtDueDate" type="text"
								placeholder="Ingrese Fecha"
								class="form-control input-md timePicker" required=""><span
								class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span>
						</div>
					</div>
				</div>
			</div>

			<!-- Text input-->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group">
						<label class="col-md-4 control-label" for="txtDueTime">Hora
							de Servicio</label>
						<div class="col-md-8 input-group bootstrap-timepicker timepicker">
							<input id="txtDueTime" name="txtDueTime" type="text"
								placeholder="Ingrese Hora"
								class="form-control input-md timePicker" required=""><span
								class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span>
						</div>
					</div>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group">
						<label class="col-md-4 control-label" for="selectReponsable">Responsable
							del Servicio</label>
						<div class="col-md-8">
							<select id="selectReponsable" name="selectReponsable"
								class="form-control">
								<option value="1">Responsable 1</option>
								<option value="2">Responsable 2</option>
							</select>
						</div>
					</div>
				</div>
			</div>

			<!-- Select Basic -->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group">
						<label class="col-md-4 control-label" for="selectServiceType">Tipo
							de Servicio</label>
						<div class="col-md-8">
							<select id="selectServiceType" name="selectServiceType"
								class="form-control">
								<option value="1">Tipo 1</option>
								<option value="2">Tipo 2</option>
							</select>
						</div>
					</div>
				</div>
			</div>

			<!-- Textarea -->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group">
						<label class="col-md-4 control-label" for="txtComments">Anotaciones</label>
						<div class="col-md-8">
							<textarea class="form-control" id="txtComments"
								name="txtComments"></textarea>
						</div>
					</div>
				</div>
			</div>

			<!-- Button -->
			<div class="row">
				<div class="col-md-10 col-md-offset-1" style="margin-top: 5px">
					<div class="form-group">
						<label class="col-md-4 control-label" for="btnNewClient"></label>
						<div class="col-md-4">

							<button id="btnNewClient" name="btnNewClient"
								class="btn btn-success">Agendar Servicio</button>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- /.panel-body -->
</div>
<script>
	$(document).ready(function() {
		$('.selectpicker').selectpicker({
			size : 100
		});
		$('#txtDueDate').datepicker();
		$('#txtDueTime').timepicker();
	});
</script>