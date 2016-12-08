<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title></title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<!--  additional custom styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/mystyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="${pageContext.request.contextPath}/resources/dashboard.css"
	rel="stylesheet">

</head>
<body>
	<div id="header"></div>
	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
					<li id="sidebarStudent"><a
						href="${pageContext.request.contextPath}/Lec/byid">View Course Taught
							</a></li>
					<li id="sidebarStudent"><a
						href="${pageContext.request.contextPath}/Lec/enrole">View Course Enrolement
							</a></li><li   class="active" id="sidebarStudent"><a
						href="${pageContext.request.contextPath}/Lec/grade">Grade a course
							</a></li><li id="sidebarStudent"><a
						href="${pageContext.request.contextPath}/Lec/all">View a Student Preformance
							</a></li>
				</ul>

			</div>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1 class="page-header">Dashboard</h1>
				

				<h2 class="sub-header" id="sectiontitle">Section title</h2>


<div class="container" style="width: 100%">
	<div class="row">
		<div class="col-xs-1">
			<label for="search"><h4>Search:</h4> </label>
		</div>
		<div class="col-xs-5">
			<input type="text" id="inputPK" class="form-control"
				placeholder="Search for something here">
		</div>
		<div class="col xs-6">
			<a class="btn btn-success"
				href="${pageContext.request.contextPath}/Lec/enrole"><spring:message
					code="Search" /></a>
		</div>
	</div>
</div>
<!--  <a href="${pageContext.request.contextPath}/gokul/create">Add
	Employee</a>-->


<div class="table-responsive">
	<table class="table table-striped">
		<thead>
			<tr>

				<th><spring:message code="fieldLabel.Studentid" /></th>
				<th><spring:message code="fieldLabel.name" /></th>
				<th><spring:message code="fieldLabel.coursename" /></th>
				<th><spring:message code="fieldLabel.grade" /></th>
				<th><spring:message code="fieldLabel.earncredit" /></th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="role" items="${Enlist}">
				<tr class="listRecord">
					<td>${role.studentDetails.studentId}</td>
					<td>${role.studentDetails.firstName}
						${role.studentDetails.lastName}</td>
						

					<td>${role.courses.courseName}</td>
					<td><select>
							<option>--NA--</option>
							<option>A</option>
							<option>B</option>
							<option>C</option>
							<option>D</option>
							<option>E</option>
							<option>F</option>

					</select></td>
					<td align="center"><a class="btn btn-primary"
						href="${pageContext.request.contextPath}/Lec/enrole/update">( update )</a></td>
				</tr>

			</c:forEach>
		</tbody>
	</table>
</div>





















			</div>

</div>
</div>
</div>

	<footer
		class="t7-container t7-dark-grey t7-padding-32 t7-padding-xlarge footer">
	<div id="footer"></div>
	</footer>

</body>
<script>
	$(function()
	{
		$("#header").load("${pageContext.request.contextPath}/resources/header.html");
		$("#footer").load("${pageContext.request.contextPath}/resources/footer.html");
	});



</script>
</html>