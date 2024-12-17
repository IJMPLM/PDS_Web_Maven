<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">
<body>
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
</body>
</html>
