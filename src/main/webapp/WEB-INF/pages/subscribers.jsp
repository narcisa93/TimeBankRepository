
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Subscribers</title>
    <meta charset="utf-8">
	  <meta name="viewport" content="width=device-width, initial-scale=1">
	  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>
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
            <input type="hidden" name="id" value=${sub.getIdSubscriber()} />
             <div>
     		 <button type="submit"  value ="Accept" class="btn btn-default">Accept</button>
   			 </div>
          </form>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
  <br/>
  <div class="col-sm-10">
  <a href="/timebank/users">All Users</a>    |    <a href="/timebank/login">Login</a>    |    <a href="/timebank/">Sign Up</a>
  </div>
</div>
</body>
</html>
