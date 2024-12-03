/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.pds_web_maven.servlets;

import com.pds_web_maven.dao.ReadFamily_background;
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
        int p_id = Integer.parseInt(request.getParameter("p_id"));
        ReadFamily_background personalInfo = new ReadFamily_background();
        Map<String, String> data = personalInfo.getData(p_id);
        request.setAttribute("data", data);
        request.getRequestDispatcher("/family-background.jsp").forward(request, response);
    }
}