<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
    <title>Family Background</title>
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
        <div class="section-header">Family Background</div>
        <div class="grid grid-cols-2 gap-4">
            <%
                Map<String, String> data = (Map<String, String>) request.getAttribute("data");
                if (data != null) {
            %>
                    <div class="input-container">
                        <label for="spouse_fullname">Spouse Full Name:</label>
                        <input type="text" id="spouse_fullname" name="spouse_fullname" value="<%= data.get("spouse_fullname") %>" readonly>
                        <span class="icon edit-icon" data-field="spouse_fullname">&#9998;</span>
                        <span class="icon delete-icon" data-field="spouse_fullname">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="spouse_fullname">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="spouse_fullname">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="spouse_occupation">Spouse Occupation:</label>
                        <input type="text" id="spouse_occupation" name="spouse_occupation" value="<%= data.get("spouse_occupation") %>" readonly>
                        <span class="icon edit-icon" data-field="spouse_occupation">&#9998;</span>
                        <span class="icon delete-icon" data-field="spouse_occupation">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="spouse_occupation">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="spouse_occupation">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="spouse_employer">Spouse Employer:</label>
                        <input type="text" id="spouse_employer" name="spouse_employer" value="<%= data.get("spouse_employer") %>" readonly>
                        <span class="icon edit-icon" data-field="spouse_employer">&#9998;</span>
                        <span class="icon delete-icon" data-field="spouse_employer">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="spouse_employer">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="spouse_employer">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="spouse_emp_address">Spouse Employer Address:</label>
                        <input type="text" id="spouse_emp_address" name="spouse_emp_address" value="<%= data.get("spouse_emp_address") %>" readonly>
                        <span class="icon edit-icon" data-field="spouse_emp_address">&#9998;</span>
                        <span class="icon delete-icon" data-field="spouse_emp_address">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="spouse_emp_address">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="spouse_emp_address">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="father_fullname">Father's Full Name:</label>
                        <input type="text" id="father_fullname" name="father_fullname" value="<%= data.get("father_fullname") %>" readonly>
                        <span class="icon edit-icon" data-field="father_fullname">&#9998;</span>
                        <span class="icon delete-icon" data-field="father_fullname">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="father_fullname">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="father_fullname">&#10060;</span>
                    </div>
                    <div class="input-container">
                        <label for="mother_fullname">Mother's Maiden Name:</label>
                        <input type="text" id="mother_fullname" name="mother_fullname" value="<%= data.get("mother_fullname") %>" readonly>
                        <span class="icon edit-icon" data-field="mother_fullname">&#9998;</span>
                        <span class="icon delete-icon" data-field="mother_fullname">&#128465;</span>
                        <span class="icon check-icon hidden" data-field="mother_fullname">&#10003;</span>
                        <span class="icon cancel-icon hidden" data-field="mother_fullname">&#10060;</span>
                    </div>
            <%
                } else {
            %>
                    <div>No data available</div>
            <%
                }
            %>
        </div>
        <div class="mt-4">
            <h2>Children</h2>
            <div class="grid grid-cols-2 gap-4">
                <%
                    List<Map<String, String>> dataChildren = (List<Map<String, String>>) request.getAttribute("data_children");
                    if (dataChildren != null && !dataChildren.isEmpty()) {
                        for (Map<String, String> child : dataChildren) {
                %>
                            <div class="input-container">
                                <label for="child_fullname_<%= child.get("child_id") %>">Child Name:</label>
                                <input type="text" id="child_fullname_<%= child.get("child_id") %>" name="child_fullname_<%= child.get("child_id") %>" value="<%= child.get("child_fullname") %>" readonly>
                                <span class="icon edit-icon" data-field="child_fullname_<%= child.get("child_id") %>">&#9998;</span>
                                <span class="icon delete-icon" data-field="child_fullname_<%= child.get("child_id") %>">&#128465;</span>
                                <span class="icon check-icon hidden" data-field="child_fullname_<%= child.get("child_id") %>">&#10003;</span>
                                <span class="icon cancel-icon hidden" data-field="child_fullname_<%= child.get("child_id") %>">&#10060;</span>
                            </div>
                            <div class="input-container">
                                <label for="child_dob_<%= child.get("child_id") %>">Child Date of Birth:</label>
                                <input type="text" id="child_dob_<%= child.get("child_id") %>" name="child_dob_<%= child.get("child_id") %>" value="<%= child.get("child_dob") %>" readonly>
                                <span class="icon edit-icon" data-field="child_dob_<%= child.get("child_id") %>">&#9998;</span>
                                <span class="icon delete-icon" data-field="child_dob_<%= child.get("child_id") %>">&#128465;</span>
                                <span class="icon check-icon hidden" data-field="child_dob_<%= child.get("child_id") %>">&#10003;</span>
                                <span class="icon cancel-icon hidden" data-field="child_dob_<%= child.get("child_id") %>">&#10060;</span>
                            </div>
                <%
                        }
                    } else {
                %>
                        <div>No children data available</div>
                <%
                    }
                %>
            </div>
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