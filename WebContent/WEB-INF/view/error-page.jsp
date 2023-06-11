<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Error Page</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login.css">
</head>
<body>

	<div class="container">
		<form class="login-form">
			<h2>Error</h2>
			<p>Wrong username or password.</p>
			<button type="button" onclick="goBack()" class="back-button">Back</button>
		</form>
	</div>

	<script>
		function goBack() {
			window.history.back();
		}
	</script>

</body>
</html>