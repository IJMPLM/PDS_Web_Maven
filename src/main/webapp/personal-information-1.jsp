<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">
<body>
    <div id="personal_info_1" class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
        <div id="fullname-edit" class="col-span-3 hidden">
            <div class="grid grid-cols-3 gap-y-2 gap-x-8 " >
                <label for="lname" class="flex justify-between items-center"><div class="flex">Last Name</div><div class="flex">:</div></label>
                <input type="text" id="lname" class="input-container-2 col-span-2" name="lastname" value="<%= respondent.get("lname") %>">
                <label for="fname" class="flex justify-between items-center"><div class="flex">First Name</div><div class="flex">:</div></label>
                <input type="text" id="fname" class="input-container-2 col-span-2" name="fname" value="<%= respondent.get("fname") %>">
                <label for="mname" class="flex justify-between items-center"><div class="flex">Middle Name</div><div class="flex">:</div></label>
                <input type="text" id="mname" class="input-container-2 col-span-2" name="mname" value="<%= respondent.get("mname") %>">
                <label for="extname" class="flex justify-between items-center"><div class="flex">Name Extension</div><div class="flex">:</div></label>
                <input type="text" id="extname" class="input-container-2 col-span-2" name="extname" value="<%= respondent.get("extname") != null ? respondent.get("extname") : "N/A" %>">
            </div>
        </div>  
        <label for="fullname" class="label-text flex justify-between items-center"><div class="flex">Full Name</div><div class="flex">:</div></label>
        <div class="input-container label-text  col-span-2">
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
            <select id="citizenship" class=".input-container-2 readonly-input" name="citizenship">
                <option value="1">Filipino</option>
                <option value="2">Dual Citizenship</option>
            </select>
        </div>                
        <label for="civilstatus" class="flex justify-between items-center"><div class="flex">Civil Status</div><div class="flex">:</div></label>
        <div class="input-container col-span-2">
            <select id="civil-status" class=".input-container-2 readonly-input" name="civil-status">
                <option value="1">Single</option>
                <option value="2">Married</option>
                <option value="3">Widowed</option>
                <option value="4">Separated</option>
                <option value="5">Others</option>
            </select>
        </div>
    </div>
</body>
</html>
