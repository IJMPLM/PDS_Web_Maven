<head>
    <link href="assets/tailwind-output.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;700&display=swap" rel="stylesheet">
    <style>
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
    </style>
</head>
<nav>
    <div class="h-[65px] bg-gradient-to-t from-[#334855] via-[#56788e] to-[#719ebb] border-b border-[#e4e4e4]">
        <div class="mx-64 flex flex-row h-full">
            <div class="nav-link w-[266px] nav-wrapper flex justify-center" data-link="Dashboard" onclick="document.getElementById('dashboardForm').submit();">
                <form id="dashboardForm" action="DashboardInfoServlet" method="post">
                    <span class="flex w-full text-center">DASHBOARD</span>
                </form>
            </div>
            <div class="nav-link w-[266px] nav-wrapper flex justify-center" data-link="Personal-Information" onclick="document.getElementById('personalInfoForm').submit();">
                <form id="personalInfoForm" action="DisplayPersonalInfoServlet" method="post">
                    <input type="hidden" name="p_id" class="header-pid">
                    <span class="flex w-full text-center">PERSONAL INFORMATION</span>
                </form>
            </div>
            <div class="nav-link w-[266px] nav-wrapper flex justify-center" data-link="Family-Background" onclick="document.getElementById('familyBackgroundForm').submit();">
                <form id="familyBackgroundForm" action="DisplayFamilyBackgroundServlet" method="post">
                    <input type="hidden" name="p_id" class="header-pid">
                    <span class="flex w-full text-center">FAMILY BACKGROUND</span>
                </form>
            </div>
        </div>
    </div>
</nav>

<script>
    document.addEventListener('DOMContentLoaded', function() {
        let activeHeader = '<%= request.getAttribute("header-active") %>';
        if (!activeHeader) {
            activeHeader = 'Dashboard';
        }
        document.querySelectorAll('.nav-link').forEach(link => {
            if (link.getAttribute('data-link') === activeHeader) {
                link.classList.add('bg-gray-900', 'text-white');
                link.classList.remove('text-gray-300');
            }
        });
    });
</script>