<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">

<head>
    <meta charset="ISO-8859-1" />
    <title>City Attorney - Intake Form</title>
   
    <style type="text/css">
        .required {
            color: rgb(227, 13, 13);
        }

        form {
            margin-left: 170px;
            margin-right: 170px;
        }

        table,
        select,
        textarea {
            margin-left: 60px;
        }

        #charCount {
            color: red;
        }

        .box {
            width: 432px;
            height: 30px;
            margin-left: 60px;
            border: 1px solid #000;
        }

        #comment {

            min-height: 120px;
            width: 45%;
            margin-left: 60px;
            margin-bottom: -5px;
        }

        #company {
            width: 40%;
        }

        .brand-button-large {
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
        }
    </style>
     <script>
        function updateCount() {
            var textarea = document.getElementById("comment");
            var charCount = document.getElementById("charCount");
            var remainingChars = textarea.maxLength - textarea.value.length;
            charCount.textContent = " Characters remaining : " + remainingChars;
        }

        function phoneValidation() {
            var phone = document.getElementById('phone').value;
            var re = /[\(]\d{3}[\)]\d{3}[\-]\d{4}$/;
            var matches = re.test(phone);
            if (matches) {
                document.getElementById('error').textContent = ""
            }
            else {
                document.getElementById('error').textContent = "Please enter valid Format i.e (123)456-7890"
            }
        }

        const firstName = localStorage.getItem("firstName");
        const lastName = localStorage.getItem("lastName");
        const title = localStorage.getItem("title");
        const email = localStorage.getItem("email");
        const phone = localStorage.getItem("phone");
        const company = localStorage.getItem("company");
        const approve = localStorage.getItem("approve");
        const dateResponse = localStorage.getItem("dateResponse");
        const dateCouncil = localStorage.getItem("dateCouncil");
        const requestTitle = localStorage.getItem("requestTitle");
        const comment = localStorage.getItem("comment");

        console.log("Retrieved values from localStorage:");
        console.log("firstName:", firstName);
        console.log("lastName:", lastName);
        console.log("title:", title);
        console.log("email:", email);
        console.log("phone:", phone);
        console.log("company:", company);
        console.log("approve:", approve);
        console.log("dateResponse:", dateResponse);
        console.log("dateCouncil:", dateCouncil);
        console.log("requestTitle:", requestTitle);
        console.log("comment:", comment);

        // Populate the form fields with the retrieved values
        document.querySelector("input[name='firstName']").value = firstName;
        document.querySelector("input[name='lastName']").value = lastName;
        document.querySelector("input[name='title']").value = title;
        document.querySelector("input[name='email']").value = email;
        document.querySelector("input[name='phone']").value = phone;
        document.querySelector("select[name='company']").value = company;
        document.querySelector("input[name='approve']").checked = (approve === 'true');
        document.querySelector("input[name='dateResponse']").value = dateResponse;
        document.querySelector("input[name='dateCouncil']").value = dateCouncil;
        document.querySelector("input[name='requestTitle']").value = requestTitle;
        document.querySelector("textarea[name='comment']").value = comment;

        function onSubmit() {
            const firstName = document.querySelector("input[name='firstName']").value;
            const lastName = document.querySelector("input[name='lastName']").value;
            const title = document.querySelector("input[name='title']").value;
            const email = document.querySelector("input[name='email']").value;
            const phone = document.querySelector("input[name='phone']").value;
            const company = document.querySelector("select[name='company']").value;
            const approve = document.querySelector("input[name='approve']").checked;
            const dateResponse = document.querySelector("input[name='dateResponse']").value;
            const dateCouncil = document.querySelector("input[name='dateCouncil']").value;
            const requestTitle = document.querySelector("input[name='requestTitle']").value;
            const comment = document.querySelector("textarea[name='comment']").value;

            console.log("Captured form values:");
            console.log("firstName:", firstName);
            console.log("lastName:", lastName);
            console.log("title:", title);
            console.log("email:", email);
            console.log("phone:", phone);
            console.log("company:", company);
            console.log("approve:", approve);
            console.log("dateResponse:", dateResponse);
            console.log("dateCouncil:", dateCouncil);
            console.log("requestTitle:", requestTitle);
            console.log("comment:", comment);

            // Store values in localStorage
            localStorage.setItem("firstName", firstName);
            localStorage.setItem("lastName", lastName);
            localStorage.setItem("title", title);
            localStorage.setItem("email", email);
            localStorage.setItem("phone", phone);
            localStorage.setItem("company", company);
            localStorage.setItem("approve", approve);
            localStorage.setItem("dateResponse", dateResponse);
            localStorage.setItem("dateCouncil", dateCouncil);
            localStorage.setItem("requestTitle", requestTitle);
            localStorage.setItem("comment", comment);
        }
        localStorage.clear();
        </script>
</head>

<body>
    <form id="requestLegalServiceForm" action="ServiceSelection" method="post" onsubmit="handleFormSubmit(event)">
        <h1 style="color:rgb(7, 7, 73);"><u>Step 1: Form Introduction</u></h1>
        <i>Please be advised that you must complete and submit this form before closing the browser. Your form progress
            will not be saved for completion later, so please have everything you need before proceeding.</i>
        <br>
        <p style="color:rgb(227, 13, 13);">* Denotes required fields</p>
        <b>Please enter your name and email address below:</b>

        <table name="personDetails">

            <tr>
                <th align="left"><label for="firstName"><span class="required">*</span>First name</label></th>
                <td>
                    <input type="text" class="textItem" id="firstName" name="firstName" size="50" required />
                </td>
            </tr>
            <tr>
                <th align="left"><label for="lastName"><span class="required">*</span>Last name</label></th>
                <td>
                    <input type="text" class="textItem" id="lastName" name="lastName" size="50" required />
                </td>
            </tr>
            <tr>
                <th align="left"><label for="title"><span class="required">*</span>Title</label></th>
                <td>
                    <input type="text" class="textItem" id="title" name="title" size="50" required />
                </td>
            </tr>
            <tr>
                <th align="left"><label for="email"><span class="required">*</span>Email Address</label></th>
                <td>
                    <input type="email" class="textItem" id="email" name="email" size="50" required />
                </td>
            </tr>

            <tr>
                <th align="left"><label for="phone"><span class="required">*</span>Phone Number</label></th>
                <td>
                    <input type="tel" class="textItem" id="phone" name="phone" size="50" onchange="phoneValidation()"
                        required placeholder="(123)456-78990" />
                    <div id="error" class="required"></div>
                </td>
            </tr>

        </table><br>


        <b><span class="required">*</span>Which department/division are you requesting services for?</b></br> </br>
        <select name="company" id="company" required>
            <option value="selection">Please make a selection.....</option>
            <option value="Dept1">Dept1</option>
            <option value="Dept2">Dept2</option>
        </select></br> </br>

        <b><span class="required">*</span>Please check here to verify that your department head, or a manager, has
            approved this request:</b></br> </br>
        <input type="checkbox" style="margin-left: 60px" id="approve" name="approve" required /> Department Head/Manager
        Approval </br> </br>

        <b><span class="required">*</span> Please enter the date you are requesting the response by</b></br> </br>
        <input type="date" style="margin-left: 60px" id="dateResponse" name="dateResponse" required /></br> </br>

        <b>Please enter the date, if applicable, of the council meeting you are planning for:</b></br> </br>
        <input type="date" style="margin-left: 60px" id="dateCouncil" name="dateCouncil" /></br> </br>

        <b><span class="required">*</span>Please give this request a title:</b></br> </br>
        <input type="text" class="textItem" style="margin-left: 60px" id="requestTitle" name="requestTitle" size="50"
            required /></br> </br>

        <b><span class="required">*</span>Please briefly summarize the services you require:</b></br> </br>

        <textarea id="comment" name="comment" rows="4" cols="50" maxlength="500" oninput="updateCount()"></textarea>
        <div class="box">
            <div id="charCount"> Characters remaining :
                <span>500</span>
            </div>
        </div>
        <br><br>
        <input class="brand-button-large" type="submit" id="submit" value="NEXT" onclick="onSubmit()"/>
    </form>
</body>

</html>