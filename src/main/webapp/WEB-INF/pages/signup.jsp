
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
  <title>Sign Up Here</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  
  
</head>

<body>
<div class="container">
	<form:form commandName="user" enctype="multipart/form-data">

	<h2>Create profile</h2>
	<form  data-toggle="validator" role="form">
       
    <div class="row">
     <div class="col-xs-12 col-sm-6 col-md-6">
    <div class="form-group">
      <label class="control-label" for="firstName">First name:</label>
      <div>
        <form:input path="firstName" class="form-control" placeholder="Enter first name" type="text"/>
        <form:errors path="firstName" />
      </div>
      </div>
    </div>
    
     <div class="form-group">
     <div class="col-xs-12 col-sm-6 col-md-6">
      <label class="control-label" for="lastName">Last name:</label>
      <div>
        <form:input path="lastName"  class="form-control" placeholder="Enter last name" type="text"/>
        <form:errors path="lastName" />
      </div>
       </div>
    </div>
    
     </div>
    <div class="form-group">
    <label class="control-label" for="email">Email:</label>
    <div>
    	<form:input path="email" class="form-control"  placeholder="Enter email" type="email"/>
      	<form:errors path="email" />
    </div>
  </div>
  
  <label for="password" class="control-label">Password</label>
  <div class="form-group">
    <div class="form-group col-sm-6">
    <div>
      <form:password path="password" class="form-control" placeholder="Enter password" />
      <form:errors path="password" />
    </div>
    </div>
    <div class="form-group col-sm-6">
      <div>
      <form:password path="password" class="form-control" placeholder="Confirm password" />
    </div>
    </div>
    </div>
 
  <div class="form-group">
      <div>
      <label class="control-label" for="gender">Gender:</label>
       <form:radiobutton path="gender" value="Male" />Male 
	   <form:radiobutton path="gender" value="Female" />Female
	   <form:errors path="gender" />
      </div>
    </div>
    
    <div class="form-group">
    <label class="control-label" for="phoneNumber">Phone number:</label>
    <div>
      <form:input path="phoneNumber"  type="number" class="form-control"  placeholder="Enter phone number"/>
      <form:errors path="phoneNumber" />
    </div>
  </div>
    
    <div class="form-group">
    <label class="control-label" for="image">Image (in JPEG format only):</label>
    <div>
      <input name="image" type="file" />
    </div>
  </div>
  
  <div class="form-group"> 
    <div>
      <button type="submit" class="btn btn-default">Sign up</button>
    </div>
  </div>

	</form>
	</form:form>
	</div>
	<div  class="col-sm-offset-1 col-sm-10">
	<a href="/timebank/users">All Users</a> |
	<a href="/timebank/login">Login</a> |
	<a href="/timebank/">Sign Up</a> |
	<a href="/timebank/facebookConnect">Login with facebook</a> 
	</div>
</body>
</html>