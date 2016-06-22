<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link
	href="${pageContext.request.contextPath}/resources/css/fullcalendar.css"
	rel="stylesheet">
<script
	src="${pageContext.request.contextPath}/webjars/jquery/2.2.3/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/moment.js"></script>
<script
	src="${pageContext.request.contextPath}/resources/js/fullcalendar.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div id="calendar"></div>
</body>
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
			header : {
				left : 'prev,next today',
				center : 'title',
				right : 'month,agendaWeek,agendaDay'
			},
			/*
				defaultView option used to define which view to show by default,
				for example we have used agendaWeek.
			 */
			defaultView : 'agendaWeek',
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
			editable : true,
			/*
				events is the main option for calendar.
				for demo we have added predefined events in json object.
			 */
			events : [ {
				title : 'All Day Event',
				start : new Date(y, m, 1)
			}, {
				title : 'Long Event',
				start : new Date(y, m, d - 5),
				end : new Date(y, m, d - 2)
			}, {
				id : 999,
				title : 'Repeating Event',
				start : new Date(y, m, d - 3, 16, 0),
				allDay : false
			}, {
				id : 999,
				title : 'Repeating Event',
				start : new Date(y, m, d + 4, 16, 0),
				allDay : false
			}, {
				title : 'Meeting',
				start : new Date(y, m, d, 10, 30),
				allDay : false
			}, {
				title : 'Lunch',
				start : new Date(y, m, d, 12, 0),
				end : new Date(y, m, d, 14, 0),
				allDay : false
			}, {
				title : 'Birthday Party',
				start : new Date(y, m, d + 1, 19, 0),
				end : new Date(y, m, d + 1, 22, 30),
				allDay : false
			}, {
				title : 'Click for Google',
				start : new Date(y, m, 28),
				end : new Date(y, m, 29),
				url : 'http://google.com/'
			} ]
		});

	});
</script>
</html>