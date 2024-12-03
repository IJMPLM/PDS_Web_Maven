<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Table</title>
    <link rel="stylesheet" type="text/css" href="assets/tailwind-output.css">
    <style>
        .highlight {
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
    <div>
        <table class="table-fixed w-full">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Gender</th>
                    <th>Age</th>
                </tr>
            </thead>    
            <tbody>
                <%
                    List<Map<String, String>> data = (List<Map<String, String>>) request.getAttribute("data");
                    for (Map<String, String> map : data) {
                %>
                        <tr class="hoverable-row" data-pid="<%= map.get("p_id") %>">
                            <td><%= map.get("p_id") %></td>
                            <td><%= map.get("fullname") %></td>
                            <td><%= map.get("gender") %></td>
                            <td><%= map.get("age") %></td>
                        </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <form id="hiddenForm" action="DisplayFamilyBackgroundServlet" method="post">
            <input type="hidden" name="p_id" id="hiddenPId">
        </form>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            let highlightedRow = null;
            let p_id = null;

            document.querySelectorAll('.hoverable-row').forEach(row => {
                row.addEventListener('mouseover', function() {
                    if (highlightedRow) {
                        highlightedRow.classList.remove('highlight');
                    }
                    row.classList.add('highlight');
                    highlightedRow = row;
                    p_id = row.getAttribute('data-pid');
                });

                row.addEventListener('mouseout', function() {
                    row.classList.remove('highlight');
                    highlightedRow = null;
                    p_id = null;
                });

                row.addEventListener('click', function() {
                    document.getElementById('hiddenPId').value = p_id;
                    document.getElementById('hiddenForm').submit();
                });

                document.querySelectorAll('.header-pid').forEach(input => {
                input.value = p_id;
                });
            });
        });
    </script>
</body>
</html>