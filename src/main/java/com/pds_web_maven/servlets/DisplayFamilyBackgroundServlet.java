/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.pds_web_maven.servlets;

import com.pds_web_maven.dao.Family_backgroundDAO;
import com.pds_web_maven.dao.Family_childrenDAO;
import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

/**
 *
 * @author TGG
 */
public class DisplayFamilyBackgroundServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String pIdParam = request.getParameter("p_id");
        int p_id = 0;
        if (pIdParam != null && !pIdParam.isEmpty()) {
            try {
                p_id = Integer.parseInt(pIdParam);
                request.getSession().setAttribute("p_id", p_id);
            } catch (NumberFormatException e) {
                System.out.println("Invalid p_id parameter: " + pIdParam);
            }
        } else {
            Object sessionPId = request.getSession().getAttribute("p_id");
            if (sessionPId != null) {
                p_id = (int) sessionPId;
            } else {
                System.out.println("No p_id provided or stored in the session.");
            }
        }
        Family_backgroundDAO personalInfo = new Family_backgroundDAO();
        Map<String, String> data = personalInfo.getData(p_id);
        Family_childrenDAO familyChildren = new Family_childrenDAO();
        List<Map<String, String>> dataChildren = familyChildren.getChildren(p_id);
        request.setAttribute("p_id", p_id);
        request.setAttribute("data", data);
        request.setAttribute("data_children", dataChildren);
        request.setAttribute("header-active","Family-Background");
        request.getRequestDispatcher("/family-background.jsp").forward(request, response);
    }
}