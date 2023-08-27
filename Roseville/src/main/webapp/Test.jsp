<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Test Page</title>

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
    const test = localStorage.getItem("agreementValue");
    console.log(test);
  </script>
<script>
  // Get the reference to the table
  const storageTable = document.getElementById("storageTable");

  // Define an array of the localStorage keys
  const keys = [
    "agreementValue",
    "companyName",
    "contactFirstName",
    "contactLastName",
    "psaTitle",
    "streetAddress",
    "city",
    "state",
    "zip",
    "file_upload",
    "ordinancefile_upload_names"
  ];

  // Define an object with the keys and their display names
  const keyDisplayNames = {
    firstName: "First Name",
    lastName: "Last Name",
    title: "Title",
    email: "Email",
    phone: "Phone",
    company: "Company",
    approve: "Approval",
    dateResponse: "Response Date",
    dateCouncil: "Council Date",
    requestTitle: "Request Title",
    comment: "Comment",
  };

  // Function to clear the table rows
  function clearTableRows() {
    while (storageTable.rows.length > 1) {
      storageTable.deleteRow(1);
    }
  }

  // Helper function to add a row to the table with the given key and value
  function addRowToTable(key, value) {
    const row = storageTable.insertRow();
    const keyCell = row.insertCell(0);
    const valueCell = row.insertCell(1);
    keyCell.innerHTML = key;
    valueCell.innerHTML = value || "";
  }

  // Function to update the table with the local storage values
  function updateTable() {
    clearTableRows();

    // Add rows to the table for the keys and values from keyDisplayNames object
    for (const key in keyDisplayNames) {
      const value = localStorage.getItem(key);
      const displayName = keyDisplayNames[key];
      addRowToTable(displayName, value);
    }

    // Add a separator row
    const separatorRow = storageTable.insertRow();
    const separatorCell = separatorRow.insertCell();
    separatorCell.colSpan = 2;
    separatorCell.innerHTML = "<hr>";

    // Add rows to the table for the remaining keys and their values
    for (const key of keys) {
      if (!keyDisplayNames.hasOwnProperty(key)) {
        const value = localStorage.getItem(key);
        addRowToTable(key, value);
      }
    }
  }

  // Clear the specified keys from the local storage when the page is refreshed
  window.addEventListener("beforeunload", function() {
    keys.forEach(key => {
      localStorage.removeItem(key);
    });
  });

  // Call the updateTable function initially to populate the table
  updateTable();
</script>

</body>
</html>
