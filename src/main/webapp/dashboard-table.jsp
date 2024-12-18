<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dashboard Table</title>
    <link rel="stylesheet" type="text/css" href="assets/tailwind-output.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
    <style>
        .highlight {
            background-color: #f0f0f0;
        }
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .pagination button {
            margin: 0 5px;
            padding: 5px 10px;
            border: 1px solid #ccc;
            background-color: #f0f0f0;
            cursor: pointer;
        }
        .pagination button.active {
            background-color: #ccc;
        }
    </style>
</head>
<body>
    <div class="flex flex-row justify-between w-full">
        <div>
            <div>
                <div class="text-[#211c37] text-[32px] font-bold font-['Inter']">DASHBOARD</div>
                <div class="text-[#85878d] text-xl font-normal font-['Inter']">View and manage your personal details</div>
            </div>
        </div>
        <div>
            <div class="w-[323px] h-5 justify-start items-center gap-[11.15px] inline-flex">
                <div class="w-[18.59px] h-[18.59px] relative"></div>
                <input type="text" id="searchInput" class="border p-2 w-full" placeholder="Search by name...">
            </div>
        </div>
    </div>
    <div class="flex flex-row my-4 mx-16">
        <div class="m-4 flex-3">
            <table class="table-fixed w-full border-separate border-spacing-y-4 text-center min-h-[500px]">
                <thead>
                    <tr class="">
                        <th class="w-1/12">ID</th>
                        <th class="w-4/12">Full Name</th>
                        <th class="w-2/12">Gender</th>
                        <th class="w-3/12">Civil Status</th>
                        <th class="w-2/12">Age</th>
                    </tr>
                </thead>    
                <tbody id="tableBody" class="min-w-full divide-y divide-gray-200">
                    <%
                        List<Map<String, String>> data = (List<Map<String, String>>) request.getAttribute("data");
                        for (Map<String, String> map : data) {
                    %>
                        <tr class="hoverable-row" data-pid="<%= map.get("p_id") %>" data-fullname="<%= map.get("fullname") %>">
                            <td class="w-1/12"><%= map.get("p_id") %></td>
                            <td class="w-4/12 py-[10.64px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug"><%= map.get("fullname") %></td>
                            <td class="w-2/12 py-[10.64px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug"><%= map.get("gender") %></td>
                            <td class="w-3/12 py-[10.64px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug"><%= map.get("civilstatus") %></td>
                            <td class="w-2/12 py-[10.64px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug" ><%= map.get("age") %></td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <div class="pagination" id="pagination"></div>
            <form id="hiddenForm" action="DisplayPersonalInfoServlet" method="post">
                <input type="hidden" name="p_id" id="hiddenPId">
            </form>
        </div>
        <div class="flex flex-col gap-8">
            <div class="flex flex-col">
                <div class="w-64 h-56 bg-white rounded-lg shadow border border-[#e4e4e4] flex flex-col justify-center items-center gap-2">
                    <div class="text-[#1c1d1d] text-m font-medium font-['Inter'] text-left px-8">TOTAL NUMBER OF APPLICATIONS</div>
                    <div class="w-48 h-28 bg-white rounded-lg border border-gray-200">
                        <div class="text-center py-6 text-[#717171] text-6xl font-normal font-['Inter']" id="totalApplications">0</div>
                    </div>
                </div>
            </div>
            <div>   
                <form action="DisplayAddFormServlet" method="get">
                    <button type="submit" class="w-full">
                        <div class="w-full h-8 p-[7.20px] bg-[#56788f] rounded justify-between items-center inline-flex">
                            <div class="w-full text-center text-white text-xs font-medium font-['Inter']">ADD NEW RECORD</div>
                        </div>
                    </button>
                </form>    
            </div>
        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const rows = Array.from(document.querySelectorAll('.hoverable-row'));
            const rowsPerPage = 7;
            let currentPage = 1;
            const totalApplications = rows.length;

            function renderTable(rows) {
                const tableBody = document.getElementById('tableBody');
                tableBody.innerHTML = '';
                const start = (currentPage - 1) * rowsPerPage;
                const end = start + rowsPerPage;
                const paginatedRows = rows.slice(start, end);
                paginatedRows.forEach(row => tableBody.appendChild(row));
                attachRowEventListeners(paginatedRows);
            }

            function renderPagination(totalRows) {
                const pagination = document.getElementById('pagination');
                pagination.innerHTML = '';
                const totalPages = Math.ceil(totalRows / rowsPerPage);
                for (let i = 1; i <= totalPages; i++) {
                    const button = document.createElement('button');
                    button.textContent = i;
                    button.classList.add('page-button');
                    if (i === currentPage) {
                        button.classList.add('active');
                    }
                    button.addEventListener('click', () => {
                        currentPage = i;
                        renderTable(rows);
                        renderPagination(totalRows);
                    });
                    pagination.appendChild(button);
                }
            }

            function updateTotalApplications(totalRows) {
                document.getElementById('totalApplications').textContent = totalApplications;
            }

            function filterRows() {
                const searchInput = document.getElementById('searchInput').value.toLowerCase();
                const filteredRows = rows.filter(row => row.getAttribute('data-fullname').toLowerCase().includes(searchInput));
                currentPage = 1;
                renderTable(filteredRows);
                renderPagination(filteredRows.length);
                updateTotalApplications(filteredRows.length);
            }

            function attachRowEventListeners(rows) {
                rows.forEach(row => {
                    row.addEventListener('mouseover', function() {
                        row.classList.add('highlight');
                    });

                    row.addEventListener('mouseout', function() {
                        row.classList.remove('highlight');
                    });

                    row.addEventListener('click', function() {
                        document.getElementById('hiddenPId').value = row.getAttribute('data-pid');
                        document.getElementById('hiddenForm').submit();
                    });
                });
            }

            document.getElementById('searchInput').addEventListener('input', filterRows);

            renderTable(rows);
            renderPagination(rows.length);
            updateTotalApplications(rows.length);
        });
    </script>
</body>
</html>