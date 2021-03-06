<!doctype html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link href="indexstyle.css" rel="stylesheet" type="text/css" ></link>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">

    <title>Create Business</title>
  </head>
  <body>
  <div id="background">
		<div class="navbar">
			<ul>
		  		<li><a href="${pageContext.servletContext.contextPath}/indexServlet">Home</a></li>
						<li><a href="${pageContext.servletContext.contextPath}/login.jsp">Login</a></li>
						<li><a href="${pageContext.servletContext.contextPath}/signup.jsp">Register</a></li>
						<li><a href="${pageContext.servletContext.contextPath}/logoutServlet">Logout</a></li>
						<li><a href="${pageContext.servletContext.contextPath}/businessListServlet">Business List</a></li>
						<li><a href="${pageContext.servletContext.contextPath}/newEventServlet">New Event</a></li>
						<li><a href="${pageContext.servletContext.contextPath}/newBusiness.jsp">New Business</a></li>
				
						<li><a href="${pageContext.servletContext.contextPath}/adminServlet">Admin</a></li>
		  	</ul>
		</div>	
    <form action = "/servlets/SignUpServlet" method = "POST">
  		<div id="business" class="mx-auto w-50 form-group">
    		<label for="Business Name">Business Name</label>
    		<input type="text" class="form-control" id="Business Name" placeholder="Enter Business Name">
  		</div>
  		<c:if test="${! empty errorMessage}">
  			<div class="mx-auto w-50 alert alert-danger" role="alert">
		  		${errorMessage}
			</div>
		</c:if>
		<div class="mx-auto w-50">
  		<button type="submit" class="btn btn-dark" >Create New Business</button>
  		</div>
	</form>
	</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  </body>
</html>