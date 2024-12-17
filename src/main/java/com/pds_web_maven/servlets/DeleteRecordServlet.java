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

import com.pds_web_maven.dao.Personal_infoDAO;

/**
 *
 * @author TGG
 */
public class DeleteRecordServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse res)
            throws ServletException, IOException {
        Personal_infoDAO personal_infoDAO = new Personal_infoDAO();
        personal_infoDAO.deleteEverything(Integer.parseInt(req.getParameter("p_id")));
        req.getRequestDispatcher("DashboardInfoServlet").forward(req, res);
    }
}
