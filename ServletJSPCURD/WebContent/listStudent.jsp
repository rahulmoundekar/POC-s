<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <meta charset="utf-8">
  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      }
    });
 
    $( "#opener" ).click(function() {
      $( "#dialog" ).dialog( "open" );
    });
  });
  </script>
</head>
<body>
	<table>
		<thead>
			<tr>
				<th>Student ID</th>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Course</th>
				<th>Year</th>
				<th colspan="2">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${students}" var="student">
				<tr>
					<td><c:out value="${student.studentId}" /></td>
					<td><c:out value="${student.firstName}" /></td>
					<td><c:out value="${student.lastName}" /></td>
					<td><c:out value="${student.course}" /></td>
					<td><c:out value="${student.year}" /></td>
					<td><a
						href="StudentController.do?action=edit&studentId=<c:out value="${student.studentId }"/>">Update</a></td>
					<td><a
						href="StudentController.do?action=delete&studentId=<c:out value="${student.studentId }"/>">Delete</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<p>
		<a href="#" id="opener">Add Student</a>
	</p>
	<!-- StudentController.do?action=insert -->
	<div id="dialog" title="Enter Student Details">
		<form action="StudentController.do" method="post">
				<div>
					<label for="studentId">Student ID</label> <input type="text"
						name="studentId" value="<c:out value="${student.studentId}" />"
						readonly="readonly"  class="text ui-widget-content ui-corner-all" />
				</div>
				<div>
					<label for="firstName">First Name</label> <input type="text"
						name="firstName" value="<c:out value="${student.firstName}" />"
						 class="text ui-widget-content ui-corner-all" />
				</div>
				<div>
					<label for="lastName">Last Name</label> <input type="text"
						name="lastName" value="<c:out value="${student.lastName}" />"
						class="text ui-widget-content ui-corner-all" />
				</div>
				<div>
					<label for="course">Course</label> <input type="text" name="course"
						value="<c:out value="${student.course}" />"  class="text ui-widget-content ui-corner-all"/>
				</div>
				<div>
					<label for="year">Year</label> <input type="text" name="year"
						value="<c:out value="${student.year}" />"  class="text ui-widget-content ui-corner-all"/>
				</div>
				<div>
					<input type="submit" value="Submit" />
				</div>
		</form>
	</div>
	
	
</body>
</html>