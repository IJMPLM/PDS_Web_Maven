package com.pds_web_maven.servlets;

import com.pds_web_maven.dao.Personal_InfoDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import java.util.Map;

public class DashboardInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Personal_InfoDAO dashboardInfo = new Personal_InfoDAO();
        List<Map<String, String>> data = dashboardInfo.getData();
        request.setAttribute("data", data);
        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Personal_InfoDAO dashboardInfo = new Personal_InfoDAO();
        List<Map<String, String>> data = dashboardInfo.getData();
        request.setAttribute("data", data);
        request.setAttribute("header-active","Dashboard");
        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }
}
