
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Ordinance</title>
  <style>
    h3 {
      margin-left: 15%;
    }

    .required {
      color: red;
    }

    #myTextarea {
      resize: vertical;
      border: 1px solid #000;
      min-height: 200px;
      width: 38%;
      margin-left: 24%;
      min-height: 200px;
      margin-bottom: 65px;
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

    .heading {
      margin-left: 200px;
    }

    .upload-container {
      position: relative;
      margin-left: 24%;

    }

    .upload-container input {
      background: #ffff;
      outline: 3px dashed #5b9af0;
      padding: 112px 0 108px 180px;
      text-align: center !important;
      color: #5b9af0;
      width: 550px;
      border-radius: 10px;
    }

    .upload-container input:hover {
      background: #ffffff
    }

    .upload-container:before {
      position: absolute;
      bottom: 74px;
      left: 45%;
      /* Adjust the left value to center the text */
      transform: translateX(-50%);
      /* Center the text horizontally */
      content: " (or) Drag and Drop files here. ";
      color: #5b9af0;
      font-weight: 900;
      margin-left: -140px;
      /* Adjust the margin-left value to fine-tune the positioning */
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

    .button-row {
      display: flex;
      gap: 10px;
      margin-left: 22%;
    }

    /* button format for cancel and submit */
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
  </style>
  <!-- uploading multiple files script -->
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
    function resetUpload() {
      document.getElementById('file_upload').value = "";
      document.getElementById('file_names').innerHTML = "";
    }		
  </script>
	
</head>
<body>
<form action="ordinance" method="post">
	<h1 style="color:rgb(7, 7, 73);" class="heading">
      <u>Step 3: Professional Services Agreement (PSA) -and-
        Professional Design Services Agreement (PDSA)</u>
    </h1>
    <p style="color:rgb(227, 13, 13);">
      <span class="heading">* Denotes required fields</span>
    </p>
    <h3>
      <span class="required">*</span>Please describe what you are requesting:
    </h3>

    <textarea id="myTextarea" name="unlimitedTextarea" rows="4" cols="50" required></textarea><br>

    <div class="upload-container">
      <input type="file" id="file_upload" onchange="uploadFiles()" multiple /><br>
      <!-- Display uploaded filenames here -->

    </div>
    <div id="file_names"></div>
    <div>
      <button id="resetbtn" type="button" onclick="resetUpload()">Cancel</button>
    </div>
    <br>



    <button class="upload-btn">Submit</button>

  </form>


</body>
</html>