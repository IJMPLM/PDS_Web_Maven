package com.pds_web_maven.servlets;

import java.io.IOException;
import java.util.Enumeration;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.pds_web_maven.entities.personal_info;
import com.pds_web_maven.dao.Personal_infoDAO;
import com.pds_web_maven.entities.contact_info;
import com.pds_web_maven.dao.Contact_infoDAO;
import com.pds_web_maven.entities.family_background;
import com.pds_web_maven.dao.Family_backgroundDAO;
import com.pds_web_maven.entities.family_children;
import com.pds_web_maven.dao.Family_childrenDAO;

public class CreateRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        personal_info personal_info = new personal_info(
                req.getParameter("gender"),  req.getParameter("civil-status"), req.getParameter("citizenship")
                ,   req.getParameter("cit_acq_id"), req.getParameter("lname"), req.getParameter("fname")
                ,   req.getParameter("mname"), req.getParameter("extname"), req.getParameter("dob")
                ,   req.getParameter("birthplace"), req.getParameter("height"), req.getParameter("weight")
                ,   req.getParameter("bloodtype"), req.getParameter("gsis_no"), req.getParameter("pagibig_id")
                ,   req.getParameter("philhealth_id"), req.getParameter("sss_no"), req.getParameter("tin"), req.getParameter("agency_empno")
            );
        Personal_infoDAO personal_infoDAO = new Personal_infoDAO();
        personal_infoDAO.addData(personal_info);
        
        contact_info contact_info = new contact_info(
                personal_info.getp_id(), req.getParameter("res_house_no"), req.getParameter("res_house_street")
                ,   req.getParameter("res_village"), req.getParameter("res_bgy"), req.getParameter("res_citymun")
                ,   req.getParameter("res_prov"), req.getParameter("res_zipcode"), req.getParameter("perm_house_no")
                ,   req.getParameter("perm_house_street"), req.getParameter("perm_village"), req.getParameter("perm_bgy")
                ,   req.getParameter("citymun"), req.getParameter("perm_prov"), req.getParameter("perm_zipcode")
                ,   req.getParameter("tel_no"), req.getParameter("mobile_no"), req.getParameter("email_addr")
            );
        Contact_infoDAO contact_infoDAO = new Contact_infoDAO();
        contact_infoDAO.addData(contact_info);
        
        family_background family_background = new family_background(
                personal_info.getp_id(), req.getParameter("spouse_lname"), req.getParameter("spouse_fname")
                ,   req.getParameter("spouse_mname"), req.getParameter("spouse_extname"), req.getParameter("spouse_occupation")
                ,   req.getParameter("spouse_employer"), req.getParameter("spouse_employed_address")
                ,   req.getParameter("father_lname"), req.getParameter("father_fname"), req.getParameter("father_mname"), "Insert name ext"
                ,   req.getParameter("mother_lname"), req.getParameter("mother_fname"), req.getParameter("mother_mname")
            );
        
        Family_backgroundDAO family_backgroundDAO = new Family_backgroundDAO();
        family_backgroundDAO.addData(family_background);
        
        family_children family_children = new family_children(
                personal_info.getp_id(), req.getParameter("child_fullname"), req.getParameter("child_dob")
        );
        
        Family_childrenDAO family_childrenDAO = new Family_childrenDAO();
        family_childrenDAO.addData(family_children);

        // Forward the request back to the add-form.jsp page
        req.getRequestDispatcher("/add-form.jsp").forward(req, res);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Retrieve all parameters from the request and log them to the console
        Enumeration<String> parameterNames = request.getParameterNames();
        while (parameterNames.hasMoreElements()) {
            String paramName = parameterNames.nextElement();
            String paramValue = request.getParameter(paramName);
            System.out.println(paramName + ": " + paramValue);
        }

        // Forward the request back to the add-form.jsp page
        request.getRequestDispatcher("/add-form.jsp").forward(request, response);
    }
}