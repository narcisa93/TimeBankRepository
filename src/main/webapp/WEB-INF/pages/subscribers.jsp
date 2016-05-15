<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Subscribers</title>
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
	<div class="main-panel">
		<nav class="navbar navbar-default navbar-fixed">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse"
						data-target="#navigation-example-2">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">Profile</a>
				</div>
				<div class="collapse navbar-collapse">
					<ul class="nav navbar-nav navbar-left">
						<li><a href="#" class="dropdown-toggle"
							data-toggle="dropdown"> <i class="fa fa-dashboard"></i>
						</a></li>
						<li><a href=""> <i class="fa fa-search"></i>
						</a></li>
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<li><a href="/timebank/profile"> Profile </a></li>
						<li><a href="/timebank/newsFeed"> News feed </a></li>
						<li><a href="/timebank/logout"> Log out </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<div class="container">

		<table class="table table-bordered">
			<thead>
				<tr>
					<th>Name</th>
					<th>Email</th>
					<th>Time</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="sub" items="${subscribers}">
					<tr>
						<td>${sub.getUser().getFullName()}</td>
						<td>${sub.getUser().getEmail()}</td>
						<td>${sub.getUser().getEmail()}</td>
						<td>
							<form action="/subscriber" method="post">
								<input type="hidden" name="id" value=${sub.getIdSubscriber() } />
								<div>
									<button type="submit" value="Accept" class="btn btn-default">Accept</button>
								</div>
							</form>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<br />
	</div>
</body>
</html>
