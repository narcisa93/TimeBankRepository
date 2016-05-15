<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Log in</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<form:form commandName="address">
			<h2>Enter your address</h2>

			<div class="form-group">
				<label class="control-label" for="street">Street name:</label>
				<div>
					<form:input path="street" class="form-control"
						placeholder="Enter street name:" type="text" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label" for="city">City:</label>
				<div>
					<form:input path="city" class="form-control"
						placeholder="Enter city:" type="text" />
				</div>
			</div>

			<div class="form-group">
				<label class="control-label" for="country">Country:</label>
				<div>
					<form:input path="country" class="form-control"
						placeholder="Enter country:" type="text" />
				</div>

			</div>
			<div class="form-group">
				<label class="control-label" for="email">Continent:</label>
				<div>
					<form:input path="continent" class="form-control"
						placeholder="Enter continent" type="text" />
				</div>
			</div>


			<div class="form-group">
				<div>
					<button type="submit" class="btn btn-default">Save address</button>
				</div>
			</div>
		</form:form>
	</div>
	<div class="col-sm-offset-1 col-sm-10">
		<a href="/timebank/users">All Users</a> | <a href="/timebank/login">Login</a>
		| <a href="/timebank/">Sign Up</a>
	</div>
</body>
</html>
