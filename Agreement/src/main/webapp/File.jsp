<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FileUploadPage</title>
<style>
h3{
 margin-left: 15%;
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
.button-row {
    display: flex;
    gap: 10px; 
    margin-left: 23%;
  }
#cancel{
  
    margin-top: 19Px;
    padding: 6px;
    width: 99px;
    border-radius: 22px;
    background-color: #ffffff;
    border-color: #589ed4;
    font-size: 17px;
} 
#submit{
  
    margin-top: 19Px;
    padding: 6px;
    width: 99px;
    border-radius: 22px;
    background-color: #ffffff;
    border-color: #589ed4;
    font-size: 17px;
} 
#unlimitedTextarea {
     resize: vertical;
    min-height: 300px;
    width: 50%;
    margin-left: 24%;
}

.drop-zone {
    max-width: 50%;
    height: 200px;
    padding: 25px;
    margin-left: 22%;
    align-items: center;
    justify-content: center;
    text-align: center;
    font-family: "Quicksand", sans-serif;
    font-weight: 500;
    font-size: 20px;
    cursor: pointer;
    color: #cccccc;
    margin-top: 27px;
    border: 3px dashed #5bbceb;
    border-radius: 10px;
}
/* .button{
  margin-left: 21%;
    margin-top: 19Px;
    padding: 6px;
    width: 99px;
    border-radius: 22px;
    background-color: #ffffff;
    border-color: blue;
    font-size: 17px;
} */
</style>
</head>
<body>
<form action="File" method="post">
	<div class="form-center">
		<h3>Please enter the company name, Contact name/title and address
			of your vendor/consultant below :</h3>
			<table border="0" align="center" class="container">
			<h4 class="info"><b>&ensp;Contracting Party Information :</b></h4>
		<tbody>
		
		<tr>
		<td><label for="cname" id="lable"><span class="required">*</span>Company Name: </label></td>
		<td><input id="data" maxlength="50" name="name" type="text" required /></td>
		</tr>
		
		<tr>
		<td><label for="name" id="lable"><span class="required">*</span>Contact First Name: </label></td>
		<td><input id="data" maxlength="50" name="name" type="text" required /></td>
		</tr>
		
		<tr>
		<td><label for="course" id="lable"><span class="required">*</span>Contact Last Name: </label></td>
		<td><input id="data" maxlength="50" name="course" type="text" required /></td>
		</tr>
		
		
		<tr>
		<td><label for="phone"><span class="required" >*</span>Phone Number:</label></td>
		<td><input id="data" maxlength="50" name="phone" type="tel" pattern="[0-9]{3}-[0-9]{3}-[0-9]{4}" required /> </td>
		</tr>
			
		<tr>
		<td><label for="email"><span class="required" >*</span>E-Mail: </label></td>
		<td><input id="data" maxlength="50" name="email" type="text" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}" required /></td>
		</tr>
		
		<tr>
		<td><label for="branch"><span class="required">*</span>Title:</label></td>
		<td><input id="data" maxlength="50" name="branch" type="text" required /></td>
		</tr>
		
		<tr>
		<td><label for="rollno"><span class="required">*</span>Street Address: </label></td>
		<td><input id="data" maxlength="50" name="rollno" type="text" required /></td>
		</tr>
		
		<tr>
		<td><label for="City"><span class="required">*</span>City:</label></td>
		<td><input id="data" maxlength="50" name="City" type="text" required /></td>
		
		<td><label for="State"><span class="required">*</span>State:</label></td>
		<td><input id="data" maxlength="50" name="State" type="text" required /></td>
		
		<td><label for="zip"><span class="required">*</span>Zip:</label></td>
		<td><input id="data" maxlength="50" name="zip" type="text" required /></td>
		
		</tr>
		
		
		</tbody>
		</table>

			<h3>
				<b><span class="required">*</span> 
				Please upload a dated scope of work/services. on company letterhead, including not-to-exceed amount or cost proposal:</b>
			</h3>
		<script>
			UPLOADCARE_PUBLIC_KEY = "demopublickey";
		</script>
		<script
			src="https://ucarecdn.com/libs/widget/3.x/uploadcare.full.min.js"
			charset="utf-8"></script>
		<div class="drop-zone">
			<span>Drag file </span><br> <br> <input type="hidden"
				role="uploadcare-uploader">
		</div>
		<div class="button-row">
		<button type="submit" id="submit">Submit</button>
		<button type="cancel" id="cancel">Cancel</button>
		</div>
		<!-- <button id="cancel">Cancel</button> -->
		<script>
			const btn = document.getElementById('cancel');
			const widget = uploadcare.Widget('[role=uploadcare-uploader]');
			btn.addEventListener('click',() => {
			  const file = widget.value();
			  if (file) {
			    file.cancel();
			  } else {
			    alert('Something went wrong');
			  }  
			})
	</script>
	</div></form>
</body>
</html>

