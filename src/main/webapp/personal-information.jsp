<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
</head>
<div class="m-4">
    <div class="grid grid-cols-2 gap-4">
        <%
            Map<String, String>[] data = (Map<String, String>[]) request.getAttribute("data");
            if (data != null && data.length > 0) {
                Map<String, String> respondent = data[0]; // Assuming you want to display the first respondent
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
</div>
</html>