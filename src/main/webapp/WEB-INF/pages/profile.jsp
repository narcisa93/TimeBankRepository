
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<html>
<head>
<title>Profile</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="src/main/webapp/resources/static/css/custom.css">
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
						<li><a href="/timebank/project"> Create project </a></li>
						<li><a href="/timebank/newsFeed"> News feed </a></li>
						<li><a href="/timebank/logout"> Log out </a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>

	<form:form commandName="user">
		<div class="mainContent">
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-18">
							<div class="card">
								<div class="list-group">




									<div class="col-sm-2">
										<img src="/timebank/upload" alt="Smiley face" height="150"
											width="200" / class="img-thumbnail" alt="Smiley face"
											height="200" width="200">
										<div>
											<label>Skills</label>
											<p class="list-group-item-text">
												<c:forEach items="${user.getSkills()}" var="skill">
													<p>${skill.getName()}
												</c:forEach>
											</p>
										</div>
										<label>Earned time</label>
										<p>${user.getTimeAccount().getAmountOfTime()}</p>

										<label>Level</label>
										<p>${user.getTimeAccount().getLevel().getLevelName()}</p>
									</div>

									<div class="col-sm-9">


										<a href="#" class="list-group-item active">
											<h4 class="list-group-item-heading">About</h4>
										</a> <a href="#" class="list-group-item">
											<h4 class="list-group-item-heading">Name</h4>
											<p class="list-group-item-text">${user.getFullName()}</p>
										</a> <a href="#" class="list-group-item">
											<h4 class="list-group-item-heading">Email</h4>
											<p class="list-group-item-text">${user.getEmail()}</p>
										</a> <a href="#" class="list-group-item">
											<h4 class="list-group-item-heading">Phone number</h4>
											<p class="list-group-item-text">${user.getPhoneNumber()}</p>
										</a> <a href="#" class="list-group-item">
											<h4 class="list-group-item-heading">Addreses</h4>
											<p class="list-group-item-text">
												<c:forEach items="${user.getAddresses()}" var="address">
													<p>${address.getStreet()},${address.getCity()},
														${address.getCountry()}, ${address.getContinent()}
												</c:forEach>
											</p> <a href="/timebank/address">Update your address</a> | <a
											href="/timebank/skills">Update your skills</a>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>



				<div class="containerProjects">


					<div class="col-sm-11">
						<h3>My projects</h3>
						<table class="table" align=center>
							<thead>
								<tr>
									<th>Title</th>
									<th>Description</th>
									<th>Offered time</th>
									<th>Subscribers</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="projects" items="${userProjects}">
									<tr>
										<td>${projects.getTitle()}</td>
										<td>${projects.getDescription()}</td>
										<td>${projects.getOfferedTime()}</td>
										<td><a
											href="/timebank/subscriber?id=${projects.getIdProject()}">Show
												Subscribers</a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
					<br />

				</div>
	</form:form>
</body>
</html>
