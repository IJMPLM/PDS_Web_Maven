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
<body>
    <div class="m-4">
        <div class="grid grid-cols-2 gap-3">
            <%
                Map<String, String> data = (Map<String, String>) request.getAttribute("data");
                if (data != null) {
            %>
                    <div>Spouse Name:</div>
                    <div><%= data.get("spouse_fullname") %></div>
                    <div>Occupation:</div>
                    <div><%= data.get("spouse_occupation") %></div>
                    <div>Employer/Business Name:</div>
                    <div><%= data.get("spouse_employer") %></div>
                    <div>Business Address:</div>
                    <div><%= data.get("spouse_emp_address") %></div>
                    <div>Father's Name:</div>
                    <div><%= data.get("father_fullname") %></div>
                    <div>Mother's Maiden Name:</div>
                    <div><%= data.get("mother_fullname") %></div>
            <%
                } else {
            %>
                    <div>No data available</div>
            <%
                }
            %>
        </div>
        <div class="mt-4">
            <h2>Children</h2>
            <div class="grid grid-cols-2 gap-3">
                <%
                    List<Map<String, String>> dataChildren = (List<Map<String, String>>) request.getAttribute("data_children");
                    if (dataChildren != null && !dataChildren.isEmpty()) {
                        for (Map<String, String> child : dataChildren) {
                %>
                            <div>Child Name:</div>
                            <div><%= child.get("child_fullname") %></div>
                            <div>Date of Birth:</div>
                            <div><%= child.get("child_dob") %></div>
                <%
                        }
                    } else {
                %>
                        <div>No children data available</div>
                <%
                    }
                %>
            </div>
        </div>
    </div>
</body>
</html>