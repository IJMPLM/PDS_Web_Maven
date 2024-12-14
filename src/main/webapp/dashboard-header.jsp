<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="assets/tailwind-output.css" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
    </head>
    <nav>
      <div class="h-[65px] bg-gradient-to-t from-[#334855] via-[#56788e] to-[#719ebb] border-b border-[#e4e4e4]">
        <div class="mx-64 py-6 flex flex-row gap-8">
          <div class="nav-link w-32 text-white text-[19px] font-medium font-['Inter'] leading-7" data-link="Dashboard">
            <form action="DashboardInfoServlet" method="post">
              <button type="submit" class="w-full text-left">DASHBOARD</button>
            </form>
          </div>
          <div class="nav-link w-[266px] text-white text-[19px] font-medium font-['Inter'] leading-7" data-link="Personal-Information">
            <form action="DisplayPersonalInfoServlet" method="post">
              <input type="hidden" name="p_id" class="header-pid">
              <button type="submit" class="w-full text-left">PERSONAL INFORMATION</button>
            </form>
          </div>
          <div class="nav-link w-[235px] text-white text-[19px] font-medium font-['Inter'] leading-7" data-link="Family-Background">
            <form action="DisplayFamilyBackgroundServlet" method="post">
              <input type="hidden" name="p_id" class="header-pid">
              <button type="submit" class="w-full text-left">FAMILY BACKGROUND</button>
            </form>
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
