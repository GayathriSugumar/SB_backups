<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/design.css" rel="stylesheet">
  
  </style>
</head>
<body>

    <div class="container">
    <div class="title">Registration</div>
    <div class="content">
      <form action="#">
        <div class="user-details">
          <div class="input-box">
            <span class="details">Full Name</span>
            <input type="text" id="name" placeholder="Enter your name" required>
          </div>
          <div class="input-box">
            <span class="details">Username</span>
            <input type="text" id="UserName" placeholder="Enter your username" required>
          </div>
          <div class="input-box">
            <span class="details" >Email</span>
            <input type="text" id="email" name="email" placeholder="Enter your email"  required>
          </div>
          <div class="input-box">
            <span class="details">Phone Number</span>
            <input type="text" placeholder="Enter your number" maxlength=10 id="number"  required>
          </div>
          <div class="input-box">
            <span class="details">Password</span>
            <input type="password" id="password" placeholder="Enter your password" required>
          </div>
          <div class="input-box">
            <span class="details">Confirm Password</span>
            <input type="password" id="confirm" placeholder="Confirm your password" required>
          </div>
        </div>
        <div class="gender-details">
          <input type="radio" name="gender" id="dot-1">
          <input type="radio" name="gender" id="dot-2">
          <input type="radio" name="gender" id="dot-3">
          <span class="gender-title">Gender</span>
          <div class="category">
            <label for="dot-1">
            <span class="dot one"></span>
            <span class="gender">Male</span>
          </label>
          <label for="dot-2">
            <span class="dot two"></span>
            <span class="gender">Female</span>
          </label>
          <label for="dot-3">
            <span class="dot three"></span>
            <span class="gender">Prefer not to say</span>
            </label>
          </div>
        </div>
        <div class="button">
          <input type="submit" value="Register" ONCLICK="onSubmit()">
        </div>
      </form>
    </div>
  </div>
	<script>
	  function onSubmit(){
		  
		  const element = document.getElementById('number').value
		  const name=document.getElementById('name').value
		  const UserName=document.getElementById('UserName').value
		  const password=document.getElementById('password').value
		  const confirm=document.getElementById('confirm').value
		  const email=document.getElementById('email').value
		  const emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

		  if(element.length==10 && name.length>0 && UserName.length>0 && emailPattern.test(email) && (password.length>=6 && confirm.length>=6) && (password==confirm)){
			  alert("Successfully Registered")
		  }
		  else{
			  alert('Please enter required fields')
		  }
		  
	  }
	  
	</script>
	
</body>
</html>