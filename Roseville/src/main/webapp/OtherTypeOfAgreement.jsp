<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Other Type Of Agreement</title>
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

    /* Firefox */
    input[type=number] {
      -moz-appearance: textfield;
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

    #unlimitedTextarea {
      resize: vertical;
      min-height: 300px;
      width: 50%;
      margin-left: 24%;
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
      /* Adjust the left value to center the text */
      transform: translateX(-50%);
      /* Center the text horizontally */
      content: "(or) Drag files here. ";
      color: #5b9af0;
      font-weight: 900;
      margin-left: -140px;
      /* Adjust the margin-left value to fine-tune the positioning */
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

      // Store uploaded file names in local storage
      var uploadedFiles = Array.from(files).map(function(file) {
        return file.name;
      });

      localStorage.setItem('uploadedFiles', JSON.stringify(uploadedFiles));
    }

    function resetUpload() {
      document.getElementById('file_upload').value = "";
      document.getElementById('file_names').innerHTML = "";
    }

    function populateFormFields() {
      const unlimitedTextarea = localStorage.getItem("otherunlimitedTextarea");
      const orgName = localStorage.getItem("otherorgName");
      const firstName = localStorage.getItem("otherfirstName");
      const lastName = localStorage.getItem("otherlastName");
      const agreementTitle = localStorage.getItem("otheragreementTitle");
      const streetAddress = localStorage.getItem("otherstreetAddress");
      const city = localStorage.getItem("othercity");
      const state = localStorage.getItem("otherstate");
      const zip = localStorage.getItem("otherzip");
      const uploadedFiles = JSON.parse(localStorage.getItem("uploadedFiles"));

      document.querySelector("textarea[name='otherunlimitedTextarea']").value = unlimitedTextarea || "";
      document.querySelector("input[name='otherorgName']").value = orgName || "";
      document.querySelector("input[name='otherfirstName']").value = firstName || "";
      document.querySelector("input[name='otherlastName']").value = lastName || "";
      document.querySelector("input[name='otheragreementTitle']").value = agreementTitle || "";
      document.querySelector("input[name='otherstreetAddress']").value = streetAddress || "";
      document.querySelector("input[name='othercity']").value = city || "";
      document.querySelector("input[name='otherstate']").value = state || "";
      document.querySelector("input[name='otherzip']").value = zip || "";

      if (uploadedFiles && uploadedFiles.length > 0) {
        var fileNamesDiv = document.getElementById('file_names');
        fileNamesDiv.innerHTML = ""; // Clear existing file names

        for (var i = 0; i < uploadedFiles.length; i++) {
          var fileName = uploadedFiles[i];
          var fileNameElement = document.createElement('div');
          fileNameElement.innerHTML = fileName;
          fileNamesDiv.appendChild(fileNameElement);
        }
      }
    }

    function onSubmit(event) {
      event.preventDefault();

      const unlimitedTextarea = document.querySelector("textarea[name='otherunlimitedTextarea']").value;
      const orgName = document.querySelector("input[name='otherorgName']").value;
      const firstName = document.querySelector("input[name='otherfirstName']").value;
      const lastName = document.querySelector("input[name='otherlastName']").value;
      const agreementTitle = document.querySelector("input[name='otheragreementTitle']").value;
      const streetAddress = document.querySelector("input[name='otherstreetAddress']").value;
      const city = document.querySelector("input[name='othercity']").value;
      const state = document.querySelector("input[name='otherstate']").value;
      const zip = document.querySelector("input[name='otherzip']").value;
      const uploadedFiles = JSON.parse(localStorage.getItem("uploadedFiles"));

      console.log("unlimitedTextarea:", unlimitedTextarea);
      console.log("orgName:", orgName);
      console.log("firstName:", firstName);
      console.log("lastName:", lastName);
      console.log("agreementTitle:", agreementTitle);
      console.log("streetAddress:", streetAddress);
      console.log("city:", city);
      console.log("state:", state);
      console.log("zip:", zip);
      console.log("uploadedFiles:", uploadedFiles);

      // Store values in localStorage
      localStorage.setItem("otherunlimitedTextarea", unlimitedTextarea);
      localStorage.setItem("otherorgName", orgName);
      localStorage.setItem("otherfirstName", firstName);
      localStorage.setItem("otherlastName", lastName);
      localStorage.setItem("otheragreementTitle", agreementTitle);
      localStorage.setItem("otherstreetAddress", streetAddress);
      localStorage.setItem("othercity", city);
      localStorage.setItem("otherstate", state);
      localStorage.setItem("otherzip", zip);

      if (!uploadedFiles || uploadedFiles.length === 0) {
        alert("Please upload required files");
        return;
      }

      // Submit the form
      document.getElementById("formData").submit();
    }


  </script>
 </head>

<body>
  <form action="Others" method="post" id="formData">
    <h1 style="color: rgb(7, 7, 73);" class="heading">
      <u>Step 3: Other Type of Agreement</u>
    </h1>
    <p style="color: rgb(227, 13, 13);">
      <span class="heading">* Denotes required fields</span>
    </p>
    <h3>
      <span class="required">*</span>Please describe the type of agreement
      you are requesting
    </h3>
    <textarea id="myTextarea" name="otherunlimitedTextarea" rows="4" cols="50" required></textarea>

    <table border="0" align="center" class="container">
      <tbody>
        <tr>
          <td><label for="companyName" id="lable"><span class="required">*</span>Organization Name: </label></td>
          <td><input id="data" maxlength="50" name="otherorgName" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="contactFirstName" id="lable"><span class="required">*</span>Contact First Name: </label></td>
          <td><input id="data" maxlength="50" name="otherfirstName" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="contactLastName" id="lable"><span class="required">*</span>Contact Last Name: </label></td>
          <td><input id="data" maxlength="50" name="otherlastName" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="psaTitle"><span class="required">*</span>Title:</label></td>
          <td><input id="data" maxlength="50" name="otheragreementTitle" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="streetAddress"><span class="required">*</span>Street Address: </label></td>
          <td><input id="data" maxlength="50" name="otherstreetAddress" type="text" required /></td>
        </tr>

        <tr>
          <td><label for="city"><span class="required">*</span>City:</label></td>
          <td><input id="data" maxlength="50" name="othercity" type="text" required /></td>

          <td><label for="state"><span class="required">*</span>State:</label></td>
          <td><input id="data" maxlength="50" name="otherstate" type="text" required /></td>

          <td><label for="zip">Zip:</label></td>
          <td><input id="data" maxlength="50" name="otherzip" type="text" required /></td>
        </tr>
      </tbody>
    </table>

    <h3>
      <b>Please upload any applicable files with needed information
        here:</b>
    </h3>

    <div class="upload-container">
      <input type="file" id="file_upload" name="otherfile_upload" onchange="uploadFiles()" multiple /><br>
    
    </div>
    <div id="file_names"></div>
    <div>
      <button id="resetbtn" type="button" onclick="resetUpload()">Cancel</button>
    </div>
    <br>
    <button class="upload-btn" onclick="onSubmit(event)">Submit</button>
  </form>
</body>
</html>  