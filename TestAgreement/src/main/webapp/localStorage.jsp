<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script>
		document.getElementById("result").innerHTML= localStorage.getItem("value");
	</script>
</head>
<body>

	<form action="local" method="post">
		Agreement : <span id="result"></span>
	</form>

</body>
</html>
<!-- var agreement = localStorage.getItem('agreement');
	document.write("<p>Agreement: " + agreement + "</p>");  -->