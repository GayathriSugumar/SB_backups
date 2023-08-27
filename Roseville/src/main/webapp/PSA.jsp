<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>PSA/PDSA</title>
  <style>
    h3 {
      margin-left: 15%;
    }

    .required {
      color: red;
    }

    .button-row {
      display: flex;
      gap: 10px;
      margin-left: 22%;
    }

    .heading {
      margin-left: 200px;
      margin-right: 250px;
    }

    input::-webkit-outer-spin-button,
    input::-webkit-inner-spin-button {
      -webkit-appearance: none;
      margin: 0;
    }

    input {
      padding: 10px 20px;
      border: none;
      border-bottom: 1px solid black;
    }

    input {
      width: 210px;
    }

    input:focus {
      outline: none;
    }

    .container {
      padding: 14px;
      margin-left: 21%;
    }

    .info {
      margin-left: 22%;
    }


    .upload-container {
      position: relative;
      margin-left: 24%;

    }

    .upload-container input {
      background: #ffff;
      outline: 3px dashed #5b9af0;
      padding: 112px 0 108px 221px;
      text-align: center !important;
      color: #5b9af0;
      width: 400px;
      border-radius: 10px;
    }

    .upload-container input:hover {
      background: #ffffff
    }

    .upload-container:before {
      position: absolute;
      bottom: 74px;
      left: 43%;
      transform: translateX(-50%);
      content: "(or) Drag files here. ";
      color: #5b9af0;
      font-weight: 900;
      margin-left: -140px;
      
    }

    #resetbtn {

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
      margin-left: 24%;
      margin-top: 2%;
    }

    #file_names {
      margin-left: 24%;
      margin-top: 2%;
    }

    .upload-btn {
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
      margin-left: 17%;
      margin-top: 3%;
    }
  </style>

<script>

    function uploadFiles() {
      var files = document.getElementById('file_upload').files;
      if (files.length == 0) {
        alert("Please first choose or drop any file(s)...");
        return;
      }

      var fileNamesDiv = document.getElementById('file_names');
      fileNamesDiv.innerHTML = ""; // Clear existing file names

      for (var i = 0; i < files.length; i++) {
        var fileName = files[i].name;
        var fileNameElement = document.createElement('div');
        fileNameElement.innerHTML = fileName;
        fileNamesDiv.appendChild(fileNameElement);
      }
    }
    function displayFileNames() {
		var input = document.getElementById("file_upload");
		var output = document.getElementById("file_names");
		output.innerHTML = "";

		for (var i = 0; i < input.files.length; i++) {
			var fileName = input.files[i].name;
			var listItem = document.createElement("li");
			listItem.textContent = fileName;
			output.appendChild(listItem);
		}
	}
    
    function resetUpload() {
      document.getElementById('file_upload').value = "";
      document.getElementById('file_names').innerHTML = "";
    }		
  </script>
<script>
  
    const companyName = localStorage.getItem("companyName");
    const contactFirstName = localStorage.getItem("contactFirstName");
    const contactLastName = localStorage.getItem("contactLastName");
    const psaTitle = localStorage.getItem("psaTitle");
    const streetAddress = localStorage.getItem("streetAddress");
    const city = localStorage.getItem("city");
    const state = localStorage.getItem("state");
    const zip = localStorage.getItem("zip");
    const file_upload = localStorage.getItem("file_upload");

    console.log("Retrieved values from localStorage:");
    console.log("companyName:", companyName);
    console.log("contactFirstName:", contactFirstName);
    console.log("contactLastName:", contactLastName);
    console.log("psaTitle:", psaTitle);
    console.log("streetAddress:", streetAddress);
    console.log("city:", city);
    console.log("state:", state);
    console.log("zip:", zip);
    console.log("file_upload:", file_upload);

    // Populate the form fields with the retrieved values
    document.querySelector("input[name='companyName']").value = companyName;
    document.querySelector("input[name='contactFirstName']").value = contactFirstName;
    document.querySelector("input[name='contactLastName']").value = contactLastName;
    document.querySelector("input[name='psaTitle']").value = psaTitle;
    document.querySelector("input[name='streetAddress']").value = streetAddress;
    document.querySelector("input[name='city']").value = city;
    document.querySelector("input[name='state']").value = state;
    document.querySelector("input[name='zip']").value = zip;
    document.querySelector("input[name='file_upload']").value = file_upload;
 

  function onSubmit() {
    const companyName = document.querySelector("input[name='companyName']").value;
    const contactFirstName = document.querySelector("input[name='contactFirstName']").value;
    const contactLastName = document.querySelector("input[name='contactLastName']").value;
    const psaTitle = document.querySelector("input[name='psaTitle']").value;
    const streetAddress = document.querySelector("input[name='streetAddress']").value;
    const city = document.querySelector("input[name='city']").value;
    const state = document.querySelector("input[name='state']").value;
    const zip = document.querySelector("input[name='zip']").value;
    const file_upload = document.querySelector("input[name='file_upload']").value;

    console.log("Captured form values:");
    console.log("companyName:", companyName);
    console.log("contactFirstName:", contactFirstName);
    console.log("contactLastName:", contactLastName);
    console.log("psaTitle:", psaTitle);
    console.log("streetAddress:", streetAddress);
    console.log("city:", city);
    console.log("state:", state);
    console.log("zip:", zip);
    console.log("file_upload :", file_upload);

    // Store values in localStorage
    localStorage.setItem("companyName", companyName);
    localStorage.setItem("contactFirstName", contactFirstName);
    localStorage.setItem("contactLastName", contactLastName);
    localStorage.setItem("psaTitle", psaTitle);
    localStorage.setItem("streetAddress", streetAddress);
    localStorage.setItem("city", city);
    localStorage.setItem("state", state);
    localStorage.setItem("zip", zip);
    localStorage.setItem("file_upload", file_upload);

    const x = document.getElementById("file-upload-input");
    if (x.value.length === 0) {
      alert("Please upload required files");
      event.preventDefault();
      return false;
    }
  }
  localStorage.clear();
</script>
</head>

<body>

  <form action="PSA" method="post" id="formData">
    <h1 style="color:rgb(7, 7, 73);" class="heading"><u>Step 3: Professional Services Agreement (PSA) -and-Professional
        Design Services Agreement (PDSA)</u></h1>
    <p style="color:rgb(227, 13, 13);"><span class="heading">* Denotes required fields</span></p>
    <h3>Please enter the company name, Contact name/title and address of your vendor/consultant below :</h3>
    <table border="0" align="center" class="container">
      <tbody>

        <tr>
          <td><label for="companyName" id="lable"><span class="required">*</span>Company Name: </label></td>
          <td><input id="data" maxlength="50" name="companyName" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="contactFirstName" id="lable"><span class="required">*</span>Contact First Name: </label></td>
          <td><input id="data" maxlength="50" name="contactFirstName" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="contactLastName" id="lable"><span class="required">*</span>Contact Last Name: </label></td>
          <td><input id="data" maxlength="50" name="contactLastName" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="psaTitle"><span class="required">*</span>Title:</label></td>
          <td><input id="data" maxlength="50" name="psaTitle" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="streetAddress"><span class="required">*</span>Street Address: </label></td>
          <td><input id="data" maxlength="50" name="streetAddress" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="city"><span class="required">*</span>City:</label></td>
          <td><input id="data" maxlength="50" name="city" type="text" required /></td>

          <td><label for="state">State:</label></td>
          <td><input id="data" maxlength="50" name="state" type="text" required /></td>

          <td><label for="zip">Zip:</label></td>
          <td><input id="data" maxlength="50" name="zip" type="text" required /></td>

        </tr>
      </tbody>
    </table>

		<h3>
			<b><span class="required">*</span> <b>Please upload a dated
					scope of work/services, on company letterhead, including
					not-to-exceed amount or cost proposal:</b>
		</h3>


		<div class="upload-container">
			<input type="file" id="file_upload" name="file_upload" onchange="uploadFiles()" multiple /><br>
		</div>
		<div id="file_names"></div>
		<div>
			<button id="resetbtn" type="button" onclick="resetUpload()">Cancel</button>
		</div>
		<br>
		<button class="upload-btn" onclick="onSubmit()">Submit</button>
			<%-- <input type="hidden" name="agreementValue" value="<%= agreementValue %>" /> --%>

	</form>

</body>

</html>