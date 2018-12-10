<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Edit Event</title>
  </head>
  <body>
  
  <li><a href="${pageContext.servletContext.contextPath}/indexServlet">Home</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/login.jsp">Login</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/signup.jsp">Register</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/logoutServlet">Logout</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/businessListServlet">Business List</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/newEventServlet">New Event</a></li>
				<li><a href="${pageContext.servletContext.contextPath}/newBusiness.jsp">New Business</a></li>
		
				<li><a href="${pageContext.servletContext.contextPath}/adminServlet">Admin</a></li>
    <form action="editEventServlet" method="post">
		<c:forEach items="${list}" var="event">
  		<div class="form-group">
    		<label for="InputEventName">Event Title</label>
    		<input type="text" class="form-control" placeholder="${event.name}" id="InputEventName" placeholder="Enter Name For Event">
  		</div>
  		<select class="custom-select" name="business">
  			<option>Select a business from this list</option>
  			<c:forEach items="${BusinessList}" var = "business">
  				<option value="${business.name}">${business.name}</option>
  			</c:forEach>
  		</select>
  		<div class="form-group">
    		<label for="InputEventDetails">Event Details</label>
    		<textarea class="form-control" id="InputEventName" placeholder="Describe the event" rows="3">${event.description}</textarea>
  		</div>
  		<div class="form-group">
		  <label for="startDate">Start Date</label>
		  <input class="form-control" type="date" value="${event.SDate}" id="startDate" name="Start Date" value="">
		</div>
		<div class="form-group">
		  <label for="startTime">Start Time</label>
		  <input class="form-control" type="time" value="${event.STime}" id="startTime">
		</div>
		<div class="form-group">
		  <label for="endDate">End Date</label>
		  <input class="form-control" type="date" value="${event.EDate}" id="endDate" name="End Date" value="">
		</div>
		<div class="form-group">
		  <label for="endTime">End Time</label>
		  <input class="form-control" type="time" value="${event.ETime}" id="endTime">
		</div>
		<div class="form-group">
    		<label for="InputLocation">Event Location</label>
    		<input type="text" class="form-control" value="${event.location}" id="InputLocation" placeholder="Location">
  		</div>
  		<button type="submit" class="btn btn-primary">Submit</button>
  		</c:forEach>
	</form>
	

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>