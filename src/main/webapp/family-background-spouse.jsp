<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
</head>
<body>
    <div id="spouse-info" class="col-span-3">
        <label for="spouse_name" class="label-text flex justify-between items-center"><div class="flex">Spouse's Name</div><div class="flex">:</div></label>
        <div class="input-container col-span-2 label-text">
            <input type="text" class="readonly-input" id="spouse_name" name="spouse_name" value="<%= respondent.get("spouse_lname") + ", " + respondent.get("spouse_fname") + " " + respondent.get("spouse_mname") + " " + (respondent.get("spouse_extname") != null ? respondent.get("spouse_extname") : " ") %>" readonly>
        </div>
        <div id="spouse_name-edit" class="hidden col-span-3">
            <div class="grid gap-y-2 gap-x-8 grid-cols-3">
                <label for="spouse_lname" class="flex justify-between items-center"><div class="flex">Last Name</div><div class="flex">:</div></label>
                <input type="text" id="spouse_lname" class="input-container-2 col-span-2" name="spouse_lname" value="<%= respondent.get("spouse_lname") %>">
                <label for="spouse_fname" class="flex justify-between items-center"><div class="flex">First Name</div><div class="flex">:</div></label>
                <input type="text" id="spouse_fname" class="input-container-2 col-span-2" name="spouse_fname" value="<%= respondent.get("spouse_fname") %>">
                <label for="spouse_mname" class="flex justify-between items-center"><div class="flex">Middle Name</div><div class="flex">:</div></label>
                <input type="text" id="spouse_mname" class="input-container-2 col-span-2" name="spouse_mname" value="<%= respondent.get("spouse_mname") %>">    
            </div>
        </div>
        <label for="spouse_occupation" class="flex justify-between items-center"><div class="flex">Spouse's Occupation</div><div class="flex">:</div></label>
        <div class="input-container col-span-2">
            <input type="text" class="readonly-input" id="spouse_occupation" name="spouse_occupation" value="<%= respondent.get("spouse_occupation") %>" readonly>
        </div>
        <label for="spouse_employer" class="flex justify-between items-center"><div class="flex">Spouse's Employer</div><div class="flex">:</div></label>
        <div class="input-container col-span-2">
            <input type="text" class="readonly-input" id="spouse_employer" name="spouse_employer" value="<%= respondent.get("spouse_employer") %>" readonly>
        </div>
        <label for="spouse_employer_address" class="flex justify-between items-center"><div class="flex">Spouse's Employer Address</div><div class="flex">:</div></label>
        <div class="input-container col-span-2">
            <input type="text" class="readonly-input" id="spouse_employer_address" name="spouse_employer_address" value="<%= respondent.get("spouse_employer_address") %>" readonly>
        </div>
    </div>
</body>
</html>
