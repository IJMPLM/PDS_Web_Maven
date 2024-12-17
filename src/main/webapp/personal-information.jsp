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
        .input-container input, .input-container-2 {
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
            display: none !important;
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
            <form action="UpdatePersonalInfoServlet" method="post">
                <div class="section-header text-center my-8 font-[Inter] text-4xl">PERSONAL INFORMATION</div>    
                <%
                    Map<String, String> data = (Map<String, String>) request.getAttribute("data");
                    String civilstatusid = "", citizenshipid = "";
                    if (data != null) {
                        Map<String, String> respondent = data;
                        civilstatusid = respondent.get("civilstatus_id");
                        citizenshipid = respondent.get("cit_id");
                %>
                <div class="flex justify-end p-4">
                    <button id="editButton" type="button" class="bg-blue-500 text-white px-4 py-2 rounded">Edit</button>
                    <button id="deleteButton" type="button" class="bg-gray-500 text-white px-4 py-2 rounded">Delete</button>
                    <button id="discardButton" type="button" class="bg-gray-500 text-white px-4 py-2 rounded hidden">Discard Changes</button>
                    <button id="updateButton" type="submit" class="bg-blue-500 text-white px-4 py-2 rounded hidden">Update</button>
                </div>
                <%@ include file="personal-information-1.jsp" %>
                <div class="section-header my-12 text-gray-600">CONTACT INFORMATION</div>
                <%@ include file="personal-information-2.jsp" %>
                <div class="section-header my-12 text-gray-600">GOVERNMENT AND SOCIAL SERVICE IDENTIFICATIONS</div>
                <%@ include file="personal-information-3.jsp" %>
                <%
                    } else {
                %>
                        <div>No data available</div>
                <%
                    }
                %>
            </form>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const editButton = document.getElementById('editButton');
            const discardButton = document.getElementById('discardButton');
            const deleteButton = document.getElementById('deleteButton');
            const inputs = document.querySelectorAll('.readonly-input');
            const fullname = document.getElementById('fullname');
            const fullnameEdit = document.getElementById('fullname-edit');
            const resAddress = document.getElementById('res_address');
            const resAddressEdit = document.getElementById('res_address-edit');
            const permAddress = document.getElementById('perm_address');
            const permAddressEdit = document.getElementById('perm_address-edit');
            const labelText = document.getElementsByClassName('label-text');

            var civilStatus = '<%= civilstatusid %>'; 
            var civilStatusDropdown = document.getElementById('civil-status'); 
            if (civilStatusDropdown) { 
                civilStatusDropdown.value = civilStatus; 
            }

            var citizenship = '<%= citizenshipid %>'; 
            var citizenshipDropdown = document.getElementById('citizenship'); 
            if (citizenshipDropdown) { 
                citizenshipDropdown.value = citizenship; 
            }

            editButton.addEventListener('click', function() {
                inputs.forEach(input => {
                    input.removeAttribute('readonly');
                    input.classList.remove('readonly-input');
                    input.classList.add('editable-input');
                });
                fullname.classList.add('hidden');
                fullnameEdit.classList.remove('hidden');
                resAddress.classList.add('hidden');
                resAddressEdit.classList.remove('hidden');
                permAddress.classList.add('hidden');
                permAddressEdit.classList.remove('hidden');
                updateButton.classList.remove('hidden');
                deleteButton.classList.add('hidden');
                discardButton.classList.remove('hidden');
                editButton.classList.add('hidden');
                Array.from(labelText).forEach(label => {
                    label.classList.add('hidden');
                });
            });

            discardButton.addEventListener('click', function() {
                inputs.forEach(input => {
                    input.setAttribute('readonly', true);
                    input.classList.add('readonly-input');
                    input.classList.remove('editable-input');
                });
                fullname.classList.remove('hidden');
                fullnameEdit.classList.add('hidden');
                resAddress.classList.remove('hidden');
                resAddressEdit.classList.add('hidden');
                permAddress.classList.remove('hidden');
                permAddressEdit.classList.add('hidden');
                editButton.classList.remove('hidden');
                deleteButton.classList.remove('hidden');
                discardButton.classList.add('hidden');
                updateButton.classList.add('hidden');
                Array.from(labelText).forEach(label => {
                    label.classList.remove('hidden');
                });
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