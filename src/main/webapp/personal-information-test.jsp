<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Personal Information Test</title>
</head>
<body>
    <header>
        <%@ include file="dashboard-header.jsp" %>
    </header>
    <div>
        <div id="main">
            <form action="UpdatePersonalInfoServlet" method="post">
                <h1>PERSONAL INFORMATION</h1>    
                <%
                    Map<String, String> data = (Map<String, String>) request.getAttribute("data");
                    String civilstatusid = "", citizenshipid = "";
                    if (data != null) {
                        Map<String, String> respondent = data;
                        civilstatusid = respondent.get("civilstatus_id");
                        citizenshipid = respondent.get("cit_id");
                %>
                <div>
                    <button id="updateButton" type="submit">Update</button>
                </div>
                <div>
                    <h2>Full Name</h2>
                    <div>
                        <label for="lname">Last Name:</label>
                        <input type="text" id="lname" name="lastname" value="<%= respondent.get("lname") %>">
                        <label for="fname">First Name:</label>
                        <input type="text" id="fname" name="fname" value="<%= respondent.get("fname") %>">
                        <label for="mname">Middle Name:</label>
                        <input type="text" id="mname" name="mname" value="<%= respondent.get("mname") %>">
                        <label for="extname">Name Extension:</label>
                        <input type="text" id="extname" name="extname" value="<%= respondent.get("extname") != null ? respondent.get("extname") : "N/A" %>">
                    </div>
                    <label for="fullname">Full Name:</label>
                    <input type="text" id="fullname" name="fullname" value="<%= respondent.get("fullname") %>" >
                </div>
                <div>
                    <label for="height">Height (m):</label>
                    <input type="text" id="height" name="height" value="<%= respondent.get("height") %>"  >
                </div>
                <div>
                    <label for="age">Date of Birth:</label>
                    <input type="text" id="age" name="age" value="<%= respondent.get("age") %>"  >
                </div>
                <div>
                    <label for="weight">Weight (kg):</label>
                    <input type="text" id="weight" name="weight" value="<%= respondent.get("weight") %>"  >
                </div>
                <div>
                    <label for="birthplace">Place of Birth:</label>
                    <input type="text" id="birthplace" name="birthplace" value="<%= respondent.get("birthplace") %>"  >
                </div>
                <div>
                    <label for="bloodtype">Blood Type:</label>
                    <input type="text" id="bloodtype" name="bloodtype" value="<%= respondent.get("bloodtype") %>"  >
                </div>
                <div>
                    <label for="gender">Sex:</label>
                    <input type="text" id="gender" name="gender" value="<%= respondent.get("gender") %>"  >
                </div>
                <div>
                    <label for="citizenship">Citizenship:</label>
                    <select id="citizenship" name="citizenship">
                        <option value="1">Filipino</option>
                        <option value="2">Dual Citizenship</option>
                    </select>
                </div>
                <div>
                    <label for="civilstatus">Civil Status:</label>
                    <select id="civil-status" name="civil-status">
                        <option value="1">Single</option>
                        <option value="2">Married</option>
                        <option value="3">Widowed</option>
                        <option value="4">Separated</option>
                        <option value="5">Others</option>
                    </select>
                </div>
                <h2>CONTACT INFORMATION</h2>
                <%
                    Map<String, String> dataContact = (Map<String, String>) request.getAttribute("data_contact");
                    if (dataContact != null) {
                %>
                <div>
                    <label for="res_house_no">Residential House No:</label>
                    <input type="text" id="res_house_no" name="res_house_no" value="<%= dataContact.get("res_house_no") %>">
                    <label for="res_street">Residential Street:</label>
                    <input type="text" id="res_house_street" name="res_house_street" value="<%= dataContact.get("res_house_street") %>">
                    <label for="res_village">Residential Village:</label>
                    <input type="text" id="res_village" name="res_village" value="<%= dataContact.get("res_village") %>">
                    <label for="res_barangay">Residential Barangay:</label>
                    <input type="text" id="res_bgy" name="res_bgy" value="<%= dataContact.get("res_bgy") %>">
                    <label for="res_city">Residential City:</label>
                    <input type="text" id="res_citymun" name="res_citymun" value="<%= dataContact.get("res_citymun") %>">
                    <label for="res_province">Residential Province:</label>
                    <input type="text" id="res_prov" name="res_prov" value="<%= dataContact.get("res_prov") %>">
                    <label for="res_zipcode">Residential Zip Code:</label>
                    <input type="text" id="res_zipcode" name="res_zipcode" value="<%= dataContact.get("res_zipcode") %>">
                </div>
                <div>
                    <label for="perm_house_no">Permanent House No:</label>
                    <input type="text" id="perm_house_no" name="perm_house_no" value="<%= dataContact.get("perm_house_no") %>">
                    <label for="perm_street">Permanent Street:</label>
                    <input type="text" id="perm_house_street" name="perm_house_street" value="<%= dataContact.get("perm_house_street") %>">
                    <label for="perm_village">Permanent Village:</label>
                    <input type="text" id="perm_village" name="perm_village" value="<%= dataContact.get("perm_village") %>">
                    <label for="perm_barangay">Permanent Barangay:</label>
                    <input type="text" id="perm_bgy" name="perm_bgy" value="<%= dataContact.get("perm_bgy") %>">
                    <label for="perm_city">Permanent City:</label>
                    <input type="text" id="perm_citymun" name="perm_citymun" value="<%= dataContact.get("perm_citymun") %>">
                    <label for="perm_province">Permanent Province:</label>
                    <input type="text" id="perm_prov" name="perm_prov" value="<%= dataContact.get("perm_prov") %>">
                    <label for="perm_zipcode">Permanent Zip Code:</label>
                    <input type="text" id="perm_zipcode" name="perm_zipcode" value="<%= dataContact.get("perm_zipcode") %>">
                </div>
                <div>
                    <label for="tel_no">Telephone Number:</label>
                    <input type="text" id="tel_no" name="tel_no" value="<%= dataContact.get("tel_no") %>">
                    <label for="mobile_no">Mobile Number:</label>
                    <input type="text" id="mobile_no" name="mobile_no" value="<%= dataContact.get("mobile_no") %>">
                    <label for="email_addr">Email Address:</label>
                    <input type="text" id="email_addr" name="email_addr" value="<%= dataContact.get("email_addr") %>">
                </div>
                <%
                    } else {
                %>
                    <div>No contact information available</div>
                <%
                    }
                %>
                <h2>GOVERNMENT AND SOCIAL SERVICE IDENTIFICATIONS</h2>
                <div>
                    <label for="gsis_no">GSIS ID NO:</label>
                    <input type="text" id="gsis_no" name="gsis_no" value="<%= respondent.get("gsis_no") %>"  >
                    <label for="pagibig_id">PAG-IBIG ID NO:</label>
                    <input type="text" id="pagibig_id" name="pagibig_id" value="<%= respondent.get("pagibig_id") %>"  >
                    <label for="philhealth_id">PhilHealth NO:</label>
                    <input type="text" id="philhealth_id" name="philhealth_id" value="<%= respondent.get("philhealth_id") %>"  >
                    <label for="sss_no">SSS NO:</label>
                    <input type="text" id="sss_no" name="sss_no" value="<%= respondent.get("sss_no") %>"  >
                    <label for="tin">TIN NO:</label>
                    <input type="text" id="tin" name="tin" value="<%= respondent.get("tin") %>"  >
                    <label for="agency_empno">Agency Employee NO:</label>
                    <input type="text" id="agency_empno" name="agency_empno" value="<%= respondent.get("agency_empno") %>"  >
                </div>
                <%
                    } else {
                %>
                    <div>No data available</div>
                <%
                    }
                %>
            </form>
        </div>
    </div>
</body>
</html>