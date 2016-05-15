<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Create new project</title>
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
					<a class="navbar-brand" href="#">Project</a>
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
	<form:form commandName="project">
		<h2>Create a new project</h2>

		<div class="form-group">
			<label class="control-label" for="title">Title:</label>
			<div>
				<form:input path="title" class="form-control"
					placeholder="Enter the name of the project" type="text" />
				<form:errors path="title" />
			</div>
		</div>

		<div class="form-group">
			<label class="control-label" for="description">Description:</label>
			<div>
				<form:input path="description" class="form-control"
					placeholder="Enter description" type="text" />
				<form:errors path="description" />
			</div>
		</div>
		<div class="form-group">
			<label class="control-label" for="offeredTime">Offered time:</label>
			<div>
				<form:input path="offeredTime" class="form-control"
					name="offeredTime" placeholder="Enter offered time" type="number" />
				<form:errors path="offeredTime" />
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-1">
				<button type="submit" class="btn btn-default">Create
					project</button>
			</div>
		</div>


	</form:form>
	
</body>
</html>