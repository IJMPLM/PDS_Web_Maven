<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="assets/tailwind-output.css" rel="stylesheet">
    </head>
    <div>
        <nav class="bg-gray-800">
            <div class="mx-auto max-w-7xl px-4 sm:px-6 lg:px-8">
              <div class="flex h-16 items-center justify-between">
                <div class="flex items-center">
                  <div class="shrink-0">
                    <img class="size-8" src="https://tailwindui.com/plus/img/logos/mark.svg?color=indigo&shade=500" alt="Your Company">
                  </div>
                  <div class="hidden md:block">
                    <div class="ml-10 flex items-baseline space-x-4">
                      <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                      <a class="nav-link rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white" data-link="Dashboard">
                        <form action="DashboardInfoServlet" method="post">
                          <td><button type="submit" class="w-full text-left">Dashboard</button></td>
                      </form>
                      </a>
                      <a class="nav-link rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white" data-link="Personal-Information">
                        <form action="DisplayPersonalInfoServlet" method="post">
                          <input type="hidden" name="p_id" class="header-pid">
                          <td><button type="submit" class="w-full text-left">Personal-Information</button></td>
                      </form>
                      </a>
                      <a class="nav-link rounded-md px-3 py-2 text-sm font-medium text-gray-300 hover:bg-gray-700 hover:text-white" data-link="Family-Background">
                        <form action="DisplayFamilyBackgroundServlet" method="post">
                          <input type="hidden" name="p_id" class="header-pid">
                          <td><button type="submit" class="w-full text-left">Family-Background</button></td>
                        </form>
                      </a>
                    </div>
                  </div>
                </div>
                <div class="hidden md:block">
                  <div class="ml-4 flex items-center md:ml-6">
                    <button type="button" class="relative rounded-full bg-gray-800 p-1 text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800">
                      <span class="absolute -inset-1.5"></span>
                      <span class="sr-only">View notifications</span>
                      <svg class="size-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true" data-slot="icon">
                        <path stroke-linecap="round" stroke-linejoin="round" d="M14.857 17.082a23.848 23.848 0 0 0 5.454-1.31A8.967 8.967 0 0 1 18 9.75V9A6 6 0 0 0 6 9v.75a8.967 8.967 0 0 1-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 0 1-5.714 0m5.714 0a3 3 0 1 1-5.714 0" />
                      </svg>
                    </button>
        
                    <!-- Profile dropdown -->
                    <div class="relative ml-3">
                      <div>
                        <button type="button" class="relative flex max-w-xs items-center rounded-full bg-gray-800 text-sm focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800" id="user-menu-button" aria-expanded="false" aria-haspopup="true">
                          <span class="absolute -inset-1.5"></span>
                          <span class="sr-only">Open user menu</span>
                          <img class="size-8 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
                        </button>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
        
            <!-- Mobile menu, show/hide based on menu state. -->
            <div class="md:hidden" id="mobile-menu">
              <div class="space-y-1 px-2 pb-3 pt-2 sm:px-3">
                <!-- Current: "bg-gray-900 text-white", Default: "text-gray-300 hover:bg-gray-700 hover:text-white" -->
                <a href="#" class="block rounded-md bg-gray-900 px-3 py-2 text-base font-medium text-white" aria-current="page">Dashboard</a>
                <a href="#" class="block rounded-md px-3 py-2 text-base font-medium text-gray-300 hover:bg-gray-700 hover:text-white">Team</a>
                <a href="#" class="block rounded-md px-3 py-2 text-base font-medium text-gray-300 hover:bg-gray-700 hover:text-white">Projects</a>
                <a href="#" class="block rounded-md px-3 py-2 text-base font-medium text-gray-300 hover:bg-gray-700 hover:text-white">Calendar</a>
                <a href="#" class="block rounded-md px-3 py-2 text-base font-medium text-gray-300 hover:bg-gray-700 hover:text-white">Reports</a>
              </div>
              <div class="border-t border-gray-700 pb-3 pt-4">
                <div class="flex items-center px-5">
                  <div class="shrink-0">
                    <img class="size-10 rounded-full" src="https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=facearea&facepad=2&w=256&h=256&q=80" alt="">
                  </div>
                  <div class="ml-3">
                    <div class="text-base/5 font-medium text-white">Tom Cook</div>
                    <div class="text-sm font-medium text-gray-400">tom@example.com</div>
                  </div>
                  <button type="button" class="relative ml-auto shrink-0 rounded-full bg-gray-800 p-1 text-gray-400 hover:text-white focus:outline-none focus:ring-2 focus:ring-white focus:ring-offset-2 focus:ring-offset-gray-800">
                    <span class="absolute -inset-1.5"></span>
                    <span class="sr-only">View notifications</span>
                    <svg class="size-6" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" aria-hidden="true" data-slot="icon">
                      <path stroke-linecap="round" stroke-linejoin="round" d="M14.857 17.082a23.848 23.848 0 0 0 5.454-1.31A8.967 8.967 0 0 1 18 9.75V9A6 6 0 0 0 6 9v.75a8.967 8.967 0 0 1-2.312 6.022c1.733.64 3.56 1.085 5.455 1.31m5.714 0a24.255 24.255 0 0 1-5.714 0m5.714 0a3 3 0 1 1-5.714 0" />
                    </svg>
                  </button>
                </div>
                <div class="mt-3 space-y-1 px-2">
                  <a href="#" class="block rounded-md px-3 py-2 text-base font-medium text-gray-400 hover:bg-gray-700 hover:text-white">Your Profile</a>
                  <a href="#" class="block rounded-md px-3 py-2 text-base font-medium text-gray-400 hover:bg-gray-700 hover:text-white">Settings</a>
                  <a href="#" class="block rounded-md px-3 py-2 text-base font-medium text-gray-400 hover:bg-gray-700 hover:text-white">Sign out</a>
                </div>
              </div>
            </div>
          </nav>
    </div>
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
