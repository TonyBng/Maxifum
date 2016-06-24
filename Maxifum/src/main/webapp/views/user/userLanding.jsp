<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Control de servicio - Maxifum</title>

<!-- *********************************************************************************************** -->
<!-- ***************************Libraries************************************ -->
<!-- JQuery -->
<script src="webjars/jquery/2.2.3/jquery.min.js"></script>
<script src="webjars/datatables/1.10.11/js/jquery.dataTables.js"
	type="text/javascript"></script>
<link href="webjars/datatables/1.10.11/css/jquery.dataTables.css"
	rel="stylesheet">
<script src="webjars/tablesorter/2.25.4/js/jquery.tablesorter.js"
	type="text/javascript"></script>
<script src="webjars/jquery-blockui/2.65/jquery.blockUI.js"
	type="text/javascript"></script>
<!-- Google Charts -->
<script type="text/javascript"
	src="https://www.gstatic.com/charts/loader.js"></script>
<!-- file uploader -->
<link href="webjars/bootstrap-fileinput/4.2.0/css/fileinput.min.css"
	media="all" rel="stylesheet" type="text/css" />
<script src="webjars/bootstrap-fileinput/4.2.0/js/fileinput.min.js"
	type="text/javascript"></script>
<script
	src="webjars/bootstrap-fileinput/4.2.0/js/fileinput_locale_es.js"></script>
<!-- Bootstrap -->
<link href="webjars/bootstrap/3.2.0/css/bootstrap.css" rel="stylesheet">
<script src="webjars/bootstrap/3.2.0/js/bootstrap.js"></script>
<!-- Select2 autocmplete select box -->
<link href="webjars/select2/4.0.2/dist/css/select2.min.css"
	rel="stylesheet">
<script src="webjars/select2/4.0.2/dist/js/select2.full.min.js"></script>
<!-- Font-Awsome-->
<link rel="stylesheet"
	href="webjars/font-awesome/4.6.2/css/font-awesome.min.css">
<!-- Date Picker  -->
<link
	href="webjars/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker.css"
	rel="stylesheet">
<script
	src="webjars/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.js"></script>
<!-- Notifications -->
<script src="webjars/sweetalert/1.1.3/dist/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="webjars/sweetalert/1.1.3/dist/sweetalert.css">
<!-- Custom Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<!-- Plugin CSS -->
<link rel="stylesheet" href="resources/css/magnific-popup.css" type="text/css">
<!-- Custom CSS -->
<link rel="stylesheet" href="resources/css/creative.css" type="text/css">

<!-- *********************************************************************************************** -->
<!-- *********************************************************************************************** -->
<script>
	$(document).ready(function() {
		$('.headerLink').click(function() {
			$('#contentDiv').load($(this).attr('href'));
			return false;
		});
	});
</script>
</head>
<body>
	<!-- NavBar -->
	<%-- 	<jsp:include page="userNavLinks.jsp" /> --%>
	<%@include file="userNavLinks.jsp"%>
	<!-- 	Content div -->
	<div class="container" id="contentDiv">
		<%-- 		<jsp:include page="userServices.jsp" /> --%>
		<%@include file="userCalendar.jsp"%>
	</div>
</body>
</html>