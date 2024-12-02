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
                %>
                        <tr>
                            <form action="YourServletURL" method="post">
                                <input type="hidden" name="p_id" value="<%= map.get("id") %>">
                                <td><button type="submit" class="w-full text-left"><%= map.get("id") %></button></td>
                                <td><button type="submit" class="w-full text-left"><%= map.get("lastname") %>, <%= map.get("firstname") %> <%= map.get("middlename") %></button></td>
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