<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Agreement</title>
<style>
.form-center {
	display: flex;
	justify-content: center;
}

.required {
	color: red;
}
.button{
  margin-left: 21%;
    margin-top: 19Px;
    padding: 6px;
    width: 99px;
    border-radius: 22px;
    background-color: #2ea8f7;
    border-color: blue;
    font-size: 17px;
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
</style>
</head>
<body>
<!-- 	<script>
		function openPage() {
			var selection = document.form.form1;

			for (i = 0; i < selection.length; i++)

				if (selection[i].checked == true)
					if (selection[i].value == "agreement") {
						window.location.replace("description.jsp");
					} else {
						window.location.replace("File.jsp");
					}

		}
	</script> -->
	<script>
		function validateForm() {
			var radioButtons = document.getElementsByName("option");
			var isChecked = false;

			for (var i = 0; i < radioButtons.length; i++) {
				if (radioButtons[i].checked) {
					isChecked = true;
					break;
				}
			}

			if (!isChecked) {
				alert("Please select at least one option.");
				return false; // Prevent form submission
			}

			// Form is valid, continue with submission
			return true;
		}
	</script>
<!-- action="description.jsp"   method="post" action="loginServlet"  action="description.jsp" id="myForm" onsubmit="return validateForm()"--> 
	<div class="form-center">
		<form name="form" method="post" action="loginServlet">

			<h4>
				<span class="required">*</span>Please select the applicable service below. I need a :
			</h4>
			
			<p><b>Agreement:</b></p>
			
			<input type="radio" name="option" value="agreement" onclick="openPage();">   
			<label for="psa">Professional Servise Agreement(PSA)</label><br>
			<input type="radio" name="option" value="agreement" onclick="openPage();">
			<label for="pdsa">Professional Design Servise Agreement(PDSA)</label><br>

			<input type="radio" name="option" value="agreement" onclick="openPage();">   
			<label for="ota">Other Type of Agreement</label> 
			<br><br> 
			<select name="ota" id="ota">

				<option value="type">Affordable Purchase Housing Agreement</option>
				<option value="type">Bus Shelter Maintenance Agreement</option>
				<option value="type">CDBG Agreement</option>
				<option value="type">City/Developer Reimbursement Agreement</option>
				<option value="type">Confidentiality and Non-Disclosure Agreement</option>
				<option value="type">Deferred Improvement Agreement</option>
				<option value="type">Deferred Improvement Agreement - Bus shelter</option>
				<option value="type">Deferred Landscaping Agreement</option>
				<option value="type">Design Build Agreement</option>
				<option value="type">Escrow Agreement for Security Deposits in Lieu of Retention</option>
				<option value="type">Grant Agreement for Homeless Prevention and Rapid Rehousing Services</option>
				<option value="type">Grant Agreement for other Homeless Services</option>
				<option value="type">Grant Deed</option>
				<option value="type">Grant Easement</option>
				<option value="type">On-call Professional Design Services Agreement</option>
				<option value="type">On-call Professional Services Agreement</option>
				<option value="type">Reciprocal Access Agreement</option>
				<option value="type">Reciprocal Access and Parking Agreement</option>
				<option value="type">Reimbursement Agreement Development Services</option>
				<option value="type">Reimbursement Agreement - Public Works</option>
				<option value="type">Right to Enter Agreement</option>
				<option value="type">Stormwater Control Maintenance Agreement</option>
				<option value="type">Subdivision Agreement</option>
				<option value="type">Subdivision Maintenance Agreement</option>
				<option value="type">Subordination Agreement - Housing</option>
				<option value="type">Subordination Agreement - Easement</option>
				<option value="type">Temporary Construction Lasement</option>
				<option value="type">Temporary Right of Entry - Parks</option>
				<option value="type">Tolling Agreement</option>
				<option value="type">Transit Bus Shelter Construction Fee Agreement</option>
				<option value="type">Other Type of Agreement not listed here</option>
			</select> <br>

			<p>
				<b>Other Service:</b>
			</p>
			
			<input type="radio" name="option" value="service" onclick="openPage();"> 
			<label for="service">Amendment to Existing PSA, PDSA, or Other Agreement </label><br> 
			
			<input type="radio" name="option" value="service" onclick="openPage();"> 
			<label for="service">Ordinance</label><br>
			
			<input type="radio" name="option" value="service" onclick="openPage();">
			<label for="service">Legal Opinion</label><br> 
			
			<input type="radio" name="option" value="service" onclick="openPage();">  
			<label for="service">City Attorney Signature and Routing Only</label><br> 
			
			<input type="radio" name="option" value="service" onclick="openPage();"> 
			<label for="service">Review Document and Comment/Advise</label><br> <br>
			
			<!-- <input type="submit" value="NEXT"> -->
			<button type="submit" value="next" class="button">NEXT</button>

		</form>
	</div>
</body>
</html>