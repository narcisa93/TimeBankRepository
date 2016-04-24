<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>News Feed</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link href="<c:url value="/resources/static/css/style.css"/>" rel="stylesheet" type="text/css">
<script type="text/javascript">
function showElem() {
    document.getElementById("success").style.visibility = "visible"; 
	
}
</script>
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
					<a class="navbar-brand" href="#">News Feed</a>
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
						<li><a href="/timebank/"> Profile </a></li>
						<li><a href="#"> Log out </a></li>
					</ul>
				</div>
			</div>
		</nav>
		<div class="container">
			<div class="col-md-9 ">
				<c:forEach var="project" items="${projects}">
					<div class="posts col-md-12">
						<div class="user-pic">
							<img src="/timebank/upload">
						</div>
						<div class="user-info">
							<p>${project.getUser().getFullName ()} offers ${project.getTitle()}</p>
						</div>
						<form action="/timebank/newsFeed" method="post">
						<input type="hidden" name="id" value=${project.getIdProject() } />
						<button type="submit" class="btn btn-success pull-right" onclick="showElem();">Apply</button>
						<input type="hidden" name="id" value=${successMessage} />
						
						</form>
					</div>
				</c:forEach>
			</div>
		</div>
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		<script
			src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</body>
</html>