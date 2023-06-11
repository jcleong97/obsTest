<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Login Page</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/login.css">
</head>
<body>


	<div class="container">
		<form class="login-form" action=loginPageFunction >
			<h2>Login</h2>
			<input type="text" name="userId" placeholder="User ID" required>
			<input type="password" name="password" placeholder="Password"
				required>
			<button type="submit">Login</button>
		</form>
	</div>
</body>
</html>