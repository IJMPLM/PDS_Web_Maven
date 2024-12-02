<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
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
                    List<Map<String, String>> data = (List<Map<String, String>>) request.getAttribute("data");
                    for (Map<String, String> map : data) {
                %>
                        <tr>
                            <form action="DisplayPersonalInfoServlet" method="post">
                                <input type="hidden" name="p_id" value="<%= map.get("p_id") %>">
                                <td><button type="submit" class="w-full text-left"><%= map.get("p_id") %></button></td>
                                <td><button type="submit" class="w-full text-left"><%= map.get("fullname") %></button></td>
                                <td><button type="submit" class="w-full text-left"><%= map.get("gender") %></button></td>
                                <td><button type="submit" class="w-full text-left"><%= map.get("age") %></button></td>
                            </form>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>