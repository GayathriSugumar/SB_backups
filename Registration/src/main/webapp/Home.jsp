<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css2?family=Sriracha&display=swap');
*{
 background-color: #11111;
}
body {
  margin: 0;
  box-sizing: border-box;
}
/* CSS for header */
.header {
    display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #1d1c1c;
    height: 50px;
}

.header .logo {
      font-size: 25px;
    font-family: 'Sriracha', cursive;
    color: #fafafa;
    text-decoration: none;
    margin-left: 30px;
    height: 50px;
}

.nav-items {
    display: flex;
    justify-content: space-around;
    align-items: center;
    background-color: #1d1c1c;
    margin-right: 20px;
    height: 20px;
}

.nav-items a {
    text-decoration: none;
    color: #fff;
    padding: 35px 20px;
}
/* CSS for main section */
.intro {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  width: 100%;
  height: 520px;
  background: linear-gradient(to bottom, rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0.5) 100%), url("https://images.unsplash.com/photo-1587620962725-abab7fe55159?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1031&q=80");
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
}

.intro h1 {
  font-family: sans-serif;
  font-size: 60px;
  color: #fff;
  font-weight: bold;
  text-transform: uppercase;
  margin: 0;
}

.intro p {
  font-size: 20px;
  color: #d1d1d1;
  text-transform: uppercase;
  margin: 20px 0;
}

.intro button {
    background-color: #323fcf;
    color: #ece6e6;
    padding: 10px 25px;
    border: none;
    border-radius: 5px;
    font-size: 20px;
    font-weight: bold;
    cursor: pointer;
    border-radius: 20px;
    box-shadow: 0px 0px 20px rgba(255, 255, 255, 0.4);
}

.achievements {
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 40px 80px;
}

.achievements .work {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 0 40px;
}

.achievements .work i {
  width: fit-content;
  font-size: 50px;
  color: #333333;
  border-radius: 50%;
  border: 2px solid #333333;
  padding: 12px;
}

.achievements .work .work-heading {
  font-size: 20px;
  color: #333333;
  text-transform: uppercase;
  margin: 10px 0;
}

.achievements .work .work-text {
  font-size: 15px;
  color: #585858;
  margin: 10px 0;
}

.about-me {
  display: flex;
  justify-content: center;
  align-items: center;
  padding: 40px 80px;
  border-top: 2px solid #eeeeee;
}

.about-me img {
  width: 500px;
  max-width: 100%;
  height: auto;
  border-radius: 10px;
}

.about-me-text h2 {
  font-size: 30px;
  color: #333333;
  text-transform: uppercase;
  margin: 0;
}

.about-me-text p {
  font-size: 15px;
  color: #585858;
  margin: 10px 0;
}
/* CSS for footer */
.footer {
	display: flex;
    justify-content: space-between;
    align-items: center;
    background-color: #1d1c1c;
    padding: 14px 80px;
}

.footer .copy {
  color: #fff;
}

.bottom-links {
  display: flex;
  justify-content: space-around;
  align-items: center;
  padding: 40px 0;
}

.bottom-links .links {
  display: flex;
  flex-direction: column;
  justify-content: center;
  align-items: center;
  padding: 0 40px;
}

.bottom-links .links span {
  font-size: 20px;
  color: #fff;
  text-transform: uppercase;
  margin: 10px 0;
}

.bottom-links .links a {
  text-decoration: none;
  color: #a1a1a1;
  padding: 10px 20px;
}
</style>
</head>
<body>
 <form action="Registration.jsp" method="post">
	<header class="header"> <a href="#" class="logo">Pro Coder</a>
	 </header>
	<main>
	<div class="intro">
		<h1>Our Courses</h1>
		<p>Start your career on the right foot by getting skilled and become a Pro Coder!</p>
		<button>Register</button>
	</div>
	</main>
	<footer class="footer">
  <div class="copy">&copy; 2023 Developer</div>

   
</footer>
</form>
</body>
</html>