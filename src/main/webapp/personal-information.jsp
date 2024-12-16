<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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
        .readonly-input {
            border: none !important; 
            background-color: white !important;
        }
    </style>
</head>
<body>
    <header>
        <%@ include file="dashboard-header.jsp" %>
    </header>
    <div class="m-4">
        <div id="main" class="m-10">
            <div class="section-header text-center my-8 font-[Inter] text-4xl">PERSONAL INFORMATION</div>    
            <%
                Map<String, String> data = (Map<String, String>) request.getAttribute("data");
                if (data != null) {
                    Map<String, String> respondent = data;
            %>
            <div id="personal_info_1" class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <label for="fullname" class="flex justify-between items-center"><div class="flex">Full Name</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="fullname" name="fullname" value="<%= respondent.get("fullname") %>" readonly>
                </div>
                <label for="height" class="flex justify-between items-center"><div class="flex">Height (m)</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="height" name="height" value="<%= respondent.get("height") %>" readonly>
                </div>
                <label for="age" class="flex justify-between items-center"><div class="flex">Date of Birth</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="age" name="age" value="<%= respondent.get("age") %>" readonly>
                </div>
                <label for="weight" class="flex justify-between items-center"><div class="flex">Weight (kg)</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="weight" name="weight" value="<%= respondent.get("weight") %>" readonly>
                </div>
                <label for="birthplace" class="flex justify-between items-center"><div class="flex">Place of Birth</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="birthplace" name="birthplace" value="<%= respondent.get("birthplace") %>" readonly>
                </div>
                <label for="bloodtype" class="flex justify-between items-center"><div class="flex">Blood Type</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="bloodtype" name="bloodtype" value="<%= respondent.get("bloodtype") %>" readonly>
                </div>
                <label for="gender" class="flex justify-between items-center"><div class="flex">Sex</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="gender" name="gender" value="<%= respondent.get("gender") %>" readonly>
                </div>              
                <label for="citizenship" class="flex justify-between items-center"><div class="flex">Citizenship</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="citizenship" name="citizenship" value="Insert citizenship here" readonly>
                </div>                
                <label for="civilstatus" class="flex justify-between items-center"><div class="flex">Civil Status</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="civilstatus" name="civilstatus" value="<%= respondent.get("civilstatus") %>" readonly>
                </div>
            </div>
            <div class="section-header my-12 text-gray-600">CONTACT INFORMATION</div>
            <div id="personal_info_2" class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <%
                    Map<String, String> dataContact = (Map<String, String>) request.getAttribute("data_contact");
                    if (dataContact != null) {
                %>
                <label for="res_address" class="flex justify-between items-center">
                    <div class="flex">Residential Address</div><div class="flex">:</div>
                </label>
                <div class="input-container col-span-2">
                    <textarea class="readonly-input text-wrap p-2" id="res_address" name="res_address" readonly style="resize: none; width: 100%; overflow:hidden"><%= dataContact.get("res_house_no") %> <%= dataContact.get("res_house_street") %>, <%= dataContact.get("res_village") %>, <%= dataContact.get("res_bgy") %>, <%= dataContact.get("res_citymun") %>, <%= dataContact.get("res_prov") %>, <%= dataContact.get("res_zipcode") %></textarea>
                </div>
                <label for="perm_address" class="flex justify-between items-center"><div class="flex">Permanent Address</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <textarea class="readonly-input text-wrap p-2" id="perm_address" name="perm_address" readonly style="resize: none; width: 100%; overflow:hidden"><%= dataContact.get("perm_house_no") %> <%= dataContact.get("perm_house_street") %>, <%= dataContact.get("perm_village") %>, <%= dataContact.get("perm_bgy") %>, <%= dataContact.get("perm_citymun") %>, <%= dataContact.get("perm_prov") %>, <%= dataContact.get("perm_zipcode") %></textarea>
                </div>
                <label for="tel_no" class="flex justify-between items-center"><div class="flex">Telephone Number</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="tel_no" name="tel_no" value="<%= dataContact.get("tel_no") %>" readonly>
                </div>
                <label for="mobile_no" class="flex justify-between items-center"><div class="flex">Mobile Number</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="mobile_no" name="mobile_no" value="<%= dataContact.get("mobile_no") %>" readonly>
                </div>
                <label for="email_addr" class="flex justify-between items-center"><div class="flex">Email Address</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="email_addr" name="email_addr" value="<%= dataContact.get("email_addr") %>" readonly>
                </div>
                <%
                    } else {
                %>
                        <div>No contact information available</div>
                <%
                    }
                %>
            </div>
            <div class="section-header my-12 text-gray-600">GOVERNMENT AND SOCIAL SERVICE IDENTIFICATIONS</div>
            <div id="personal_info_3" class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <label for="gsis_no" class="flex justify-between items-center"><div class="flex">GSIS ID NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="gsis_no" name="gsis_no" value="<%= respondent.get("gsis_no") %>" readonly>
                </div>
                <label for="pagibig_id" class="flex justify-between items-center"><div class="flex">PAG-IBIG ID NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="pagibig_id" name="pagibig_id" value="<%= respondent.get("pagibig_id") %>" readonly>
                </div>
                <label for="philhealth_id" class="flex justify-between items-center"><div class="flex">PhilHealth NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="philhealth_id" name="philhealth_id" value="<%= respondent.get("philhealth_id") %>" readonly>
                </div>
                <label for="sss_no" class="flex justify-between items-center"><div class="flex">SSS NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="sss_no" name="sss_no" value="<%= respondent.get("sss_no") %>" readonly>
                </div>
                <label for="tin" class="flex justify-between items-center"><div class="flex">TIN NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="tin" name="tin" value="<%= respondent.get("tin") %>" readonly>
                </div>
                <label for="agency_empno" class="flex justify-between items-center"><div class="flex">Agency Employee NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" class="readonly-input" id="agency_empno" name="agency_empno" value="<%= respondent.get("agency_empno") %>" readonly>
                </div>
            </div>   
                <%
                    } else {
                %>
                        <div>No data available</div>
                <%
                    }
                %>
        </div>
        <div class="flex justify-end p-4">
            <button id="editButton" class="bg-blue-500 text-white px-4 py-2 rounded">Edit</button>
            <button id="discardButton" class="bg-gray-500 text-white px-4 py-2 rounded hidden">Discard Changes</button>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const editButton = document.getElementById('editButton');
            const discardButton = document.getElementById('discardButton');
            const deleteButton = document.getElementById('deleteButton');
            const inputs = document.querySelectorAll('.readonly-input');

            editButton.addEventListener('click', function() {
                if (editButton.textContent === 'Edit') {
                    inputs.forEach(input => {
                        input.removeAttribute('readonly');
                        input.classList.remove('readonly-input');
                        input.classList.add('editable-input');
                    });
                    editButton.textContent = 'Update';
                    deleteButton.classList.add('hidden');
                    discardButton.classList.remove('hidden');
                } else {
                    // Add your update logic here, e.g., submit the form to the update servlet
                    // document.getElementById('yourFormId').submit();
                }
            });

            discardButton.addEventListener('click', function() {
                inputs.forEach(input => {
                    input.setAttribute('readonly', true);
                    input.classList.add('readonly-input');
                    input.classList.remove('editable-input');
                });
                editButton.textContent = 'Edit';
                deleteButton.classList.remove('hidden');
                discardButton.classList.add('hidden');
                // Optionally, reset the input values to their original state if needed
                // document.getElementById('yourFormId').reset();
            });

            deleteButton.addEventListener('click', function() {
                // Add your delete logic here
            });
        });
    </script>
</body>
</html>