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
                <div class="text-[#aeaeae] text-[13.01px] font-bold font-['Inter'] leading-tight">Search</div>
            </div>
        </div>
    </div>
    <div>
    </div>
    <div class="flex flex-row m-14">
        <div class="m-8 flex-3">
            <table class="table-fixed w-full border border-gray-100 border-separate border-spacing-y-4">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Full Name</th>
                        <th>Name Extension</th>
                        <th>Gender</th>
                        <th>Civil Status</th>
                        <th>Age</th>
                    </tr>
                </thead>    
                <tbody class="min-w-full divide-y divide-gray-200">
                    <%
                        List<Map<String, String>> data = (List<Map<String, String>>) request.getAttribute("data");
                        for (Map<String, String> map : data) {
                    %>
                        <tr class="hoverable-row my-8 bg-white rounded border border-[#e4e4e4]" data-pid="<%= map.get("p_id") %>">
                            <td><%= map.get("p_id") %></td>
                            <td class="py-[10.64px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug"><%= map.get("fullname") %></td>
                            <td class="py-[10.64px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug"><%= map.get("gender") %></td>
                            <td class="py-[10.64px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug" ><%= map.get("age") %></td>
                        </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <form id="hiddenForm" action="DisplayPersonalInfoServlet" method="post">
                <input type="hidden" name="p_id" id="hiddenPId">
            </form>
        </div>
        <div class="flex-4">
            <div class="w-[205px] h-[155px] px-1 py-4 bg-white rounded-lg shadow border border-[#e4e4e4] flex-col justify-center items-center gap-2 inline-flex">
              <div class="w-[159px] h-[129px] relative">
                <div class="h-[129px] left-0 top-0 absolute flex-col justify-start items-start gap-2.5 inline-flex">
                  <div class="w-[139px] text-[#1c1d1d] text-sm font-medium font-['Inter']">TOTAL NUMBER OF       APPLICATIONS</div>
                  <div class="w-[159px] h-[85px] justify-start items-start gap-[21.67px] inline-flex">
                    <div class="justify-start items-start gap-[21.67px] flex">
                      <div class="w-[157px] h-[79px] px-[14.45px] pt-[18.06px] pb-[21.67px] bg-white rounded-lg border border-gray-200"></div>
                    </div>
                  </div>
                </div>
                <div class="w-[54.84px] h-[47.55px] px-[12.77px] py-[10.64px] left-[51.50px] top-[66.72px] absolute justify-center items-center inline-flex">
                  <div class="w-[91px] h-12 text-center text-[#717171] text-3xl font-normal font-['Inter'] leading-[45px]">21</div>
                </div>
              </div>
            </div>
        </div>
    </div>
    <div class="w-[1014px] h-[834px] px-[34.06px] pb-[34.06px] flex-col justify-start items-start gap-[25.55px] inline-flex">
        <div class="self-stretch h-[409.48px] flex-col justify-start items-start gap-[12.77px] flex">
          <div class="w-[946px] bg-[#f9f9f9] rounded border border-[#e4e4e4] justify-start items-start inline-flex">
            <div class="h-[47.55px] p-[12.77px] justify-center items-center gap-[8.52px] flex">
              <div class="text-[#717171] text-[14.90px] font-bold font-['Inter'] leading-snug">ID</div>
            </div>
            <div class="h-[47.55px] p-[12.77px] justify-center items-center gap-[8.52px] flex">
              <div class="w-[421px] text-[#717171] text-[14.90px] font-bold font-['Inter'] leading-snug">                                 Full Name                            Extension Name</div>
            </div>
            <div class="h-[47.55px] p-[12.77px] justify-center items-center gap-[8.52px] flex">
              <div class="text-[#717171] text-[14.90px] font-bold font-['Inter'] leading-snug">Gender</div>
            </div>
            <div class="h-[47.55px] p-[12.77px] justify-center items-center gap-[8.52px] flex">
              <div class="text-[#717171] text-[14.90px] font-bold font-['Inter'] leading-snug">Status</div>
            </div>
            <div class="h-[47.55px] p-[12.77px] justify-center items-center gap-[8.52px] flex">
              <div class="text-center text-[#717171] text-[14.90px] font-bold font-['Inter'] leading-snug">Age</div>
            </div>
          </div>
          <div class="w-[946px] bg-white rounded border border-[#e4e4e4] justify-start items-start inline-flex">
            <div class="w-[66px] self-stretch p-[12.77px] justify-start items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-black text-[14.90px] font-normal font-['Inter'] leading-snug">1</div>
            </div>
            <div class="w-[455px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="w-[374px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Last Name, First Name Middle Initial            Ext</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Male</div>
            </div>
            <div class="w-[170.32px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Single</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">21</div>
            </div>
          </div>
          <div class="w-[946px] bg-white rounded border border-[#e4e4e4] justify-start items-start inline-flex">
            <div class="w-[66px] self-stretch p-[12.77px] justify-start items-center gap-[12.77px] flex">
              <div class="w-10 text-black text-[14.90px] font-normal font-['Inter'] leading-snug">2</div>
            </div>
            <div class="w-[465px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="w-[374px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Last Name, First Name Middle Initial           Ext</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Male</div>
            </div>
            <div class="w-[170.32px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Single</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">21</div>
            </div>
          </div>
          <div class="w-[946px] bg-white rounded border border-[#e4e4e4] justify-start items-start inline-flex">
            <div class="w-[66px] self-stretch p-[12.77px] justify-start items-center gap-[12.77px] flex">
              <div class="w-[49px] text-black text-[14.90px] font-normal font-['Inter'] leading-snug">3</div>
            </div>
            <div class="w-[465px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="w-[374px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Last Name, First Name Middle Initial           Ext</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Male</div>
            </div>
            <div class="w-[170.32px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Single</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">21</div>
            </div>
          </div>
          <div class="w-[946px] bg-white rounded border border-[#e4e4e4] justify-start items-start inline-flex">
            <div class="w-[66px] self-stretch p-[12.77px] justify-start items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-black text-[14.90px] font-normal font-['Inter'] leading-snug">4</div>
            </div>
            <div class="w-[465px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="w-[374px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Last Name, First Name Middle Initial           Ext</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Male</div>
            </div>
            <div class="w-[170.32px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Single</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">21</div>
            </div>
          </div>
          <div class="w-[946px] bg-white rounded border border-[#e4e4e4] justify-start items-start inline-flex">
            <div class="w-[66px] self-stretch p-[12.77px] justify-start items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-black text-[14.90px] font-normal font-['Inter'] leading-snug">5</div>
            </div>
            <div class="w-[465px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="w-[374px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Last Name, First Name Middle Initial           Ext</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Male</div>
            </div>
            <div class="w-[170.32px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Single</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">21</div>
            </div>
          </div>
          <div class="w-[946px] bg-white rounded border border-[#e4e4e4] justify-start items-start inline-flex">
            <div class="w-[66px] self-stretch p-[12.77px] justify-start items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-black text-[14.90px] font-normal font-['Inter'] leading-snug">6</div>
            </div>
            <div class="w-[465px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="w-[374px] text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Last Name, First Name Middle Initial           Ext</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Male</div>
            </div>
            <div class="w-[170.32px] self-stretch px-[12.77px] py-[10.64px] justify-center items-center gap-[12.77px] flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">Single</div>
            </div>
            <div class="grow shrink basis-0 self-stretch px-[12.77px] py-[10.64px] justify-center items-center flex">
              <div class="grow shrink basis-0 text-center text-[#717171] text-[14.90px] font-normal font-['Inter'] leading-snug">21</div>
            </div>
          </div>
        </div>
        <div class="w-[989px] justify-start items-center gap-[156px] inline-flex">
          <div class="h-[35.03px] justify-center items-center gap-[12.77px] flex">
            <div class="h-[34.06px] p-[9.58px] bg-[#f9f9f9] rounded justify-center items-center gap-[12.77px] flex">
              <div class="w-[14.90px] h-[14.90px] relative"></div>
            </div>
            <div class="justify-center items-center flex">
              <div class="h-[35.03px] px-[12.77px] py-[8.52px] bg-[#56788f] rounded justify-center items-center gap-[4.26px] flex">
                <div class="text-white text-xs font-medium font-['Inter'] leading-[17.88px]">1</div>
              </div>
              <div class="h-[35.03px] px-[12.77px] py-[8.52px] rounded justify-center items-center gap-[4.26px] flex">
                <div class="text-black text-xs font-medium font-['Inter'] leading-[17.88px]">2</div>
              </div>
              <div class="h-[35.03px] px-[12.77px] py-[8.52px] rounded justify-center items-center gap-[4.26px] flex">
                <div class="text-black text-xs font-medium font-['Inter'] leading-[17.88px]">3</div>
              </div>
              <div class="h-[35.03px] px-[12.77px] py-[8.52px] rounded justify-center items-center gap-[4.26px] flex">
                <div class="text-black text-xs font-medium font-['Inter'] leading-[17.88px]">4</div>
              </div>
              <div class="h-[35.03px] px-[12.77px] py-[8.52px] rounded justify-center items-center gap-[4.26px] flex">
                <div class="text-black text-xs font-medium font-['Inter'] leading-[17.88px]">5</div>
              </div>
              <div class="h-[35.03px] px-[12.77px] py-[8.52px] rounded justify-center items-center gap-[4.26px] flex">
                <div class="text-black text-xs font-medium font-['Inter'] leading-[17.88px]">...</div>
              </div>
              <div class="h-[35.03px] px-[12.77px] py-[8.52px] rounded justify-center items-center gap-[4.26px] flex">
                <div class="text-black text-xs font-medium font-['Inter'] leading-[17.88px]">10</div>
              </div>
            </div>
            <div class="h-[34.06px] p-[9.58px] bg-[#f1f1f1] rounded border-[#f1f1f1] justify-center items-center gap-[12.77px] flex">
              <div class="w-[14.90px] h-[14.90px] relative"></div>
            </div>
          </div>
        </div>
      </div>
      <div class="w-[141px] h-8 p-[7.20px] bg-[#56788f] rounded justify-between items-center inline-flex">
        <div class="h-[19px] justify-start items-center gap-[10.79px] flex">
          <div class="w-[134px] text-center text-white text-xs font-medium font-['Inter'] leading-[18.89px]">DELETE</div>
        </div>
      </div>
      <div class="w-[141px] h-8 p-[7.20px] bg-[#56788f] rounded justify-between items-center inline-flex">
        <div class="h-[19px] justify-start items-center gap-[10.79px] flex">
          <div class="w-[134px] text-center text-white text-xs font-medium font-['Inter'] leading-[18.89px]">UPDATE</div>
        </div>
      </div>
      <div class="w-[141px] h-8 p-[7.20px] bg-[#56788f] rounded justify-between items-center inline-flex">
        <div class="h-[19px] justify-start items-center gap-[10.79px] flex">
          <div class="w-[134px] text-center text-white text-xs font-medium font-['Inter'] leading-[18.89px]">ADD</div>
        </div>
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