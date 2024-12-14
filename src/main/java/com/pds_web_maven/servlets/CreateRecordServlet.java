package com.pds_web_maven.servlets;

import com.pds_web_maven.dao.Family_backgroundDAO;
import com.pds_web_maven.dao.Family_childrenDAO;
import com.pds_web_maven.dao.Personal_infoDAO;
import com.pds_web_maven.dao.Contact_infoDAO;
import com.pds_web_maven.entities.family_background;
import com.pds_web_maven.entities.family_children;
import com.pds_web_maven.entities.personal_info;
import com.pds_web_maven.entities.contact_info;
import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class CreateRecordServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve personal information
        String lname = request.getParameter("lname");
        String fname = request.getParameter("fname");
        String mname = request.getParameter("mname");
        String extname = request.getParameter("extname");
        String gender = request.getParameter("gender");
        String civilstatus = request.getParameter("civilstatus");
        String dob = request.getParameter("dob");
        String birthplace = request.getParameter("birthplace");
        String height = request.getParameter("height");
        String weight = request.getParameter("weight");
        String bloodtype = request.getParameter("bloodtype");
        String gsis_no = request.getParameter("gsis_no");
        String pagibig_id = request.getParameter("pagibig_id");
        String philhealth_id = request.getParameter("philhealth_id");
        String sss_no = request.getParameter("sss_no");
        String tin = request.getParameter("tin");
        String agency_empno = request.getParameter("agency_empno");

        // Create personal_info entity
        personal_info personalInfo = new personal_info();
        personalInfo.setl_name(lname);
        personalInfo.setf_name(fname);
        personalInfo.setm_name(mname);
        personalInfo.setExt_name(extname);
        personalInfo.setSex_id(parseInteger(gender));
        personalInfo.setCstat_id(parseInteger(civilstatus));
        if (dob != null && !dob.isEmpty()) {
            personalInfo.setDob(LocalDate.parse(dob, DateTimeFormatter.ISO_LOCAL_DATE));
        }
        personalInfo.setPob(birthplace);
        personalInfo.setHeight(parseInteger(height));
        personalInfo.setWeight(parseInteger(weight));
        personalInfo.setblood_type(bloodtype);
        personalInfo.setgsis_no(gsis_no);
        personalInfo.setPagibig_id(pagibig_id);
        personalInfo.setPhilhealth_Id(philhealth_id);
        personalInfo.setSss_no(sss_no);
        personalInfo.setTin(tin);
        personalInfo.setAgency_empno(agency_empno);

        // Save personal_info entity
        Personal_infoDAO personalInfoDAO = new Personal_infoDAO();
        personalInfoDAO.addData(personalInfo);

        // Retrieve family background information
        String spouse_lname = request.getParameter("spouse_lname");
        String spouse_fname = request.getParameter("spouse_fname");
        String spouse_mname = request.getParameter("spouse_mname");
        String spouse_extname = request.getParameter("spouse_extname");
        String spouse_occupation = request.getParameter("spouse_occupation");
        String spouse_employer = request.getParameter("spouse_employer");
        String spouse_emp_address = request.getParameter("spouse_emp_address");
        String father_lname = request.getParameter("father_lname");
        String father_fname = request.getParameter("father_fname");
        String father_mname = request.getParameter("father_mname");
        String father_extname = request.getParameter("father_extname");
        String mother_mn_lname = request.getParameter("mother_mn_lname");
        String mother_mn_fname = request.getParameter("mother_mn_fname");
        String mother_mn_mname = request.getParameter("mother_mn_mname");

        // Create family_background entity
        family_background familyBackground = new family_background();
        familyBackground.setP_id(personalInfo.getp_id());
        familyBackground.setSpouseLname(spouse_lname);
        familyBackground.setSpouseFname(spouse_fname);
        familyBackground.setSpouseMname(spouse_mname);
        familyBackground.setSpouseExtname(spouse_extname);
        familyBackground.setSpouseOccupation(spouse_occupation);
        familyBackground.setSpouseEmployer(spouse_employer);
        familyBackground.setSpouseEmpAddress(spouse_emp_address);
        familyBackground.setFatherLname(father_lname);
        familyBackground.setFatherFname(father_fname);
        familyBackground.setFatherMname(father_mname);
        familyBackground.setFatherExtname(father_extname);
        familyBackground.setMotherMnLname(mother_mn_lname);
        familyBackground.setMotherMnFname(mother_mn_fname);
        familyBackground.setMotherMnMname(mother_mn_mname);

        // Save family_background entity
        Family_backgroundDAO familyBackgroundDAO = new Family_backgroundDAO();
        familyBackgroundDAO.addData(familyBackground);

        // Retrieve children information
        int childCount = 1;
        while (request.getParameter("child_fullname_" + childCount) != null) {
            String child_fullname = request.getParameter("child_fullname_" + childCount);
            String child_dob = request.getParameter("child_dob_" + childCount);

            // Create family_children entity
            family_children familyChildren = new family_children();
            familyChildren.setP_id(personalInfo.getp_id());
            familyChildren.setChildFullname(child_fullname);
            try {
                if (child_dob != null && !child_dob.isEmpty()) {
                    Date dobDate = new SimpleDateFormat("yyyy-MM-dd").parse(child_dob);
                    familyChildren.setChildDob(dobDate);
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }

            // Save family_children entity
            Family_childrenDAO familyChildrenDAO = new Family_childrenDAO();
            familyChildrenDAO.addData(familyChildren);

            childCount++;
        }

        // Retrieve contact information
        String res_house_no = request.getParameter("res_house_no");
        String res_house_street = request.getParameter("res_house_street");
        String res_village = request.getParameter("res_village");
        String res_bgy = request.getParameter("res_bgy");
        String res_citymun = request.getParameter("res_citymun");
        String res_prov = request.getParameter("res_prov");
        String res_zipcode = request.getParameter("res_zipcode");
        String perm_house_no = request.getParameter("perm_house_no");
        String perm_house_street = request.getParameter("perm_house_street");
        String perm_village = request.getParameter("perm_village");
        String perm_bgy = request.getParameter("perm_bgy");
        String perm_citymun = request.getParameter("perm_citymun");
        String perm_prov = request.getParameter("perm_prov");
        String perm_zipcode = request.getParameter("perm_zipcode");
        String tel_no = request.getParameter("tel_no");
        String mobile_no = request.getParameter("mobile_no");
        String email_address = request.getParameter("email_address");

        // Create contact_info entity
        contact_info contactInfo = new contact_info();
        contactInfo.setP_id(personalInfo.getp_id());
        contactInfo.setResHouseNo(res_house_no);
        contactInfo.setResHouseStreet(res_house_street);
        contactInfo.setResVillage(res_village);
        contactInfo.setResBgy(res_bgy);
        contactInfo.setResCitymun(res_citymun);
        contactInfo.setResProv(res_prov);
        contactInfo.setResZipcode(res_zipcode);
        contactInfo.setPermHouseNo(perm_house_no);
        contactInfo.setPermHouseStreet(perm_house_street);
        contactInfo.setPermVillage(perm_village);
        contactInfo.setPermBgy(perm_bgy);
        contactInfo.setPermCitymun(perm_citymun);
        contactInfo.setPermProv(perm_prov);
        contactInfo.setPermZipcode(perm_zipcode);
        contactInfo.setTelNo(tel_no);
        contactInfo.setMobileNo(mobile_no);
        contactInfo.setEmailAddress(email_address);

        // Save contact_info entity
        Contact_infoDAO contactInfoDAO = new Contact_infoDAO();
        contactInfoDAO.addData(contactInfo);

        // Redirect to a success page or back to the dashboard
        response.sendRedirect("dashboard.jsp");
    }

    private Integer parseInteger(String value) {
        if (value == null || value.isEmpty()) {
            return null;
        }
        try {
            return Integer.parseInt(value);
        } catch (NumberFormatException e) {
            return null;
        }
    }
}