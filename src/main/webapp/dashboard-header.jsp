<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="assets/tailwind-output.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
    </head>
    <nav>
      <div class="w-full h-[65px] pt-[16.50px] pb-4 bg-gradient-to-t from-[#334855] via-[#56788e] to-[#719ebb] border-b border-[#e4e4e4] justify-end items-end gap-[210px] inline-flex">
            <div class="self-stretch justify-start items-center gap-3 inline-flex">
              <div class="nav-link w-32 text-white text-[19px] font-medium font-['Inter'] leading-7" data-link="Dashboard">
                <form action="DashboardInfoServlet" method="post">
                    <td><button type="submit" class="w-full text-left">DASHBOARD</button></td>
                </form>
              </div>
              <div class="nav-link w-[266px] text-white text-[19px] font-medium font-['Inter'] leading-7" data-link="Personal-Information">
                <form action="DisplayPersonalInfoServlet" method="post">
                    <input type="hidden" name="p_id" class="header-pid">
                    <td><button type="submit" class="w-full text-left">PERSONAL INFORMATION</button></td>
                </form>
              </div>
              <div class="nav-link w-[235px] text-white text-[19px] font-medium font-['Inter'] leading-7" data-link="Family-Background" >
                <form action="DisplayFamilyBackgroundServlet" method="post">
                    <input type="hidden" name="p_id" class="header-pid">
                    <td><button type="submit" class="w-full text-left">FAMILY BACKGROUND</button></td>
                  </form>
              </div>
            </div>
            <div class="self-stretch justify-start items-center gap-[500px] inline-flex">
              <div class="justify-start items-center gap-4 flex">
                <div class="w-[32.67px] h-8 relative">
                  <div class="w-[32.67px] h-8 left-0 top-0 absolute rounded-lg border"></div>
                  <div class="w-4 h-4 left-[8.67px] top-[8px] absolute border">
                    <div class="w-1 h-1 left-[10px] top-[1.33px] absolute bg-[#d34645] rounded-full border border-white"></div>
                  </div>
                </div>
                <div class="justify-start items-center gap-[11.15px] flex">
                  <img class="w-[29.74px] h-[29.74px] p-[7.44px] rounded-[22.31px]" src="https://via.placeholder.com/30x30" />
                  <div class="text-center text-white text-[13.01px] font-medium font-['Inter'] leading-tight">Harsh</div>
                  <div class="w-[14.87px] h-[14.87px] relative"></div>
                </div>
              </div>
            </div>
          </div>
    </nav>
    <script>
      document.addEventListener('DOMContentLoaded', function() {
          const activeHeader = '<%= request.getAttribute("header-active") %>';
          document.querySelectorAll('.nav-link').forEach(link => {
              if (link.getAttribute('data-link') === activeHeader) {
                  link.classList.add('bg-gray-900', 'text-white');
                  link.classList.remove('text-gray-300');
              }
          });
      });
  </script>
</html>
