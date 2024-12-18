/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.pds_web_maven.servlets;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import com.pds_web_maven.entities.personal_info;
import com.pds_web_maven.dao.Personal_infoDAO;
import com.pds_web_maven.entities.contact_info;

/**
 *
 * @author TGG
 */
public class UpdatePersonalInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        personal_info personal_info = new personal_info(
                req.getParameter("p_id"),req.getParameter("gender"),  req.getParameter("civil-status"), req.getParameter("citizenship")
                ,   req.getParameter("cit_acq_id"), req.getParameter("lname"), req.getParameter("fname")
                ,   req.getParameter("mname"), req.getParameter("extname"), req.getParameter("dob")
                ,   req.getParameter("birthplace"), req.getParameter("height"), req.getParameter("weight")
                ,   req.getParameter("bloodtype"), req.getParameter("gsis_no"), req.getParameter("pagibig_id")
                ,   req.getParameter("philhealth_id"), req.getParameter("sss_no"), req.getParameter("tin"), req.getParameter("agency_empno")
        );
        contact_info contact_info = new contact_info(
                req.getParameter("p_id"), req.getParameter("res_house_no"), req.getParameter("res_house_street")
                ,   req.getParameter("res_village"), req.getParameter("res_bgy"), req.getParameter("res_citymun")
                ,   req.getParameter("res_prov"), req.getParameter("res_zipcode"), req.getParameter("perm_house_no")
                ,   req.getParameter("perm_house_street"), req.getParameter("perm_village"), req.getParameter("perm_bgy")
                ,   req.getParameter("perm_citymun"), req.getParameter("perm_prov"), req.getParameter("perm_zipcode")
                ,   req.getParameter("tel_no"), req.getParameter("mobile_no"), req.getParameter("email_addr")
            );
        
        Personal_infoDAO personal_infoDAO = new Personal_infoDAO();
        personal_infoDAO.updatePersonalInfo(personal_info, contact_info);
        
        req.getRequestDispatcher("DashboardInfoServlet").forward(req, res);
    }
}