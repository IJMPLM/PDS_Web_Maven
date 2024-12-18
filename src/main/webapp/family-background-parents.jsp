<div id="parent-info" class="col-span-3">
    <div class="grid grid-cols-3 gap-y-4 gap-x-8">
        <label for="father_name" class="label-text flex justify-between items-center"><div class="flex">Father's Name</div><div class="flex">:</div></label>
        <div class="input-container col-span-2">
            <input type="text" class="readonly-input" id="father_name" name="father_name" value="<%= respondent.get("father_lname") + ", " + respondent.get("father_fname") + " " + respondent.get("father_mname") + " " + respondent.get("father_extname") %>" readonly>
        </div>
        <div id="father_name-edit" class="hidden col-span-3">
            <div class="grid grid-cols-3 gap-y-4 gap-x-8">
                <label for="father_lname" class="flex justify-between items-center"><div class="flex">Father's Last Name</div><div class="flex">:</div></label>
                <input type="text" id="father_lname" class="input-container-2 col-span-2" name="father_lname" value="<%= respondent.get("father_lname") %>">
                <label for="father_fname" class="flex justify-between items-center"><div class="flex">Father's First Name</div><div class="flex">:</div></label>
                <input type="text" id="father_fname" class="input-container-2 col-span-2" name="father_fname" value="<%= respondent.get("father_fname") %>">
                <label for="father_mname" class="flex justify-between items-center"><div class="flex">Father's Middle Name</div><div class="flex">:</div></label>
                <input type="text" id="father_mname" class="input-container-2 col-span-2" name="father_mname" value="<%= respondent.get("father_mname") %>">
                <label for="father_mname" class="flex justify-between items-center"><div class="flex">Father's Name Extension</div><div class="flex">:</div></label>
                <input type="text" id="father_extname" class="input-container-2 col-span-2" name="father_extname" value="<%= respondent.get("father_extname") %>">
            </div>
        </div>
        <label for="mother_name" class="label-text flex justify-between items-center"><div class="flex">Mother's Maiden Name</div><div class="flex">:</div></label>
        <div class="input-container col-span-2">
            <input type="text" class="readonly-input" id="mother_name" name="mother_name" value="<%= respondent.get("mother_mn_lname") + ", " + respondent.get("mother_mn_fname") + " " + respondent.get("mother_mn_mname") %>" readonly>
        </div>
        <div id="mother_name-edit" class="hidden col-span-3">
            <div class="grid grid-cols-3 gap-y-4 gap-x-8">
                <label for="mother_lname" class="flex justify-between items-center"><div class="flex">Mother's Last Name</div><div class="flex">:</div></label>
                <input type="text" id="mother_lname" class="input-container-2 col-span-2" name="mother_lname" value="<%= respondent.get("mother_mn_lname") %>">
                <label for="mother_fname" class="flex justify-between items-center"><div class="flex">Mother's First Name</div><div class="flex">:</div></label>
                <input type="text" id="mother_fname" class="input-container-2 col-span-2" name="mother_fname" value="<%= respondent.get("mother_mn_fname") %>">
                <label for="mother_mname" class="flex justify-between items-center"><div class="flex">Mother's Middle Name</div><div class="flex">:</div></label>
                <input type="text" id="mother_mname" class="input-container-2 col-span-2" name="mother_mname" value="<%= respondent.get("mother_mn_mname") %>">
            </div>
        </div>
    </div>
</div>
