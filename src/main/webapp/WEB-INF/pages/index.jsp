<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>TimeBank - Invest your time</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/static/css/bootstrap.min.css"/>"
	type="text/css">

<!-- Custom Fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="<c:url value="/resources/static/font-awesome/css/font-awesome.min.css"/>"
	type="text/css">

<!-- Plugin CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/static/css/animate.min.css" />"
	type="text/css">

<!-- Custom CSS -->
<link rel="stylesheet"
	href="<c:url value="/resources/static/css/creative.css" />"
	type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">

	<nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
		<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand page-scroll" href="#page-top">TIMEBANK</a>
			</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav navbar-right">
					<li><a class="page-scroll" href="#about">About</a></li>
					<li><a class="page-scroll" href="#services">People</a></li>
					<li><a class="page-scroll" href="#portfolio">Skills</a></li>
					<li><a class="page-scroll" href="#login">Login</a></li>
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container-fluid -->
	</nav>

	<header>
		<div class="header-content">
			<div class="header-content-inner">
				<h1>VALUE YOUR TIME</h1>
				<hr>
				<p>Now you have the chance to share your time and skills, to
					help other people and receive help!</p>
				<a href="/timebank/signup"
					class="btn btn-primary btn-xl page-scroll">Join</a>
			</div>
		</div>
	</header>

	<section class="bg-primary" id="about">
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-lg-offset-2 text-center">
					<h2 class="section-heading">Make a difference</h2>
					<hr class="light">
					<p class="text-faded">Through this project we aim to offer to
						people the chance to replace the money with time. The application
						Timebank operates as a bank, only that it replaces the money
						minutes. Users help other users in their tasks and the time they
						offer is deposited in their personal account , with which in turn
						may require assistance in another area . Timebank is addressed to
						any person who wants to offer their help without being rewarded
						necessarily in material goods . During life, the things you learn
						have a much stronger impact on lifestyle than the items
						purchased.Offering help and information you’ll obtain the
						satisfaction of being able to influence the lives of other people.</p>
				</div>
			</div>
		</div>
	</section>

	<section id="services">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<h2 class="section-heading">Find people with the same interest</h2>
					<hr class="primary">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="container">
				<div class="row" style="padding-left: 30%; padding-right: 30%">
					<div class="col-lg-6 col-md-6 text-center">
						<div class="service-box">
							<img
								src="<c:url value="/resources/static/img/portfolio/boy_avatar-round.png"/>"
								class="img-responsive" alt="" height="200" width="200">
							<p class="text-muted">John wants to learn Spanish.</p>
						</div>
					</div>
					<div class="col-lg-6 col-md-6 text-center">
						<div class="service-box">
							<img
								src="<c:url value="/resources/static/img/portfolio/girl_round_avatar.png"/>"
								class="img-responsive" alt="" height="200" width="200">
							<p class="text-muted">Kelly can help him!</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section class="no-padding" id="portfolio">
		<div class="container-fluid">
			<div class="row no-gutter">
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="<c:url value="/resources/static/img/portfolio/1.jpg"/>"
						class="img-responsive" alt="">

					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="<c:url value="/resources/static/img/portfolio/2.jpg"/>"
						class="img-responsive" alt="">

					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="<c:url value="/resources/static/img/portfolio/3.jpg"/>"
						class="img-responsive" alt="">

					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="<c:url value="/resources/static/img/portfolio/4.jpg"/>"
						class="img-responsive" alt="">

					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="<c:url value="/resources/static/img/portfolio/5.jpg"/>"
						class="img-responsive" alt="">
					</a>
				</div>
				<div class="col-lg-4 col-sm-6">
					<a href="#" class="portfolio-box"> <img
						src="<c:url value="/resources/static/img/portfolio/6.jpg"/>"
						class="img-responsive" alt="">

					</a>
				</div>
			</div>
		</div>
	</section>

	<aside class="bg-dark">
		<div class="container text-center">
			<div class="call-to-action">
				<h2>Share your skills</h2>
			</div>
		</div>
	</aside>

	<section id="login">
		<div class="container">
			<form:form commandName="user">
				<h2>Enter your account credentials</h2>

				<div class="form-group">
					<label class="control-label" for="email">Email:</label>
					<div>
						<form:input path="email" class="form-control"
							placeholder="Enter email" type="email" />
						<form:errors path="email" />
					</div>
				</div>

				<div class="form-group">
					<label class="control-label" for="password">Password:</label>
					<div>
						<form:password path="password" class="form-control"
							placeholder="Enter password" />
						<form:errors path="password" />
					</div>
				</div>
				<div class="form-group">
					<div>
						<button type="submit" class="btn btn-default">Log in</button>
					</div>
				</div>
			</form:form>
		</div>
	</section>

	<!-- jQuery -->
	<script src="<c:url value="/resources/static/js/jquery.js"/>"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="<c:url value="/resources/static/js/bootstrap.min.js"/>"></script>

	<!-- Plugin JavaScript -->
	<script
		src="<c:url value="/resources/static/js/jquery.easing.min.js"/>"></script>
	<script src="<c:url value="/resources/static/js/jquery.fittext.js"/>"></script>
	<script src="<c:url value="/resources/static/js/wow.min.js"/>"></script>

	<!-- Custom Theme JavaScript -->
	<script src="<c:url value="/resources/static/js/creative.js"/>"></script>

</body>

</html>
