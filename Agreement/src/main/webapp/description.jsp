<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AgreementInfoPage</title>
<style>
h3{
 margin-left: 21%;
}
.Aligner {
  display: flex;
  align-items: center;
  justify-content: center;
}
.Aligner-item {
  max-width: 50%;
}
.required {
	color: red;
}
.scroll-box {
  width: 300px; /* Set the width of the scroll box */
  height: 200px; /* Set the height of the scroll box */
  overflow: auto; /* Enable scrolling for overflowing content */
}
.address{
    margin-left: 21%;
}
.container{
	padding: 14px;
    margin-left: 21%;
}
.info{
     margin-left: 22%;
}
#data{
	padding: 10px 20px;
    border: none;
    border-bottom: 1px solid black;
}
#lable{
width: 100px;
}
#data:focus{
outline:none;
}
.button{
  margin-left: 21%;
    margin-top: 19Px;
    padding: 6px;
    width: 99px;
    border-radius: 22px;
    background-color: #ffffff;
    border-color: blue;
    font-size: 17px;
}
#unlimitedTextarea {
     resize: vertical;
    min-height: 300px;
    width: 50%;
    margin-left: 24%;
}
</style>

</head>
<body>
<form action="File.jsp">
	<h3><span class="required">*</span>Please describe the type of agreement you requesting :</h3>
		<br>
		<textarea id="unlimitedTextarea" name="unlimitedTextarea"></textarea>
		
		<div class="address">
		<h4><b>Please enter the Contracting Party information below ...</b></h4>
		</div>
			<table border="0" align="center" class="container">
			<h4 class="info"><b>&ensp;Contracting Party Information :</b></h4>
		<tbody>
		
		<tr>
		<td><label for="cname" id="lable"><span class="required">*</span>Organization Name: </label></td>
		<td><input id="data" maxlength="50" name="name" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="name" id="lable"><span class="required">*</span>Contact First Name: </label></td>
		<td><input id="data" maxlength="50" name="name" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="course" id="lable"><span class="required">*</span>Contact Last Name: </label></td>
		<td><input id="data" maxlength="50" name="course" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="branch"><span class="required">*</span>Title:</label></td>
		<td><input id="data" maxlength="50" name="branch" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="rollno"><span class="required">*</span>Street Address: </label></td>
		<td><input id="data" maxlength="50" name="rollno" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="City"><span class="required">*</span>City:</label></td>
		<td><input id="data" maxlength="50" name="City" type="text" required/></td>
		
		<td><label for="State"><span class="required">*</span>State:</label></td>
		<td><input id="data" maxlength="50" name="State" type="text" required/></td>
		
		<td><label for="zip"><span class="required">*</span>Zip:</label></td>
		<td><input id="data" maxlength="50" name="zip" type="text" required/></td>
		
		</tr>
		</tbody>
		</table>
		
		<button type="submit" class="button">Next</button>
		</form>
</body>
</html>