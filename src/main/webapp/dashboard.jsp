<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
    <link rel="stylesheet" type="text/css" href="assets/tailwind-output.css">
</head>
<body>
    <header>
        <%@ include file="dashboard-header.jsp" %>
    </header>
    <main class="m-6">
        <%@ include file="dashboard-table.jsp" %>
    </main>
</body>
</html>