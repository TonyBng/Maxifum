<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="panel panel-default">
	<div class="panel-heading">
		<i class="fa fa-tasks fa-fw"></i> Servicios Pendientes
		<div class="pull-right">
			<div class="btn-group"></div>
		</div>
	</div>
	<!-- /.panel-heading -->
	<div class="panel-body">
		<div id="calendar"></div>
	</div>
	<!-- /.panel-body -->
</div>

<!-- Calendar div -->
<div id="services">




<c:forEach items="${tables}" var="table">
		<div class="row">
			<H3>${table.fileName}</H3>
			<div class="col-sm-12">
				<div class="table-responsive">
					<table
						class="table table-bordered table-striped table-hover table-condensed">
						<thead>
							<tr>
								<c:forEach items="${table.columns}" var="column">
									<th>${column}</th>
								</c:forEach>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${table.rowList}" var="rowList">
								<tr>
									<c:forEach items="${rowList}" var="row">
										<td>${row.RD_data}</td>
									</c:forEach>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>

			</div>
		</div>
	</c:forEach>
</div>
