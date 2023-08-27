<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Others option Page</title>
  <style>
    table {
      border-collapse: collapse;
      width: 50%;
      margin-left: 24%;
    }

    table, th, td {
      border: 1px solid black;
      padding: 8px;
    }

    th {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
  <h1>DONE!....</h1>
  <table id="storageTable">
    <tr>
      <th>Key</th>
      <th>Value</th>
    </tr>
  </table>
<script>
  // Function to clear the table rows
  function clearTable() {
    const table = document.getElementById("storageTable");
    while (table.rows.length > 1) {
      table.deleteRow(1);
    }
  }

  // Helper function to add a row to the table with the given key and value
  function addRow(key, value) {
    const table = document.getElementById("storageTable");
    const newRow = table.insertRow(-1);
    const keyCell = newRow.insertCell(0);
    const valueCell = newRow.insertCell(1);
    keyCell.textContent = key;
    valueCell.textContent = value;
  }

  // Function to update the table with the local storage values
  function updateTable() {
    clearTable();

    // Add rows to the table for the keys and values from snippet values1
    const values1 = {
      firstName: localStorage.getItem("firstName"),
      lastName: localStorage.getItem("lastName"),
      title: localStorage.getItem("title"),
      email: localStorage.getItem("email"),
      phone: localStorage.getItem("phone"),
      company: localStorage.getItem("company"),
      approve: localStorage.getItem("approve"),
      dateResponse: localStorage.getItem("dateResponse"),
      dateCouncil: localStorage.getItem("dateCouncil"),
      requestTitle: localStorage.getItem("requestTitle"),
      comment: localStorage.getItem("comment")
    };

    for (const key in values1) {
      if (values1.hasOwnProperty(key)) {
        addRow(key, values1[key]);
      }
    }

    // Add rows to the table for the keys and values from snippet values2
    const values2 = {
      otherunlimitedTextarea: localStorage.getItem("otherunlimitedTextarea"),
      otherorgName: localStorage.getItem("otherorgName"),
      otherfirstName: localStorage.getItem("otherfirstName"),
      otherlastName: localStorage.getItem("otherlastName"),
      otheragreementTitle: localStorage.getItem("otheragreementTitle"),
      otherstreetAddress: localStorage.getItem("otherstreetAddress"),
      othercity: localStorage.getItem("othercity"),
      otherstate: localStorage.getItem("otherstate"),
      otherzip: localStorage.getItem("otherzip"),
      /* otherfile_upload: localStorage.getItem("otherfile_upload") */
    };

    for (const key in values2) {
      if (values2.hasOwnProperty(key)) {
        addRow(key, values2[key]);
      }
    }
    
    // Display the uploaded file names under "otherfile_upload" key
    const uploadedFiles = JSON.parse(localStorage.getItem("uploadedFiles"));
    if (uploadedFiles && uploadedFiles.length > 0) {
      for (const fileName of uploadedFiles) {
        addRow("otherfile_upload", fileName);
      }
    }
  }

  // Call the function to update the table on page load
  window.addEventListener("load", updateTable);
</script>

</body>
</html>
