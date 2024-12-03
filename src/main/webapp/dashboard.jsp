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
        <form action="DisplayAddFormServlet" method="get">
            <button type="submit" class="text-white bg-green-700 hover:bg-green-800 focus:outline-none focus:ring-4 focus:ring-green-300 font-medium rounded-full text-sm px-5 py-2.5 text-center me-2 mb-2 dark:bg-green-600 dark:hover:bg-green-700 dark:focus:ring-green-800">
                Add New Record
            </button>
        </form>
        <%@ include file="dashboard-table.jsp" %>
    </main>
</body>
</html>