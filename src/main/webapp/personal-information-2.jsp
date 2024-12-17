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
        <label for="res_address" class="flex justify-between items-center">
            <div class="flex">Residential Address</div><div class="flex">:</div>
        </label>
        <div class="input-container col-span-2">
            <textarea class="readonly-input text-wrap p-2" id="res_address" name="res_address" readonly style="resize: none; width: 100%; overflow:hidden"><%= dataContact.get("res_house_no") %> <%= dataContact.get("res_house_street") %>, <%= dataContact.get("res_village") %>, <%= dataContact.get("res_bgy") %>, <%= dataContact.get("res_citymun") %>, <%= dataContact.get("res_prov") %>, <%= dataContact.get("res_zipcode") %></textarea>
        </div>
        <div id="res_address-edit" class="input-container col-span-2 hidden">
            <label for="res_house_no">House No:</label>
            <input type="text" id="res_house_no" name="res_house_no" value="<%= dataContact.get("res_house_no") %>">
            <label for="res_house_street">Street:</label>
            <input type="text" id="res_house_street" name="res_house_street" value="<%= dataContact.get("res_house_street") %>">
            <label for="res_village">Village:</label>
            <input type="text" id="res_village" name="res_village" value="<%= dataContact.get("res_village") %>">
            <label for="res_bgy">Barangay:</label>
            <input type="text" id="res_bgy" name="res_bgy" value="<%= dataContact.get("res_bgy") %>">
            <label for="res_citymun">City/Municipality:</label>
            <input type="text" id="res_citymun" name="res_citymun" value="<%= dataContact.get("res_citymun") %>">
            <label for="res_prov">Province:</label>
            <input type="text" id="res_prov" name="res_prov" value="<%= dataContact.get("res_prov") %>">
            <label for="res_zipcode">Zip Code:</label>
            <input type="text" id="res_zipcode" name="res_zipcode" value="<%= dataContact.get("res_zipcode") %>">
        </div>
        <label for="perm_address" class="flex justify-between items-center"><div class="flex">Permanent Address</div><div class="flex">:</div></label>
        <div class="input-container col-span-2">
            <textarea class="readonly-input text-wrap p-2" id="perm_address" name="perm_address" readonly style="resize: none; width: 100%; overflow:hidden"><%= dataContact.get("perm_house_no") %> <%= dataContact.get("perm_house_street") %>, <%= dataContact.get("perm_village") %>, <%= dataContact.get("perm_bgy") %>, <%= dataContact.get("perm_citymun") %>, <%= dataContact.get("perm_prov") %>, <%= dataContact.get("perm_zipcode") %></textarea>
        </div>
        <div id="perm_address-edit" class="input-container col-span-2 hidden">
            <label for="perm_house_no">House No:</label>
            <input type="text" id="perm_house_no" name="perm_house_no" value="<%= dataContact.get("perm_house_no") %>">
            <label for="perm_house_street">Street:</label>
            <input type="text" id="perm_house_street" name="perm_house_street" value="<%= dataContact.get("perm_house_street") %>">
            <label for="perm_village">Village:</label>
            <input type="text" id="perm_village" name="perm_village" value="<%= dataContact.get("perm_village") %>">
            <label for="perm_bgy">Barangay:</label>
            <input type="text" id="perm_bgy" name="perm_bgy" value="<%= dataContact.get("perm_bgy") %>">
            <label for="perm_citymun">City/Municipality:</label>
            <input type="text" id="perm_citymun" name="perm_citymun" value="<%= dataContact.get("perm_citymun") %>">
            <label for="perm_prov">Province:</label>
            <input type="text" id="perm_prov" name="perm_prov" value="<%= dataContact.get("perm_prov") %>">
            <label for="perm_zipcode">Zip Code:</label>
            <input type="text" id="perm_zipcode" name="perm_zipcode" value="<%= dataContact.get("perm_zipcode") %>">
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
