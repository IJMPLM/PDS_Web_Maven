<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>


<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
</head>
<header>
    <%@ include file="dashboard-header.jsp" %>
</header>
<div class="m-4">
    <div class="grid grid-cols-2 gap-4">
        <%
            Map<String, String> data = (Map<String, String>) request.getAttribute("data");
            if (data != null) {
                Map<String, String> respondent = data; // Assuming you want to display the first respondent
        %>
                <div>Name: <%= respondent.get("fullname") %></div>
                <div>Gender: <%= respondent.get("gender") %></div>
                <div>Civil Status: <%= respondent.get("civilstatus") %></div>
                <div>Age: <%= respondent.get("age") %></div>
                <div>Birthplace: <%= respondent.get("birthplace") %></div>
                <div>Height: <%= respondent.get("height") %> cm</div>
                <div>Weight: <%= respondent.get("weight") %> kg</div>
                <div>Blood Type: <%= respondent.get("bloodtype") %></div>
                <div>GSIS No: <%= respondent.get("gsis_no") %></div>
                <div>Pag-IBIG ID: <%= respondent.get("pagibig_id") %></div>
                <div>PhilHealth ID: <%= respondent.get("philhealth_id") %></div>
                <div>SSS No: <%= respondent.get("sss_no") %></div>
                <div>TIN: <%= respondent.get("tin") %></div>
                <div>Agency Employee No: <%= respondent.get("agency_empno") %></div>
        <%
            } else {
        %>
                <div>No data available</div>
        <%
            }
        %>
    </div>
    <div class="mt-4">
        <h2>Contact Information</h2>
        <div class="grid grid-cols-2 gap-4">
            <%
                Map<String, String> dataContact = (Map<String, String>) request.getAttribute("data_contact");
                if (dataContact != null) {
            %>
                    <div>Residential House No: <%= dataContact.get("res_house_no") %></div>
                    <div>Residential Street: <%= dataContact.get("res_house_street") %></div>
                    <div>Residential Village: <%= dataContact.get("res_village") %></div>
                    <div>Residential Barangay: <%= dataContact.get("res_bgy") %></div>
                    <div>Residential City/Municipality: <%= dataContact.get("res_citymun") %></div>
                    <div>Residential Province: <%= dataContact.get("res_prov") %></div>
                    <div>Residential Zip Code: <%= dataContact.get("res_zipcode") %></div>
                    <div>Permanent House No: <%= dataContact.get("perm_house_no") %></div>
                    <div>Permanent Street: <%= dataContact.get("perm_house_street") %></div>
                    <div>Permanent Village: <%= dataContact.get("perm_village") %></div>
                    <div>Permanent Barangay: <%= dataContact.get("perm_bgy") %></div>
                    <div>Permanent City/Municipality: <%= dataContact.get("perm_citymun") %></div>
                    <div>Permanent Province: <%= dataContact.get("perm_prov") %></div>
                    <div>Permanent Zip Code: <%= dataContact.get("perm_zipcode") %></div>
                    <div>Telephone No: <%= dataContact.get("tel_no") %></div>
                    <div>Mobile No: <%= dataContact.get("mobile_no") %></div>
                    <div>Email Address: <%= dataContact.get("email_addr") %></div>
            <%
                } else {
            %>
                    <div>No contact information available</div>
            <%
                }
            %>
        </div>
    </div>
</div>
</html>