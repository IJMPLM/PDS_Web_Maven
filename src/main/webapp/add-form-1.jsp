<h2 class="section-header text-gray-600">Personal Information</h2>
<div class="grid grid-cols-6 gap-x-8 gap-y-2 font-[Inter] text-xl">
    <label for="lname" class="flex justify-between items-center"><div class="flex">Last Name</div><div class="flex">:</div></label>
    <input type="text" id="lname" class="input-container-2 col-span-2" name="lname" value="">
    <label for="height" class="flex justify-between items-center"><div class="flex">Height (m)</div><div class="flex">:</div></label>
    <input type="text" id="height" class="input-container-2 col-span-2" name="height" value="">
    <label for="fname" class="flex justify-between items-center"><div class="flex">First Name</div><div class="flex">:</div></label>
    <input type="text" id="fname" class="input-container-2 col-span-2" name="fname" value="">
    <label for="weight" class="flex justify-between items-center"><div class="flex">Weight (kg)</div><div class="flex">:</div></label>
    <input type="text" id="weight" class="input-container-2 col-span-2" name="weight" value="">
    <label for="mname" class="flex justify-between items-center"><div class="flex">Middle Name</div><div class="flex">:</div></label>
    <input type="text" id="mname" class="input-container-2 col-span-2" name="mname" value="">
    <label for="dob" class="flex justify-between items-center"><div class="flex">Date of Birth</div><div class="flex">:</div></label>
    <input type="date" id="dob" class="input-container-2 col-span-2" name="dob" value="" required>
    <label for="extname" class="flex justify-between items-center"><div class="flex">Name Extension</div><div class="flex">:</div></label>
    <input type="text" id="extname" class="input-container-2 col-span-2" name="extname" value="">
    <label for="birthplace" class="flex justify-between items-center"><div class="flex">Place of Birth</div><div class="flex">:</div></label>
    <input type="text" id="birthplace" class="input-container-2 col-span-2" name="birthplace" value="">
    <label for="gender" class="flex justify-between items-center"><div class="flex">Sex</div><div class="flex">:</div></label>
    <div class="input-container-2 col-span-2">
        <select class="w-full bg-inherit" id="gender" name="gender">
            <option value="1">Male</option>
            <option value="2">Female</option>
        </select>
    </div>
    <label for="bloodtype" class="flex justify-between items-center"><div class="flex">Blood Type</div><div class="flex">:</div></label>
    <input type="text" id="bloodtype" class="input-container-2 col-span-2" name="bloodtype" value="">
    <label for="citizenship" class="flex justify-between items-center"><div class="flex">Citizenship</div><div class="flex">:</div></label>
    <div class="input-container-2 col-span-2">
        <select class="w-full bg-inherit" id="citizenship" name="citizenship">
            <option value="1">Filipino</option>
            <option value="2">Dual Citizenship</option>
        </select>
    </div>
    <label for="civilstatus" class="flex justify-between items-center"><div class="flex">Civil Status</div><div class="flex">:</div></label>
    <div class="input-container-2 col-span-2">
        <select class="w-full bg-inherit" id="civil-status" name="civil-status">
            <option value="1">Single</option>
            <option value="2">Married</option>
            <option value="3">Widowed</option>
            <option value="4">Separated</option>
            <option value="5">Others</option>
        </select>
    </div>
    <label for="ccit_acq_id" class="flex justify-between items-center"><div class="flex">Citizenship Acquired by</div><div class="flex">:</div></label>
    <div class="input-container-2 col-span-2">
        <select class="w-full bg-inherit" id="cit_acq_id" name="cit_acq_id">
            <option value="1">Birth</option>
            <option value="2">Naturalization</option>
        </select>
    </div>   
</div>