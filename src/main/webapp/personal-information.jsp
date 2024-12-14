<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
    <title>Personal Information</title>
    <style>
        .section-header {
            font-size: 1.5rem;
            font-weight: bold;
            margin-top: 1rem;
            margin-bottom: 0.5rem;
        }
        .input-container {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .input-container input {
            flex: 1;
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 0.25rem;
            background-color: #f9f9f9;
        }
        .input-container input[readonly] {
            background-color: #e9e9e9;
        }
        .icon {
            cursor: pointer;
            font-size: 1.25rem;
        }
        .hidden {
            display: none;
        }
    </style>
</head>
<body>
    <header>
        <%@ include file="dashboard-header.jsp" %>
    </header>
    <div class="m-4">
        <div class="section-header">Personal Information</div>
        <div class="grid grid-cols-2 gap-4">
            <%
                Map<String, String> data = (Map<String, String>) request.getAttribute("data");
                if (data != null) {
                    Map<String, String> respondent = data;
            %>
                    <div class="input-container">
                        <label for="fullname">Full Name:</label>
                        <input type="text" id="fullname" name="fullname" value="<%= respondent.get("fullname") %>" readonly>
                        <span class="icon edit-icon" data-field="fullname">&#9998;</span>
                        <span class="icon delete-icon" data-field="fullname">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="fullname">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="fullname">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="gender">Gender:</label>
                        <input type="text" id="gender" name="gender" value="<%= respondent.get("gender") %>" readonly>
                        <span class="icon edit-icon" data-field="gender">&#9998;</span>
                        <span class="icon delete-icon" data-field="gender">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="gender">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="gender">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="civilstatus">Civil Status:</label>
                        <input type="text" id="civilstatus" name="civilstatus" value="<%= respondent.get("civilstatus") %>" readonly>
                        <span class="icon edit-icon" data-field="civilstatus">&#9998;</span>
                        <span class="icon delete-icon" data-field="civilstatus">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="civilstatus">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="civilstatus">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="age">Age:</label>
                        <input type="text" id="age" name="age" value="<%= respondent.get("age") %>" readonly>
                        <span class="icon edit-icon" data-field="age">&#9998;</span>
                        <span class="icon delete-icon" data-field="age">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="age">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="age">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="birthplace">Birthplace:</label>
                        <input type="text" id="birthplace" name="birthplace" value="<%= respondent.get("birthplace") %>" readonly>
                        <span class="icon edit-icon" data-field="birthplace">&#9998;</span>
                        <span class="icon delete-icon" data-field="birthplace">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="birthplace">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="birthplace">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="height">Height (cm):</label>
                        <input type="text" id="height" name="height" value="<%= respondent.get("height") %>" readonly>
                        <span class="icon edit-icon" data-field="height">&#9998;</span>
                        <span class="icon delete-icon" data-field="height">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="height">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="height">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="weight">Weight (kg):</label>
                        <input type="text" id="weight" name="weight" value="<%= respondent.get("weight") %>" readonly>
                        <span class="icon edit-icon" data-field="weight">&#9998;</span>
                        <span class="icon delete-icon" data-field="weight">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="weight">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="weight">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="bloodtype">Blood Type:</label>
                        <input type="text" id="bloodtype" name="bloodtype" value="<%= respondent.get("bloodtype") %>" readonly>
                        <span class="icon edit-icon" data-field="bloodtype">&#9998;</span>
                        <span class="icon delete-icon" data-field="bloodtype">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="bloodtype">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="bloodtype">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="gsis_no">GSIS No:</label>
                        <input type="text" id="gsis_no" name="gsis_no" value="<%= respondent.get("gsis_no") %>" readonly>
                        <span class="icon edit-icon" data-field="gsis_no">&#9998;</span>
                        <span class="icon delete-icon" data-field="gsis_no">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="gsis_no">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="gsis_no">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="pagibig_id">Pag-IBIG ID:</label>
                        <input type="text" id="pagibig_id" name="pagibig_id" value="<%= respondent.get("pagibig_id") %>" readonly>
                        <span class="icon edit-icon" data-field="pagibig_id">&#9998;</span>
                        <span class="icon delete-icon" data-field="pagibig_id">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="pagibig_id">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="pagibig_id">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="philhealth_id">PhilHealth ID:</label>
                        <input type="text" id="philhealth_id" name="philhealth_id" value="<%= respondent.get("philhealth_id") %>" readonly>
                        <span class="icon edit-icon" data-field="philhealth_id">&#9998;</span>
                        <span class="icon delete-icon" data-field="philhealth_id">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="philhealth_id">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="philhealth_id">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="sss_no">SSS No:</label>
                        <input type="text" id="sss_no" name="sss_no" value="<%= respondent.get("sss_no") %>" readonly>
                        <span class="icon edit-icon" data-field="sss_no">&#9998;</span>
                        <span class="icon delete-icon" data-field="sss_no">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="sss_no">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="sss_no">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="tin">TIN:</label>
                        <input type="text" id="tin" name="tin" value="<%= respondent.get("tin") %>" readonly>
                        <span class="icon edit-icon" data-field="tin">&#9998;</span>
                        <span class="icon delete-icon" data-field="tin">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="tin">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="tin">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="agency_empno">Agency Employee No:</label>
                        <input type="text" id="agency_empno" name="agency_empno" value="<%= respondent.get("agency_empno") %>" readonly>
                        <span class="icon edit-icon" data-field="agency_empno">&#9998;</span>
                        <span class="icon delete-icon" data-field="agency_empno">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="agency_empno">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="agency_empno">&#10060;</span>
                    </div>
            <%
                } else {
            %>
                    <div>No data available</div>
            <%
                }
            %>
        </div>
        <div class="section-header">Contact Information</div>
        <div class="grid grid-cols-2 gap-4">
            <%
                Map<String, String> dataContact = (Map<String, String>) request.getAttribute("data_contact");
                if (dataContact != null) {
            %>
                    <div class="input-container">
                        <label for="res_house_no">Residential House No:</label>
                        <input type="text" id="res_house_no" name="res_house_no" value="<%= dataContact.get("res_house_no") %>" readonly>
                        <span class="icon edit-icon" data-field="res_house_no">&#9998;</span>
                        <span class="icon delete-icon" data-field="res_house_no">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="res_house_no">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="res_house_no">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="res_house_street">Residential Street:</label>
                        <input type="text" id="res_house_street" name="res_house_street" value="<%= dataContact.get("res_house_street") %>" readonly>
                        <span class="icon edit-icon" data-field="res_house_street">&#9998;</span>
                        <span class="icon delete-icon" data-field="res_house_street">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="res_house_street">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="res_house_street">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="res_village">Residential Village:</label>
                        <input type="text" id="res_village" name="res_village" value="<%= dataContact.get("res_village") %>" readonly>
                        <span class="icon edit-icon" data-field="res_village">&#9998;</span>
                        <span class="icon delete-icon" data-field="res_village">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="res_village">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="res_village">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="res_bgy">Residential Barangay:</label>
                        <input type="text" id="res_bgy" name="res_bgy" value="<%= dataContact.get("res_bgy") %>" readonly>
                        <span class="icon edit-icon" data-field="res_bgy">&#9998;</span>
                        <span class="icon delete-icon" data-field="res_bgy">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="res_bgy">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="res_bgy">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="res_citymun">Residential City/Municipality:</label>
                        <input type="text" id="res_citymun" name="res_citymun" value="<%= dataContact.get("res_citymun") %>" readonly>
                        <span class="icon edit-icon" data-field="res_citymun">&#9998;</span>
                        <span class="icon delete-icon" data-field="res_citymun">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="res_citymun">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="res_citymun">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="res_prov">Residential Province:</label>
                        <input type="text" id="res_prov" name="res_prov" value="<%= dataContact.get("res_prov") %>" readonly>
                        <span class="icon edit-icon" data-field="res_prov">&#9998;</span>
                        <span class="icon delete-icon" data-field="res_prov">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="res_prov">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="res_prov">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="res_zipcode">Residential Zip Code:</label>
                        <input type="text" id="res_zipcode" name="res_zipcode" value="<%= dataContact.get("res_zipcode") %>" readonly>
                        <span class="icon edit-icon" data-field="res_zipcode">&#9998;</span>
                        <span class="icon delete-icon" data-field="res_zipcode">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="res_zipcode">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="res_zipcode">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="perm_house_no">Permanent House No:</label>
                        <input type="text" id="perm_house_no" name="perm_house_no" value="<%= dataContact.get("perm_house_no") %>" readonly>
                        <span class="icon edit-icon" data-field="perm_house_no">&#9998;</span>
                        <span class="icon delete-icon" data-field="perm_house_no">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="perm_house_no">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="perm_house_no">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="perm_house_street">Permanent Street:</label>
                        <input type="text" id="perm_house_street" name="perm_house_street" value="<%= dataContact.get("perm_house_street") %>" readonly>
                        <span class="icon edit-icon" data-field="perm_house_street">&#9998;</span>
                        <span class="icon delete-icon" data-field="perm_house_street">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="perm_house_street">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="perm_house_street">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="perm_village">Permanent Village:</label>
                        <input type="text" id="perm_village" name="perm_village" value="<%= dataContact.get("perm_village") %>" readonly>
                        <span class="icon edit-icon" data-field="perm_village">&#9998;</span>
                        <span class="icon delete-icon" data-field="perm_village">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="perm_village">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="perm_village">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="perm_bgy">Permanent Barangay:</label>
                        <input type="text" id="perm_bgy" name="perm_bgy" value="<%= dataContact.get("perm_bgy") %>" readonly>
                        <span class="icon edit-icon" data-field="perm_bgy">&#9998;</span>
                        <span class="icon delete-icon" data-field="perm_bgy">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="perm_bgy">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="perm_bgy">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="perm_citymun">Permanent City/Municipality:</label>
                        <input type="text" id="perm_citymun" name="perm_citymun" value="<%= dataContact.get("perm_citymun") %>" readonly>
                        <span class="icon edit-icon" data-field="perm_citymun">&#9998;</span>
                        <span class="icon delete-icon" data-field="perm_citymun">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="perm_citymun">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="perm_citymun">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="perm_prov">Permanent Province:</label>
                        <input type="text" id="perm_prov" name="perm_prov" value="<%= dataContact.get("perm_prov") %>" readonly>
                        <span class="icon edit-icon" data-field="perm_prov">&#9998;</span>
                        <span class="icon delete-icon" data-field="perm_prov">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="perm_prov">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="perm_prov">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="perm_zipcode">Permanent Zip Code:</label>
                        <input type="text" id="perm_zipcode" name="perm_zipcode" value="<%= dataContact.get("perm_zipcode") %>" readonly>
                        <span class="icon edit-icon" data-field="perm_zipcode">&#9998;</span>
                        <span class="icon delete-icon" data-field="perm_zipcode">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="perm_zipcode">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="perm_zipcode">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="tel_no">Telephone No:</label>
                        <input type="text" id="tel_no" name="tel_no" value="<%= dataContact.get("tel_no") %>" readonly>
                        <span class="icon edit-icon" data-field="tel_no">&#9998;</span>
                        <span class="icon delete-icon" data-field="tel_no">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="tel_no">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="tel_no">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="mobile_no">Mobile No:</label>
                        <input type="text" id="mobile_no" name="mobile_no" value="<%= dataContact.get("mobile_no") %>" readonly>
                        <span class="icon edit-icon" data-field="mobile_no">&#9998;</span>
                        <span class="icon delete-icon" data-field="mobile_no">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="mobile_no">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="mobile_no">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="email_addr">Email Address:</label>
                        <input type="text" id="email_addr" name="email_addr" value="<%= dataContact.get("email_addr") %>" readonly>
                        <span class="icon edit-icon" data-field="email_addr">&#9998;</span>
                        <span class="icon delete-icon" data-field="email_addr">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="email_addr">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="email_addr">&#10060;</span>
                    </div>
            <%
                } else {
            %>
                    <div>No contact information available</div>
            <%
                }
            %>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const editIcons = document.querySelectorAll('.edit-icon');
            const deleteIcons = document.querySelectorAll('.delete-icon');
            const checkIcons = document.querySelectorAll('.check-icon');
            const cancelIcons = document.querySelectorAll('.cancel-icon');
    
            editIcons.forEach(icon => {
                icon.addEventListener('click', function() {
                    const field = icon.getAttribute('data-field');
                    const input = document.getElementById(field);
                    input.removeAttribute('readonly');
                    input.focus();
                    icon.classList.add('hidden');
                    document.querySelector(`.delete-icon[data-field="${field}"]`).classList.add('hidden');
                    document.querySelector(`.check-icon[data-field="${field}"]`).classList.remove('hidden');
                    document.querySelector(`.cancel-icon[data-field="${field}"]`).classList.remove('hidden');
                });
            });
    
            deleteIcons.forEach(icon => {
                icon.addEventListener('click', function() {
                    const field = icon.getAttribute('data-field');
                    const input = document.getElementById(field);
                    input.removeAttribute('readonly');
                    input.value = '';
                    input.focus();
                    icon.classList.add('hidden');
                    document.querySelector(`.edit-icon[data-field="${field}"]`).classList.add('hidden');
                    document.querySelector(`.check-icon[data-field="${field}"]`).classList.remove('hidden');
                    document.querySelector(`.cancel-icon[data-field="${field}"]`).classList.remove('hidden');
                });
            });
    
            checkIcons.forEach(icon => {
                icon.addEventListener('click', function() {
                    const field = icon.getAttribute('data-field');
                    const input = document.getElementById(field);
                    const value = input.value;
                    // Invoke UpdateInfoServlet with the updated data
                    const form = document.createElement('form');
                    form.method = 'post';
                    form.action = 'UpdateInfoServlet';
                    const hiddenField = document.createElement('input');
                    hiddenField.type = 'hidden';
                    hiddenField.name = field;
                    hiddenField.value = value;
                    form.appendChild(hiddenField);
                    document.body.appendChild(form);
                    form.submit();
                });
            });
    
            cancelIcons.forEach(icon => {
                icon.addEventListener('click', function() {
                    const field = icon.getAttribute('data-field');
                    const input = document.getElementById(field);
                    input.setAttribute('readonly', true);
                    input.value = input.defaultValue;
                    icon.classList.add('hidden');
                    document.querySelector(`.check-icon[data-field="${field}"]`).classList.add('hidden');
                    document.querySelector(`.edit-icon[data-field="${field}"]`).classList.remove('hidden');
                    document.querySelector(`.delete-icon[data-field="${field}"]`).classList.remove('hidden');
                });
            });
        });
    </script>
</body>
</html>