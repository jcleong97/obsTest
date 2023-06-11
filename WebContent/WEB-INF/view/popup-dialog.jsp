<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Show Name Dialog</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/dialog.css">
<style>
</style>
</head>
<body>
	<div id="popupDialog">
		<h1>Hello ${studentName}</h1>
		<button onclick="closeDialog()">Close</button>
	</div>
</body>
</html>