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

import com.pds_web_maven.entities.family_background;
import com.pds_web_maven.dao.Family_backgroundDAO;
import com.pds_web_maven.entities.family_children;

/**
 *
 * @author TGG
 */
public class UpdateFamilyBackgroundServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        family_background family_background = new family_background(
                req.getParameter("fam_bg_id") ,req.getParameter("p_id"), req.getParameter("spouse_lname"), req.getParameter("spouse_fname")
                ,   req.getParameter("spouse_mname"), req.getParameter("spouse_extname"), req.getParameter("spouse_occupation")
                ,   req.getParameter("spouse_employer"), req.getParameter("spouse_emp_address")
                ,   req.getParameter("father_lname"), req.getParameter("father_fname"), req.getParameter("father_mname"), req.getParameter("father_extname")
                ,   req.getParameter("mother_lname"), req.getParameter("mother_fname"), req.getParameter("mother_mname")
            );
        
        family_children family_children = new family_children(
                req.getParameter("fam_bg_id"), req.getParameter("p_id"), req.getParameter("child_fullname"), req.getParameter("child_dob")
            );
        
        Family_backgroundDAO family_backgroundDAO = new Family_backgroundDAO();
        family_backgroundDAO.updateFamilyBackground(family_background, family_children);
        
        req.getRequestDispatcher("DashboardInfoServlet").forward(req, res);
    }
}