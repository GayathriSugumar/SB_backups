<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Amendment Test</title>
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
	<h1>Your Service Selection Details Here!....</h1>
	<table id="storageTable">
		<tr>
			<th>Key</th>
			<th>Value</th>
		</tr>
	</table>
		<script>
    const test = localStorage.getItem("agreementValue");
    console.log(test);
    localStorage.setItem("agreementValue", "Amendment to Existing PSA, PDSA, or Other Agreement");
  </script>
	<script>
  // Get the reference to the table
  const storageTable = document.getElementById("storageTable");

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
    agreementValue: "Agreement",
    amendmentFile: "Amendment File",
    amendmentFile_upload: "Amendment File Upload"
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

    // Add rows to the table for the keys and their values from keyDisplayNames and localStorage
    for (const key in keyDisplayNames) {
      const value = localStorage.getItem(key);
      const displayName = keyDisplayNames[key];
      addRowToTable(displayName, value);
    }
  }

  // Call the updateTable function initially to populate the table
  updateTable();
  localStorage.setItem("agreementValue", "Amendment to Existing PSA, PDSA, or Other Agreement");
</script>
</body>
</html>
