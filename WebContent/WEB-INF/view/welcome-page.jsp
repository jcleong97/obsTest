<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Welcome Page</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/welcome.css">
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	$(document).ready(
			function() {
				$(".popupLink").click(
						function(event) {
							event.preventDefault(); // Prevent the default behavior of the link
							var dialogContent = $(this).attr("data-dialog"); // Get the URL of the dialog content
							var studentId = $(this).attr("data-student-id"); // Get the studentId
							$("#dialogContainer").load(
									dialogContent + "?studentId=" + studentId); // Load the dialog content dynamically with the studentId as a query parameter
						});
			});

	// Function to close the dialog
	function closeDialog() {
		$("#dialogContainer").empty();
	}
</script>
</head>
<body>
	<h1>Welcome, ${userId}</h1>

	<table>
		<tr>
			<th>Department</th>
			<th>Student ID</th>
			<th>Marks</th>
			<th>Pass %</th>
		</tr>

		<c:set var="previousDepartment" value="" />
		<c:forEach var="student" items="${students}">
			<c:choose>
				<c:when test="${previousDepartment != student.departmentId}">
					<tr>
						<td rowspan="${students.stream().filter(s -> s.departmentId == student.departmentId).count()}">${student.departmentId}</td>
						<td><a class="popupLink" href="#" data-dialog="popUpDialog" data-student-id="${student.studentId}">${student.studentId}</a></td>
						<td>${student.marks}</td>
						<c:set var="passCount" value="${0}" />
						<c:set var="totalCount" value="${0}" />
						<c:forEach var="s" items="${students}">
							<c:if test="${s.departmentId == student.departmentId}">
								<c:set var="totalCount" value="${totalCount + 1}" />
								<c:if test="${s.pass}">
									<c:set var="passCount" value="${passCount + 1}" />
								</c:if>
							</c:if>
						</c:forEach>
						<td rowspan="${students.stream().filter(s -> s.departmentId == student.departmentId).count()}">${(passCount * 100) / totalCount}%</td>
					</tr>
					<c:set var="previousDepartment" value="${student.departmentId}" />
				</c:when>
				<c:otherwise>
					<tr>
						<td><a class="popupLink" href="#" data-dialog="popUpDialog" data-student-id="${student.studentId}">${student.studentId}</a></td>
						<td>${student.marks}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</c:forEach>
	</table>

	<div id="dialogContainer"></div>
</body>
</html>