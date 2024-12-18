<div class="m-16">
    <div class="section-header text-gray-600">CHILDREN</div>
    <div class="mx-16 grid grid-cols-4 gap-16">
        <%
            List<Map<String, String>> dataChildren = (List<Map<String, String>>) request.getAttribute("data_children");
            if (dataChildren != null && !dataChildren.isEmpty()) {
                for (Map<String, String> child : dataChildren) {
        %>
            <label for="child_fullname" class="text-lg flex justify-between items-center col-span-1"><div class="flex">Child Full Name</div><div class="flex">:</div></label>
            <div class="readonly-input p-6 text-lg">
                <input type="text" class="readonly-input child_fullname" id="child_fullname" class="col-span-1" name="child_fullname" value="<%= child.get("child_fullname") %>" readonly>
            </div>
            <label for="child_dob" class="text-lg flex justify-between items-center col-span-1"><div class="flex">Child Date of Birth</div><div class="flex">:</div></label>
            <div class="readonly-input p-6 text-lg">
                <input type="date" class="readonly-input child_dob" id="child_dob" col-span-1 name="child_dob" value="<%= child.get("child_dob") %>" readonly>
            </div>
            <input for="fam_bg_id" class="hidden" name="fam_bg_id" value="<%= child.get("fam_bg_id") %>">
        <%
                }
            } else {
        %>
                <div>No children data available</div>
        <%
            }
        %>
    </div>
</div>
