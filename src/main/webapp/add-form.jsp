<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
    <title>Add New Record</title>
    <style>
        .section-header {
            font-size: 1.5rem;
            font-weight: bold;
            margin-top: 1rem;
            margin-bottom: 0.5rem;
        }
        .input-container {
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }
        .input-container input, .input-container-2 {
            flex: 1;
            padding: 0.5rem;
            border: 1px solid #ccc;
            border-radius: 0.25rem;
            background-color: #f9f9f9;
        }
        .input-container input[readonly] {
            background-color: #e9e9e9;
        }
        .icon {
            cursor: pointer;
            font-size: 1.25rem;
        }
        .nav-wrapper {
            font-size: 19px;
            font-weight: 500;
            font-family: Inter, Arial;
            height: 100%;
            color: white;
            padding-top: 1rem;
        }
        .nav-link {
            cursor: pointer;
        }
        .hidden {
            display: none !important;
        }
        .readonly-input {
            border: none !important; 
            background-color: white !important;
        }
        label{
            font-family: Inter, Arial;
        }
    </style>
</head>
<body>
    <header>
        <div class="h-[65px] bg-gradient-to-t from-[#334855] via-[#56788e] to-[#719ebb] border-b border-[#e4e4e4]">
            <div class="mx-16 flex flex-row h-full">
                <div class="nav-link w-[266px] nav-wrapper flex justify-center" data-link="Dashboard" onclick="document.getElementById('dashboardForm').submit();">
                    <form id="dashboardForm" action="DashboardInfoServlet" method="post">
                        <span class="flex w-full text-center">BACK TO DASHBOARD</span>
                    </form>
                </div>
            </div>
        </div>
    </header>
    <h1 class="text-2xl font-bold m-4">Add New Record</h1>
    <div class="my-4 mx-32">
        <form action="CreateRecordServlet" method="get">
            <%@ include file="add-form-1.jsp" %>
            <%@ include file="add-form-2.jsp" %>
            <%@ include file="add-form-3.jsp" %>
            <%@ include file="add-form-4.jsp" %>
            <%@ include file="add-form-5.jsp" %>
            <div class="flex justify-end p-4">
                <button type="submit" class="bg-[#56788f] text-white px-4 py-2 rounded">Submit</button>
            </div>
        </form>
    </div>
</body>
</html>