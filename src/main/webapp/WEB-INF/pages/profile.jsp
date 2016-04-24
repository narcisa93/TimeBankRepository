
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Profile</title>
	  <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
<form:form commandName="user">
 <div class="container">
 <img src="/timebank/upload" alt="Smiley face" height="200" width="200"/ class="img-rounded" alt="Smiley face" height="200" width="200" > 
 
 <div class="list-group">
    <a href="#" class="list-group-item active">
      <h4 class="list-group-item-heading">Name</h4>
      <p class="list-group-item-text">${user.getFullName()}</p>
    </a>
    <a href="#" class="list-group-item">
      <h4 class="list-group-item-heading">Email</h4>
      <p class="list-group-item-text">${user.getEmail()}</p>
    </a>
    <a href="#" class="list-group-item">
      <h4 class="list-group-item-heading">Phone number</h4>
      <p class="list-group-item-text">${user.getPhoneNumber()}</p>
    </a>
  </div>
 </div>

	</form:form>
<div class="containerProjects">
<p>My projects</p>
<table class="table table-bordered">
    <thead>
      <tr>
        <th>Title</th>
        <th>Description</th>
        <th>Offered time</th>
      </tr>
    </thead>
    <tbody>
     <c:forEach var="projects" items="${userProjects}">
      <tr>
        <td>${projects.getTitle()}</td>
        <td>${projects.getDescription()}</td>
        <td>${projects.getOfferedTime()}</td>
         <td><a href="/timebank/subscriber?id=${projects.getIdProject()}">Show Subscribers</a></td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <br/>
  <div class="col-sm-10">
	<br />
	<div class="col-sm-offset-1 col-sm-10">
	<a href="/timebank/project">Create project</a>  |
	<a href="/timebank/login">Login</a> |
	<a href="/timebank/">Sign Up</a>
	<a href="/timebank/newsFeed">News Feed</a>
	</div>
</body>
</html>
