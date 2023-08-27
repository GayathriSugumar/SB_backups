<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Amendment to Existing PSA, PDSA, or Other Agreement</title>
  <style>
    h3 {
      margin-left: 15%;
    }

    .required {
      color: red;
    }
	#File{
	margin-left: 24%;
	}
	input[type=file]::file-selector-button {
  margin-right: 20px;
  border: none;
  background: #084cdf;
  padding: 10px 20px;
  border-radius: 10px;
  color: #fff;
  cursor: pointer;
  transition: background .2s ease-in-out;
}

input[type=file]::file-selector-button:hover {
  background: #0d45a5;
}

    .button-row {
      display: flex;
      gap: 10px;
      margin-left: 22%;
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
      content: "(or) Drag and Drop files here. ";
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
 <script>

    function uploadFiles() {
      var files = document.getElementById('amendmentFile_upload').files;
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
      document.getElementById('amendmentFile_upload').value = "";
      document.getElementById('file_names').innerHTML = "";
    }		
  </script>
  <script>
  function onSubmit() {
    const amendmentFile = document.getElementById("File").value;
    const amendmentFile_upload = document.getElementById("file_upload").value;

    localStorage.setItem("amendmentFile", getFileName(amendmentFile));
    localStorage.setItem("amendmentFile_upload", getFileName(amendmentFile_upload));
  }

  function getFileName(filePath) {
    // Extracts the file name from the file path
    if (filePath) {
      const startIndex = filePath.lastIndexOf("\\") + 1;
      const fileName = filePath.substr(startIndex);
      return fileName;
    }
    return "";
  }
</script>

<script>
  const amendmentFile = localStorage.getItem("amendmentFile");
  const amendmentFile_upload = localStorage.getItem("amendmentFile_upload");

  document.getElementById("File").value = amendmentFile;
  document.getElementById("file_upload").value = amendmentFile_upload;

  localStorage.clear();
</script>

</head>

<body>
  <form action="AmendmentToExisitingPSAPDSA" method="post" onsubmit="onSubmit()">

    <h1 style="color:rgb(7, 7, 73);" class="heading"><u>Step 3:Amendment to Existing PSA, PDSA, or Other Agreement</u>
    </h1>
    <p style="color:rgb(227, 13, 13);"><span class="heading">* Denotes required fields</span></p>

    <h3><b><span class="required">*</span>
        <b>Please upload a description/dated scope of work on company letterhead, including not-to-exceed amount or cost
          proposal:</b>
    </h3>
   
    <input id="File" type="file" class="myfile" name="amendmentFile" multiple required ><br><br>
  
    <h3><b><span class="required">*</span>
        <b>Please upload the original executed agreement plus ALL subsequent executed amendments:</b>
    </h3>

    <div class="upload-container">
    <input type="file" id="file_upload" name="amendmentFile_upload" multiple required  /><br>
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