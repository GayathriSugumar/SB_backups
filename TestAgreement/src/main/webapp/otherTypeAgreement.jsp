<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Other Type Of Agreement</title>
<style>
h3 {
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

.address {
	margin-left: 21%;
}

.container {
	padding: 14px;
	margin-left: 21%;
}

.info {
	margin-left: 22%;
}

#data {
	padding: 10px 20px;
	border: none;
	border-bottom: 1px solid black;
}

#phone {
	padding: 10px 20px;
	border: none;
	border-bottom: 1px solid black;
}

#phone:focus {
	outline: none;
}

/* #formattedPhone{
	padding: 10px 20px;
	border: none;
	border-bottom: 1px solid black;
} */
#lable {
	width: 100px;
}

#data:focus {
	outline: none;
}

/* button format for submit */
.button {
	background-color: #fff;
	border: 2px solid #002f6c;
	border-radius: 30px;
	color: #002f6c;
	cursor: pointer;
	font-size: 20px;
	font-weight: 600;
	min-width: 184px;
	padding: 8px 18px;
	width: auto;
	margin-left: 22%;
    margin-top: 3%;
}

#myTextarea {
	resize: vertical;
	border: 1px solid #000;
	min-height: 200px;
	width: 38%;
	margin-left: 24%;
	min-height: 200px;
}

#myTextarea:focus {
	outline: none;
}

.box {
	width: 478px;
	height: 30px;
	margin-left: 24%;
	border: 1px solid #000;
}

#charCount {
	color: red;
	/* margin-left: 24%; */
}

input::-webkit-outer-spin-button, input::-webkit-inner-spin-button {
	-webkit-appearance: none;
	margin: 0;
}

input[type=number] {
	-moz-appearance: textfield;
}
</style>
<script>
	function myFunction() {
		var phone = document.getElementById('phone').value;
		var re = /[\(]\d{3}[\)]\d{3}[\-]\d{4}$/;
		var matches = re.test(phone);
		if (matches) {
			document.getElementById('error').textContent = ""
		} else {
			document.getElementById('error').textContent = "Please enter valid Format i.e (123)456-7890"
		}

	}
</script>


<script>
	function updateCount() {
		var textarea = document.getElementById("myTextarea");
		var charCount = document.getElementById("charCount");
		var remainingChars = textarea.maxLength - textarea.value.length;
		charCount.textContent = " characters remaining : " + remainingChars;
	}
</script>
</head>
<body>
<form action="agreement" method="post">
<h3><span class="required">*</span>Please describe the type of agreement you requesting :</h3>
		<br>

		<textarea id="myTextarea" name="unlimitedTextarea" rows="4" cols="50" maxlength="500"
			oninput="updateCount()"></textarea>
		<div class="box">
		<div id="charCount"> characters remaining : 
		<span>500</span>
		</div>
		</div>

		<div class="address">
		<h4><b>Please enter the Contracting Party information below ...</b></h4>
		</div>
			<table border="0" align="center" class="container">
			<h4 class="info"><b>&ensp;Contracting Party Information :</b></h4>
		<tbody>
		
		<tr>
		<td><label for="cname" id="lable"><span class="required">*</span>Organization Name: </label></td>
		<td><input id="data" maxlength="50" name="organizationName"  type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="name" id="lable"><span class="required">*</span>Contact First Name: </label></td>
		<td><input id="data" maxlength="50" name="contactFirstName" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="course" id="lable"><span class="required">*</span>Contact Last Name: </label></td>
		<td><input id="data" maxlength="50" name="contactLastName" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="branch"><span class="required">*</span>Title:</label></td>
		<td><input id="data" maxlength="50" name="Title" type="text" required/></td>
		</tr>
		
		<tr>
		<td><label for="rollno"><span class="required">*</span>Street Address: </label></td>
		<td><input id="data" maxlength="50" name="streetAddress" type="text" required/></td>
		</tr>

		<tr>
		<td><label for="phone"><span class="required">*</span>Phone number: </label></td>
		<td><input id="phone" maxlength="50" name="phone" type="phone" onchange="myFunction()" required/>
		<div id="error"></div>
		</td>
		</tr>

		<tr>
		<td><label for="City"><span class="required">*</span>City:</label></td>
		<td><input id="data" maxlength="50" name="City" type="text" required/></td>
		
		<td><label for="State"><span class="required">*</span>State:</label></td>
		<td><input id="data" maxlength="50" name="State" type="text" required/></td>
		
		<td><label for="zip"><span class="required">*</span>Zip:</label></td>
		<td><input id="data" maxlength="50" name="zip" type="number" required/></td>
		
		</tr>
		
		</tbody>
		</table>


		<button type="submit" class="button">Next</button>
			
</form>
</body>
</html>



