
<!-- Calendar -->
<script src="${pageContext.request.contextPath}/resources/js/moment.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/fullcalendar.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/fullcalendar.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/lang-all.js"></script>

<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap-timepicker.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/resources/js/bootstrap-timepicker.js"></script>

<div class="col-md-4 text-center">
	<h3 class="">Calendario de Servicios</h3>
</div>

<!-- Calendar div -->
<div id="calendar"></div>
<script>
	$(document).ready(function() {

		/*
		date store today date.
		d store today date.
		m store current month.
		y store current year.
		 */
		var date = new Date();
		var d = date.getDate();
		var m = date.getMonth();
		var y = date.getFullYear();

		// page is now ready, initialize the calendar...

		$('#calendar').fullCalendar({
			/*
			header option will define our calendar header.
			left define what will be at left position in calendar
			center define what will be at center position in calendar
			right define what will be at right position in calendar
			 */
			// 			header : {
			// 				left : 'prev,next today',
			// 				center : 'title',
			// 				right : 'month,agendaWeek,agendaDay'
			// 			},
			lang : 'es',
			/*
				defaultView option used to define which view to show by default,
				for example we have used agendaWeek.
			 */
			// 			defaultView : 'agendaWeek',
			/*
				selectable:true will enable user to select datetime slot
				selectHelper will add helpers for selectable.
			 */
			selectable : true,
			selectHelper : true,
			/*
				when user select timeslot this option code will execute.
				It has three arguments. Start,end and allDay.
				Start means starting time of event.
				End means ending time of event.
				allDay means if events is for entire day or not.
			 */
			select : function(start, end, allDay) {
				/*
					after selection user will be promted for enter title for event.
				 */
				var title = prompt('Event Title:');
				/*
					if title is enterd calendar will add title and event into fullCalendar.
				 */
				if (title) {
					calendar.fullCalendar('renderEvent', {
						title : title,
						start : start,
						end : end,
						allDay : allDay
					}, true // make the event "stick"
					);
				}
				calendar.fullCalendar('unselect');
			},
			/*
				editable: true allow user to edit events.
			 */
			editable : false,
			/*
				events is the main option for calendar.
				for demo we have added predefined events in json object.
			 */
			events : [ {
				title : '0001 - Cliente',
				start : new Date(y, m, 1),
				url : "#collapseExample"
			} ],
			eventClick : function(event) {
				if (event.url) {
					$('#login-modal').modal('toggle');
					$('#horaArribo').timepicker({

					}).on('show.bs.modal', function(event) {
						event.stopPropagation();
					});
					$('#horaPartida').timepicker({

					}).on('show.bs.modal', function(event) {
						event.stopPropagation();
					});
					return false;
				}
			}
		});

	});
</script>



<div class="modal fade" id="login-modal" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel" aria-hidden="true"
	style="display: none;">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header" align="center">
				<img class="" id="img_logo" src="resources/img/maxifum.png">
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>
				</button>
			</div>

			<div id="div-forms">

				<form id="login-form" action="closeService">
					<div class="modal-body">
						<!-- 						<div id="div-login-msg"> -->
						<!-- 							<div id="icon-login-msg" class=""></div> -->
						<!-- 							<label id="text-login-msg" for="login_username">Nombre de -->
						<!-- 								usuario:</label> <input id="login_username" class="form-control" -->
						<!-- 								type="text" placeholder="Ingrese su nombre de usuario" required> -->
						<!-- 						</div> -->
						<!-- 						<label id="text-login-msg" for="login_password">Contrase�a:</label> -->
						<!-- 						<input id="login_password" class="form-control" type="password" -->
						<!-- 							placeholder="Ingrese Contrase�a" required> -->
						<!-- 					</div> -->
						<!-- 					<div class="modal-footer"> -->
						<!-- 						<div> -->
						<!-- 							<button type="submit" class="btn btn-primary btn-lg btn-block">Login</button> -->
						<!-- 						</div> -->



						<div class="col-md-4 text-center">
							<h3 class="">Servicio: 0001</h3>
						</div>

						<label id="txthoraArribo" for="horaArribo">Hora de Arribo:</label>
						<div class="input-group bootstrap-timepicker timepicker">

							<input id="horaArribo" type="text"
								class="form-control input-small timePicker"> <span
								class="input-group-addon"><i
								class="glyphicon glyphicon-time"></i></span>
						</div>
						<label id="text-login-msg" for="horaPartida">Hora de
							Partida:</label>
						<div class="input-group bootstrap-timepicker timepicker">
							<input id="horaPartida" type="text"
								class="form-control input-small"> <span
								class="input-group-addon"><i
								class="glyphicon glyphicon-time"><a></a></i></span>
						</div>
						<div class="form-group">
							<label for="comment">Observaciones:</label>
							<textarea class="form-control" rows="5" id="comment"></textarea>
						</div>
						<div class="col-md-4 text-center">
							<button type="submit" class="btn btn-success">Completar
								servicio</button>
						</div>
					</div>
				</form>
				<script type="text/javascript">
					$(document).ready(function() {

					});
				</script>

			</div>
		</div>
	</div>
</div>
