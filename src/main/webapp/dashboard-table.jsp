<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard Table</title>
    <link rel="stylesheet" type="text/css" href="assets/tailwind-output.css">
</head>
<body>
    <div>
        <table class="table-fixed">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                </tr>
            </thead>
            <tbody>
                <%
                    Map<String, String>[] data = (Map<String, String>[]) request.getAttribute("data");
                    for (Map<String, String> map : data) {
                        out.println("<tr>");
                        out.println("<td>" + map.get("id") + "</td>");
                        out.println("<td>" + map.get("lastname") +", " + map.get("firstname") + " "+ map.get("middlename") +"</td>");
                        out.println("<td>" + map.get("gender") + "</td>");
                        out.println("</tr>");
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>