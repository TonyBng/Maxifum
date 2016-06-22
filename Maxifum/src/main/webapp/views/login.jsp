<style>
/* html { */
/* 	overflow: hidden; */
/* 	height: 100%; */
/* } */

/* body { */
/* 	overflow: auto; */
/* 	height: 100%; */
/* } */

/* .modal-open { */
/* 	overflow: auto; */



</style>



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

				<form id="login-form" action="loginAction">
					<div class="modal-body">
						<div id="div-login-msg">
							<div id="icon-login-msg" class=""></div>
							<label id="text-login-msg" for="login_username">Nombre de
								usuario:</label> <input id="login_username" class="form-control"
								type="text" placeholder="Ingrese su nombre de usuario" required>
						</div>
						<label id="text-login-msg" for="login_password">Contraseña:</label>
						<input id="login_password" class="form-control" type="password"
							placeholder="Ingrese Contraseña" required>
					</div>
					<div class="modal-footer">
						<div>
							<button type="submit" class="btn btn-primary btn-lg btn-block">Login</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>
</div>