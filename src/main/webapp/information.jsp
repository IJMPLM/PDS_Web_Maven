<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Information</title>
    <link rel="stylesheet" type="text/css" href="assets/tailwind-output.css">
</head>
<body class="flex flex-col min-h-screen">
    <header>
        <%@ include file="dashboard-header.jsp" %>
    </header>
    <main class="flex flex-row flex-nowrap flex-1 m-6">
        <div class="w-1/5">        
            <%@ include file="information-sidebar.jsp" %>
        </div>
        <div class="flex-1 ml-6">
            <%@ include file="personal-information.jsp" %>
        </div>
    </main>
</body>
</html>