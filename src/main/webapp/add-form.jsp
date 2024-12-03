<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
    <title>Add New Record</title>
</head>
<body>
    <header>
        <%@ include file="dashboard-header.jsp" %>
    </header>
    <div class="m-4">
        <h2>Create Personal Information</h2>
        <form action="CreateRecordServlet" method="post">
            <div class="grid grid-cols-2 gap-4">
                <div>
                    <label for="fullname">Full Name:</label>
                    <input type="text" id="fullname" name="fullname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="gender">Gender:</label>
                    <input type="text" id="gender" name="gender" class="border p-2 w-full">
                </div>
                <div>
                    <label for="civilstatus">Civil Status:</label>
                    <input type="text" id="civilstatus" name="civilstatus" class="border p-2 w-full">
                </div>
                <div>
                    <label for="age">Age:</label>
                    <input type="text" id="age" name="age" class="border p-2 w-full">
                </div>
                <div>
                    <label for="birthplace">Birthplace:</label>
                    <input type="text" id="birthplace" name="birthplace" class="border p-2 w-full">
                </div>
                <div>
                    <label for="height">Height (cm):</label>
                    <input type="text" id="height" name="height" class="border p-2 w-full">
                </div>
                <div>
                    <label for="weight">Weight (kg):</label>
                    <input type="text" id="weight" name="weight" class="border p-2 w-full">
                </div>
                <div>
                    <label for="bloodtype">Blood Type:</label>
                    <input type="text" id="bloodtype" name="bloodtype" class="border p-2 w-full">
                </div>
                <div>
                    <label for="gsis_no">GSIS No:</label>
                    <input type="text" id="gsis_no" name="gsis_no" class="border p-2 w-full">
                </div>
                <div>
                    <label for="pagibig_id">Pag-IBIG ID:</label>
                    <input type="text" id="pagibig_id" name="pagibig_id" class="border p-2 w-full">
                </div>
                <div>
                    <label for="philhealth_id">PhilHealth ID:</label>
                    <input type="text" id="philhealth_id" name="philhealth_id" class="border p-2 w-full">
                </div>
                <div>
                    <label for="sss_no">SSS No:</label>
                    <input type="text" id="sss_no" name="sss_no" class="border p-2 w-full">
                </div>
                <div>
                    <label for="tin">TIN:</label>
                    <input type="text" id="tin" name="tin" class="border p-2 w-full">
                </div>
                <div>
                    <label for="agency_empno">Agency Employee No:</label>
                    <input type="text" id="agency_empno" name="agency_empno" class="border p-2 w-full">
                </div>
            </div>
            <h2 class="mt-8">Create Family Background</h2>
            <div class="grid grid-cols-2 gap-4">
                <div>
                    <label for="spouse_fullname">Spouse Full Name:</label>
                    <input type="text" id="spouse_fullname" name="spouse_fullname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="spouse_occupation">Spouse Occupation:</label>
                    <input type="text" id="spouse_occupation" name="spouse_occupation" class="border p-2 w-full">
                </div>
                <div>
                    <label for="spouse_employer">Spouse Employer:</label>
                    <input type="text" id="spouse_employer" name="spouse_employer" class="border p-2 w-full">
                </div>
                <div>
                    <label for="spouse_emp_address">Spouse Employer Address:</label>
                    <input type="text" id="spouse_emp_address" name="spouse_emp_address" class="border p-2 w-full">
                </div>
                <div>
                    <label for="father_fullname">Father's Full Name:</label>
                    <input type="text" id="father_fullname" name="father_fullname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="mother_fullname">Mother's Maiden Name:</label>
                    <input type="text" id="mother_fullname" name="mother_fullname" class="border p-2 w-full">
                </div>
            </div>
            <h2 class="mt-8">Children Information</h2>
            <div id="children-container" class="grid grid-cols-2 gap-4">
                <div>
                    <label for="child_fullname_1">Child Full Name:</label>
                    <input type="text" id="child_fullname_1" name="child_fullname_1" class="border p-2 w-full">
                </div>
                <div>
                    <label for="child_dob_1">Child Date of Birth:</label>
                    <input type="date" id="child_dob_1" name="child_dob_1" class="border p-2 w-full">
                </div>
            </div>
            <button type="button" id="add-child" class="mt-4 bg-blue-500 text-white p-2 rounded">Add Another Child</button>
            <button type="submit" class="mt-4 bg-green-500 text-white p-2 rounded">Submit</button>
        </form>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            let childCount = 1;
            document.getElementById('add-child').addEventListener('click', function() {
                childCount++;
                const container = document.getElementById('children-container');
                const childFullName = document.createElement('div');
                childFullName.innerHTML = `<label for="child_fullname_${childCount}">Child Full Name:</label>
                                           <input type="text" id="child_fullname_${childCount}" name="child_fullname_${childCount}" class="border p-2 w-full">`;
                const childDob = document.createElement('div');
                childDob.innerHTML = `<label for="child_dob_${childCount}">Child Date of Birth:</label>
                                      <input type="date" id="child_dob_${childCount}" name="child_dob_${childCount}" class="border p-2 w-full">`;
                container.appendChild(childFullName);
                container.appendChild(childDob);
            });
        });
    </script>
</body>
</html>