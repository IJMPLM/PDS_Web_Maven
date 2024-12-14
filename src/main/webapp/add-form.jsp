<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
    <title>Add Record</title>
</head>
<body>
    <header>
        <%@ include file="dashboard-header.jsp" %>
    </header>
    <div class="m-4">
        <h1 class="text-2xl font-bold">Add New Record</h1>
        <form action="CreateRecordServlet" method="post">
            <h2 class="mt-8">Personal Information</h2>
            <div class="grid grid-cols-2 gap-4">
                <div>
                    <label for="lname">Last Name:</label>
                    <input type="text" id="lname" name="lname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="fname">First Name:</label>
                    <input type="text" id="fname" name="fname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="mname">Middle Name:</label>
                    <input type="text" id="mname" name="mname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="extname">Name Extension:</label>
                    <input type="text" id="extname" name="extname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="gender">Sex:</label>
                    <select id="gender" name="gender" class="border p-2 w-full">
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                    </select>
                </div>
                <div>
                    <label for="civilstatus">Civil Status:</label>
                    <select id="civilstatus" name="civilstatus" class="border p-2 w-full">
                        <option value="1">Single</option>
                        <option value="2">Married</option>
                        <option value="3">Widowed</option>
                        <option value="4">Separated</option>
                        <option value="5">Others</option>
                    </select>
                </div>
                <div>
                    <label for="citizenship">Citizenship:</label>
                    <select id="citizenship" name="citizenship" class="border p-2 w-full">
                        <option value="1">Filipino</option>
                        <option value="2">Dual Citizenship</option>
                    </select>
                </div>
                <div>
                    <label for="dob">Date of Birth:</label>
                    <input type="date" id="dob" name="dob" class="border p-2 w-full">
                </div>
                <div>
                    <label for="birthplace">Place of Birth:</label>
                    <input type="text" id="birthplace" name="birthplace" class="border p-2 w-full">
                </div>
                <div>
                    <label for="height">Height:</label>
                    <input type="text" id="height" name="height" class="border p-2 w-full">
                </div>
                <div>
                    <label for="weight">Weight:</label>
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
            <h2 class="mt-8">Contact Information</h2>
            <div class="grid grid-cols-2 gap-4">
                <div>
                    <label for="res_house_no">Residential House No:</label>
                    <input type="text" id="res_house_no" name="res_house_no" class="border p-2 w-full">
                </div>
                <div>
                    <label for="res_house_street">Residential Street:</label>
                    <input type="text" id="res_house_street" name="res_house_street" class="border p-2 w-full">
                </div>
                <div>
                    <label for="res_village">Residential Village:</label>
                    <input type="text" id="res_village" name="res_village" class="border p-2 w-full">
                </div>
                <div>
                    <label for="res_bgy">Residential Barangay:</label>
                    <input type="text" id="res_bgy" name="res_bgy" class="border p-2 w-full">
                </div>
                <div>
                    <label for="res_citymun">Residential City/Municipality:</label>
                    <input type="text" id="res_citymun" name="res_citymun" class="border p-2 w-full">
                </div>
                <div>
                    <label for="res_prov">Residential Province:</label>
                    <input type="text" id="res_prov" name="res_prov" class="border p-2 w-full">
                </div>
                <div>
                    <label for="res_zipcode">Residential Zip Code:</label>
                    <input type="text" id="res_zipcode" name="res_zipcode" class="border p-2 w-full">
                </div>
                <div>
                    <label for="perm_house_no">Permanent House No:</label>
                    <input type="text" id="perm_house_no" name="perm_house_no" class="border p-2 w-full">
                </div>
                <div>
                    <label for="perm_house_street">Permanent Street:</label>
                    <input type="text" id="perm_house_street" name="perm_house_street" class="border p-2 w-full">
                </div>
                <div>
                    <label for="perm_village">Permanent Village:</label>
                    <input type="text" id="perm_village" name="perm_village" class="border p-2 w-full">
                </div>
                <div>
                    <label for="perm_bgy">Permanent Barangay:</label>
                    <input type="text" id="perm_bgy" name="perm_bgy" class="border p-2 w-full">
                </div>
                <div>
                    <label for="perm_citymun">Permanent City/Municipality:</label>
                    <input type="text" id="perm_citymun" name="perm_citymun" class="border p-2 w-full">
                </div>
                <div>
                    <label for="perm_prov">Permanent Province:</label>
                    <input type="text" id="perm_prov" name="perm_prov" class="border p-2 w-full">
                </div>
                <div>
                    <label for="perm_zipcode">Permanent Zip Code:</label>
                    <input type="text" id="perm_zipcode" name="perm_zipcode" class="border p-2 w-full">
                </div>
                <div>
                    <label for="tel_no">Telephone No:</label>
                    <input type="text" id="tel_no" name="tel_no" class="border p-2 w-full">
                </div>
                <div>
                    <label for="mobile_no">Mobile No:</label>
                    <input type="text" id="mobile_no" name="mobile_no" class="border p-2 w-full">
                </div>
                <div>
                    <label for="email_address">Email Address:</label>
                    <input type="text" id="email_address" name="email_address" class="border p-2 w-full">
                </div>
            </div>
            <h2 class="mt-8">Family Background</h2>
            <div class="grid grid-cols-2 gap-4">
                <div>
                    <label for="spouse_lname">Spouse Last Name:</label>
                    <input type="text" id="spouse_lname" name="spouse_lname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="spouse_fname">Spouse First Name:</label>
                    <input type="text" id="spouse_fname" name="spouse_fname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="spouse_mname">Spouse Middle Name:</label>
                    <input type="text" id="spouse_mname" name="spouse_mname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="spouse_extname">Spouse Name Extension:</label>
                    <input type="text" id="spouse_extname" name="spouse_extname" class="border p-2 w-full">
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
                    <label for="father_lname">Father's Last Name:</label>
                    <input type="text" id="father_lname" name="father_lname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="father_fname">Father's First Name:</label>
                    <input type="text" id="father_fname" name="father_fname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="father_mname">Father's Middle Name:</label>
                    <input type="text" id="father_mname" name="father_mname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="father_extname">Father's Name Extension:</label>
                    <input type="text" id="father_extname" name="father_extname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="mother_mn_lname">Mother's Maiden Last Name:</label>
                    <input type="text" id="mother_mn_lname" name="mother_mn_lname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="mother_mn_fname">Mother's Maiden First Name:</label>
                    <input type="text" id="mother_mn_fname" name="mother_mn_fname" class="border p-2 w-full">
                </div>
                <div>
                    <label for="mother_mn_mname">Mother's Maiden Middle Name:</label>
                    <input type="text" id="mother_mn_mname" name="mother_mn_mname" class="border p-2 w-full">
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