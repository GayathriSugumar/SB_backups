<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>IndexPage</title>
<style>
.form-center {
	display: flex;
	justify-content: center;
}

.required {
	color: red;
}
/* button format for submit */
#submitButton {
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
	margin-left: 0%;
    margin-top: 3%;
}

#agreement{

visibility:"hidden"

}

</style>

<script>
// Enable or disable the Others options based on the radio button selection and print the others agreement services.
	function myFunction() {
		var agreement = document.getElementById('agreement').value
		console.log("Selected Value is " + agreement)

		var agreementDropdown = document.getElementById("agreementDropdown");
		agreementDropdown.disabled = !agreementDropdown.disabled;

	}
</script>

<script>
	function enableSubmitButton(params) {
		var radioButtons = document.getElementsByName("agreement");
		var submitButton = document.getElementById("submitButton");
		var agreementDropdown = document.getElementById("agreement");

		var isChecked = false;
		// Loop through radio buttons to check if any is selected
		for (var i = 0; i < radioButtons.length; i++) {
			if (radioButtons[i].checked) {
				isChecked = true;
				break;
			}
		}

		// Enable or disable the submit button based on the radio button selection
		submitButton.disabled = !isChecked;
		if (params == "other") {

			agreementDropdown.disabled = false;
			agreementDropdown.style.visibility = "visible";

			console.log("check")
		} else {
			agreementDropdown.disabled = true;
			agreementDropdown.style.visibility = "hidden";
		}

	}
</script>

</head>
<body>

 <div class="form-center">
    <form action="helloServlet" method="post" id="myForm" >

			<h4>
				<span class="required">*</span>Please select the applicable service
				below. I need a :
			</h4>

			<p><b>Agreement:</b></p>
			
			<input type="radio" name="agreement" id="test" value="Professional Servise Agreement(PSA)" onclick="enableSubmitButton('PSA')" >   
			<label for="psa">Professional Service Agreement(PSA)</label><br>
			
			<input type="radio" name="agreement" id="test" value="Professional Design Servise Agreement(PDSA)" onclick="enableSubmitButton('PDSA')">
			<label for="pdsa">Professional Design Service Agreement(PDSA)</label><br>

			<input type="radio" name="agreement" value="Other Type of Agreement" id="test" onclick="enableSubmitButton('other')">   <!--  name="agreement" value="" value="Other Type of Agreement" name="option" value="Other Type of Agreement" -->
			<label for="agreement">Other Type of Agreement</label> 
			<br><br> 
			<select id="agreement" name="others" onchange="myFunction()"  style="visibility:hidden">

				<option value="Affordable Purchase Housing Agreement">Affordable Purchase Housing Agreement</option>
				<option value="Bus Shelter Maintenance Agreement">Bus Shelter Maintenance Agreement</option>
				<option value="CDBG Agreement">CDBG Agreement</option>
				<option value="City/Developer Reimbursement Agreement">City/Developer Reimbursement Agreement</option>
				<option value="Confidentiality and Non-Disclosure Agreement">Confidentiality and Non-Disclosure Agreement</option>
				<option value="Deferred Improvement Agreement">Deferred Improvement Agreement</option>
				<option value="Deferred Improvement Agreement - Bus shelter">Deferred Improvement Agreement - Bus shelter</option>
				<option value="Deferred Landscaping Agreement">Deferred Landscaping Agreement</option>
				<option value="Design Build Agreement">Design Build Agreement</option>
				<option value="Escrow Agreement for Security Deposits in Lieu of Retention">Escrow Agreement for Security Deposits in Lieu of Retention</option>
				<option value="Grant Agreement for Homeless Prevention and Rapid Rehousing Services">Grant Agreement for Homeless Prevention and Rapid Rehousing Services</option>
				<option value="Grant Agreement for other Homeless Services">Grant Agreement for other Homeless Services</option>
				<option value="Grant Deed">Grant Deed</option>
				<option value="Grant Easement">Grant Easement</option>
				<option value="On-call Professional Design Services Agreement">On-call Professional Design Services Agreement</option>
				<option value="On-call Professional Services Agreement">On-call Professional Services Agreement</option>
				<option value="Reciprocal Access Agreement">Reciprocal Access Agreement</option>
				<option value="Reciprocal Access and Parking Agreement">Reciprocal Access and Parking Agreement</option>
				<option value="Reimbursement Agreement Development Services">Reimbursement Agreement Development Services</option>
				<option value="Reimbursement Agreement - Public Works">Reimbursement Agreement - Public Works</option>
				<option value="Right to Enter Agreement">Right to Enter Agreement</option>
				<option value="Stormwater Control Maintenance Agreement">Stormwater Control Maintenance Agreement</option>
				<option value="Subdivision Agreement">Subdivision Agreement</option>
				<option value="Subdivision Maintenance Agreement">Subdivision Maintenance Agreement</option>
				<option value="Subordination Agreement - Housing">Subordination Agreement - Housing</option>
				<option value="Subordination Agreement - Easement">Subordination Agreement - Easement</option>
				<option value="Temporary Construction Lasement">Temporary Construction Lasement</option>
				<option value="Temporary Right of Entry - Parks">Temporary Right of Entry - Parks</option>
				<option value="Tolling Agreement">Tolling Agreement</option>
				<option value="Transit Bus Shelter Construction Fee Agreement">Transit Bus Shelter Construction Fee Agreement</option>
				<option value="Other Type of Agreement not listed here">Other Type of Agreement not listed here</option>
			</select> <br>

			<p>
				<b>Other Service:</b>
			</p>
			
			<input type="radio" name="agreement" id="test" value="Amendment to Existing PSA, PDSA, or Other Agreement " onclick="enableSubmitButton()" > 
			<label for="service">Amendment to Existing PSA, PDSA, or Other Agreement </label><br> 
			
			<input type="radio" name="agreement" id="test" value="Ordinance" onclick="enableSubmitButton()"> 
			<label for="service">Ordinance</label><br>
			
			<input type="radio" name="agreement" id="test" value="Legal Opinion" onclick="enableSubmitButton()">
			<label for="service">Legal Opinion</label><br> 
			
			<input type="radio" name="agreement" id="test" value="City Attorney Signature and Routing Only" onclick="enableSubmitButton()">  
			<label for="service">City Attorney Signature and Routing Only</label><br> 
			
			<input type="radio" name="agreement" id="test" value="Review Document and Comment/Advise" onclick="enableSubmitButton()"> 
			<label for="service">Review Document and Comment/Advise</label><br> <br>
			
			<input type="submit" id="submitButton" onclick="saveRegistration()" value="Next" disabled>
			
		</form>
		 
</div>
</body>
</html>