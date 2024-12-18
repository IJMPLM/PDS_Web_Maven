<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
    <title>Add New Record</title>
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
        <h1 class="text-2xl font-bold">Add New Record</h1>
        <form action="CreateRecordServlet" method="get">
            <h2 class="section-header">Personal Information</h2>
            <div class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <div class="col-span-3">
                    <div class="grid grid-cols-3 gap-y-2 gap-x-8">
                        <label for="lname" class="flex justify-between items-center"><div class="flex">Last Name</div><div class="flex">:</div></label>
                        <input type="text" id="lname" class="input-container-2 col-span-2" name="lname" value="">
                        <label for="fname" class="flex justify-between items-center"><div class="flex">First Name</div><div class="flex">:</div></label>
                        <input type="text" id="fname" class="input-container-2 col-span-2" name="fname" value="">
                        <label for="mname" class="flex justify-between items-center"><div class="flex">Middle Name</div><div class="flex">:</div></label>
                        <input type="text" id="mname" class="input-container-2 col-span-2" name="mname" value="">
                        <label for="extname" class="flex justify-between items-center"><div class="flex">Name Extension</div><div class="flex">:</div></label>
                        <input type="text" id="extname" class="input-container-2 col-span-2" name="extname" value="">
                    </div>
                </div>
                <label for="height" class="flex justify-between items-center"><div class="flex">Height (m)</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="height" name="height" value="">
                </div>
                <label for="dob" class="flex justify-between items-center"><div class="flex">Date of Birth</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="date" id="dob" name="dob" value="" required>
                </div>
                <label for="weight" class="flex justify-between items-center"><div class="flex">Weight (kg)</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="weight" name="weight" value="">
                </div>
                <label for="birthplace" class="flex justify-between items-center"><div class="flex">Place of Birth</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="birthplace" name="birthplace" value="">
                </div>
                <label for="bloodtype" class="flex justify-between items-center"><div class="flex">Blood Type</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="bloodtype" name="bloodtype" value="">
                </div>
                <label for="gender" class="flex justify-between items-center"><div class="flex">Sex</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <select id="gender" name="gender">
                        <option value="1">Male</option>
                        <option value="2">Female</option>
                    </select>
                </div>
                <label for="citizenship" class="flex justify-between items-center"><div class="flex">Citizenship</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <select id="citizenship" name="citizenship">
                        <option value="1">Filipino</option>
                        <option value="2">Dual Citizenship</option>
                    </select>
                </div>
                <label for="civilstatus" class="flex justify-between items-center"><div class="flex">Civil Status</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <select id="civil-status" name="civil-status">
                        <option value="1">Single</option>
                        <option value="2">Married</option>
                        <option value="3">Widowed</option>
                        <option value="4">Separated</option>
                        <option value="5">Others</option>
                    </select>
                </div>
                <label for="ccit_acq_id" class="flex justify-between items-center"><div class="flex">Citizenship Acquired by</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <select id="cit_acq_id" name="cit_acq_id">
                        <option value="1">Birth</option>
                        <option value="2">Naturalization</option>
                    </select>
                </div>   
            </div>

            <h2 class="section-header my-12 text-gray-600">Contact Information</h2>
            <div class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <div class="col-span-3">
                    <div class="grid grid-cols-3 gap-x-8 gap-y-2 input-container">
                        <label for="res_house_no" class="flex justify-between items-center col-span-1"><div class="flex">Residential House No</div><div class="flex">:</div></label>
                        <input type="text" id="res_house_no" class="input-container-2 col-span-2" name="res_house_no" value="">
                        <label for="res_street" class="flex justify-between items-center"><div class="flex">Residential Street</div><div class="flex">:</div></label>
                        <input type="text" id="res_house_street" class="input-container-2 col-span-2" name="res_house_street" value="">
                        <label for="res_village" class="flex justify-between items-center"><div class="flex">Residential Village</div><div class="flex">:</div></label>
                        <input type="text" id="res_village" class="input-container-2 col-span-2" name="res_village" value="">
                        <label for="res_bgy" class="flex justify-between items-center"><div class="flex">Residential Barangay</div><div class="flex">:</div></label>
                        <input type="text" id="res_bgy" class="input-container-2 col-span-2" name="res_bgy" value="">
                        <label for="res_citymun" class="flex justify-between items-center"><div class="flex">Residential City</div><div class="flex">:</div></label>
                        <input type="text" id="res_citymun" class="input-container-2 col-span-2" name="res_citymun" value="">
                        <label for="res_prov" class="flex justify-between items-center"><div class="flex">Residential Province</div><div class="flex">:</div></label>
                        <input type="text" id="res_prov" class="input-container-2 col-span-2" name="res_prov" value="">
                        <label for="res_zipcode" class="flex justify-between items-center"><div class="flex">Residential Zip Code</div><div class="flex">:</div></label>
                        <input type="text" id="res_zipcode" class="input-container-2 col-span-2" name="res_zipcode" value="">
                    </div>
                </div>
                <label for="perm_house_no" class="flex justify-between items-center col-span-1"><div class="flex">Permanent House No</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="perm_house_no" name="perm_house_no" value="">
                </div>
                <label for="perm_street" class="flex justify-between items-center col-span-1"><div class="flex">Permanent Street</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="perm_house_street" name="perm_house_street" value="">
                </div>
                <label for="perm_village" class="flex justify-between items-center col-span-1"><div class="flex">Permanent Village</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="perm_village" name="perm_village" value="">
                </div>
                <label for="perm_bgy" class="flex justify-between items-center col-span-1"><div class="flex">Permanent Barangay</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="perm_bgy" name="perm_bgy" value="">
                </div>
                <label for="perm_city" class="flex justify-between items-center col-span-1"><div class="flex">Permanent City</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="perm_citymun" name="perm_citymun" value="">
                </div>
                <label for="perm_province" class="flex justify-between items-center col-span-1"><div class="flex">Permanent Province</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="perm_prov" name="perm_prov" value="">
                </div>
                <label for="perm_zipcode" class="flex justify-between items-center col-span-1"><div class="flex">Permanent Zip Code</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="perm_zipcode" name="perm_zipcode" value="">
                </div>
                <label for="tel_no" class="flex justify-between items-center col-span-1"><div class="flex">Telephone Number</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="tel_no" name="tel_no" value="">
                </div>
                <label for="mobile_no" class="flex justify-between items-center col-span-1"><div class="flex">Mobile Number</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="mobile_no" name="mobile_no" value="">
                </div>
                <label for="email_addr" class="flex justify-between items-center col-span-1"><div class="flex">Email Address</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="email_addr" name="email_addr" value="">
                </div>
            </div>

            <h2 class="section-header my-12 text-gray-600">Government and Social Service Identifications</h2>
            <div class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <label for="gsis_no" class="flex justify-between items-center col-span-1"><div class="flex">GSIS ID NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="gsis_no" name="gsis_no" value="">
                </div>
                <label for="pagibig_id" class="flex justify-between items-center col-span-1"><div class="flex">PAG-IBIG ID NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="pagibig_id" name="pagibig_id" value="">
                </div>
                <label for="philhealth_id" class="flex justify-between items-center col-span-1"><div class="flex">PhilHealth NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="philhealth_id" name="philhealth_id" value="">
                </div>
                <label for="sss_no" class="flex justify-between items-center col-span-1"><div class="flex">SSS NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="sss_no" name="sss_no" value="">
                </div>
                <label for="tin" class="flex justify-between items-center col-span-1"><div class="flex">TIN NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="tin" name="tin" value="">
                </div>
                <label for="agency_empno" class="flex justify-between items-center col-span-1"><div class="flex">Agency Employee NO.</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="agency_empno" name="agency_empno" value="">
                </div>
            </div>

            <h2 class="section-header my-12 text-gray-600">Family Background</h2>
            <div class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <div class="col-span-3">
                    <div class="grid grid-cols-3 gap-y-4 gap-x-8">
                        <label for="spouse_lname" class="flex justify-between items-center"><div class="flex">Spouse's Last Name</div><div class="flex">:</div></label>
                        <input type="text" id="spouse_lname" class="input-container-2 col-span-2" name="spouse_lname" value="">
                        <label for="spouse_fname" class="flex justify-between items-center"><div class="flex">Spouse's First Name</div><div class="flex">:</div></label>
                        <input type="text" id="spouse_fname" class="input-container-2 col-span-2" name="spouse_fname" value="">
                        <label for="spouse_mname" class="flex justify-between items-center"><div class="flex">Spouse's Middle Name</div><div class="flex">:</div></label>
                        <input type="text" id="spouse_mname" class="input-container-2 col-span-2" name="spouse_mname" value="">
                        <label for="spouse_extname" class="flex justify-between items-center"><div class="flex">Spouse's Name Extension</div><div class="flex">:</div></label>
                        <input type="text" id="spouse_extname" class="input-container-2 col-span-2" name="spouse_extname" value="">
                    </div>
                </div>
                <label for="spouse_occupation" class="flex justify-between items-center col-span-1"><div class="flex">Spouse's Occupation</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="spouse_occupation" name="spouse_occupation" value="">
                </div>
                <label for="spouse_employer" class="flex justify-between items-center col-span-1"><div class="flex">Spouse's Employer</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="spouse_employer" name="spouse_employer" value="">
                </div>
                <label for="spouse_employer_address" class="flex justify-between items-center col-span-1"><div class="flex">Spouse's Employer Address</div><div class="flex">:</div></label>
                <div class="input-container col-span-2">
                    <input type="text" id="spouse_emp_address" name="spouse_emp_address" value="">
                </div>
            </div>
            <div class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                <div class="col-span-3">
                    <div class="grid grid-cols-3 gap-y-4 gap-x-8">
                        <label for="father_lname" class="flex justify-between items-center"><div class="flex">Father's Last Name</div><div class="flex">:</div></label>
                        <input type="text" id="father_lname" class="input-container-2 col-span-2" name="father_lname" value="">
                        <label for="father_fname" class="flex justify-between items-center"><div class="flex">Father's First Name</div><div class="flex">:</div></label>
                        <input type="text" id="father_fname" class="input-container-2 col-span-2" name="father_fname" value="">
                        <label for="father_mname" class="flex justify-between items-center"><div class="flex">Father's Middle Name</div><div class="flex">:</div></label>
                        <input type="text" id="father_mname" class="input-container-2 col-span-2" name="father_mname" value="">
                    </div>
                </div>
                <div class="col-span-3">
                    <div class="grid grid-cols-3 gap-y-4 gap-x-8">
                        <label for="mother_lname" class="flex justify-between items-center"><div class="flex">Mother's Last Name</div><div class="flex">:</div></label>
                        <input type="text" id="mother_lname" class="input-container-2 col-span-2" name="mother_lname" value="">
                        <label for="mother_fname" class="flex justify-between items-center"><div class="flex">Mother's First Name</div><div class="flex">:</div></label>
                        <input type="text" id="mother_fname" class="input-container-2 col-span-2" name="mother_fname" value="">
                        <label for="mother_mname" class="flex justify-between items-center"><div class="flex">Mother's Middle Name</div><div class="flex">:</div></label>
                        <input type="text" id="mother_mname" class="input-container-2 col-span-2" name="mother_mname" value="">
                    </div>
                </div>
            </div>

            <div class="mt-4">
                <h2 class="section-header text-gray-600">Children</h2>
                <div class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
                    <div class="col-span-3">
                        <div class="grid grid-cols-3 gap-y-4 gap-x-8">
                            <label for="child_fullname" class="flex justify-between items-center"><div class="flex">Child Full Name</div><div class="flex">:</div></label>
                            <input type="text" id="child_fullname" class="input-container-2 col-span-2" name="child_fullname" value="">
                            <label for="child_dob" class="flex justify-between items-center"><div class="flex">Child Date of Birth</div><div class="flex">:</div></label>
                            <input type="date" id="child_dob" class="input-container-2 col-span-2" name="child_dob" value="" required>
                        </div>
                    </div>
                </div>
            </div>

            <div class="flex justify-end p-4">
                <button type="submit" class="bg-blue-500 text-white px-4 py-2 rounded">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>