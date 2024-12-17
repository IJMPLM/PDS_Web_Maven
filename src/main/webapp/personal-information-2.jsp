<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">
<body>
    <div id="personal_info_2" class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
        <%
            Map<String, String> dataContact = (Map<String, String>) request.getAttribute("data_contact");
            if (dataContact != null) {
        %>
        <div id="res_address-edit" class="col-span-3 hidden">
            <div class="grid grid-cols-3 gap-x-8 gap-y-2 input-container">
                <label for="res_house_no" class="flex justify-between items-center col-span-1"><div class="flex">Residential House No</div><div class="flex">:</div></label>
                <input type="text" id="res_house_no" class="input-containter-2 col-span-2" name="res_house_no" value="<%= dataContact.get("res_house_no") %>">
                <label for="res_street" class="flex justify-between items-center"><div class="flex">Residential Street</div><div class="flex">:</div></label>
                <input type="text" id="res_house_street" class="col-span-2" name="res_house_street" value="<%= dataContact.get("res_house_street") %>">
                <label for="res_village" class="flex justify-between items-center"><div class="flex">Residential Vilage</div><div class="flex">:</div></label>
                <input type="text" id="res_village" class="col-span-2" name="res_village" value="<%= dataContact.get("res_village") %>">
                <label for="res_barangay" class="flex justify-between items-center"><div class="flex">Residential Barangay</div><div class="flex">:</div></label>
                <input type="text" id="res_bgy" class="col-span-2" name="res_bgy" value="<%= dataContact.get("res_bgy") %>">
                <label for="res_city" class="flex justify-between items-center"><div class="flex">Residential City</div><div class="flex">:</div></label>
                <input type="text" id="res_citymun" class="col-span-2" name="res_citymun" value="<%= dataContact.get("res_citymun") %>">
                <label for="res_province" class="flex justify-between items-center"><div class="flex">Residential Province</div><div class="flex">:</div></label>
                <input type="text" id="res_prov" class="col-span-2" name="res_prov" value="<%= dataContact.get("res_prov") %>">
                <label for="res_zipcode" class="flex justify-between items-center"><div class="flex">Residential Zip Code</div><div class="flex">:</div></label>
                <input type="text" id="res_zipcode" class="col-span-2" name="res_zipcode" value="<%= dataContact.get("res_zipcode") %>">
            </div>
        </div>
        <label for="res_address" class="flex justify-between items-center label-text">
            <div class="flex">Residential Address</div><div class="flex">:</div>
        </label>
        <div class="label-text input-container col-span-2">
            <textarea class="readonly-input text-wrap p-2" id="res_address" name="res_address" readonly style="resize: none; width: 100%; overflow:hidden"><%= dataContact.get("res_house_no") %> <%= dataContact.get("res_house_street") %>, <%= dataContact.get("res_village") %>, <%= dataContact.get("res_bgy") %>, <%= dataContact.get("res_citymun") %>, <%= dataContact.get("res_prov") %>, <%= dataContact.get("res_zipcode") %></textarea>
        </div>
        <div id="perm_address-edit" class="col-span-3 hidden">
            <div class="grid grid-cols-3 gap-x-8 gap-y-2 input-container">
                <label for="perm_house_no" class="flex justify-between items-center"><div class="flex">Permanent House No</div><div class="flex">:</div></label>
                <input type="text" id="perm_house_no" class="col-span-2" name="perm_house_no" value="<%= dataContact.get("perm_house_no") %>">
                <label for="perm_street" class="flex justify-between items-center"><div class="flex">Permanent Street</div><div class="flex">:</div></label>
                <input type="text" id="perm_house_street" class="col-span-2" name="perm_house_street" value="<%= dataContact.get("perm_house_street") %>">
                <label for="perm_village" class="flex justify-between items-center"><div class="flex">Permanent Vilage</div><div class="flex">:</div></label>
                <input type="text" id="perm_village" class="col-span-2" name="perm_village" value="<%= dataContact.get("perm_village") %>">
                <label for="perm_barangay" class="flex justify-between items-center"><div class="flex">Permanent Barangay</div><div class="flex">:</div></label>
                <input type="text" id="perm_bgy" class="col-span-2" name="perm_bgy" value="<%= dataContact.get("perm_bgy") %>">
                <label for="perm_city" class="flex justify-between items-center"><div class="flex">Permanent City</div><div class="flex">:</div></label>
                <input type="text" id="perm_citymun" class="col-span-2" name="perm_citymun" value="<%= dataContact.get("perm_citymun") %>">
                <label for="perm_province" class="flex justify-between items-center"><div class="flex">Permanent Province</div><div class="flex">:</div></label>
                <input type="text" id="perm_prov" class="col-span-2" name="perm_prov" value="<%= dataContact.get("perm_prov") %>">
                <label for="perm_zipcode" class="flex justify-between items-center"><div class="flex">Permanent Zip Code</div><div class="flex">:</div></label>
                <input type="text" id="perm_zipcode" class="col-span-2" name="perm_zipcode" value="<%= dataContact.get("perm_zipcode") %>">
            </div>
        </div>
        <label for="perm_address" class="flex justify-between items-center label-text"><div class="flex">Permanent Address</div><div class="flex">:</div></label>
        <div class="label-text input-container col-span-2">
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
</body>
</html>
