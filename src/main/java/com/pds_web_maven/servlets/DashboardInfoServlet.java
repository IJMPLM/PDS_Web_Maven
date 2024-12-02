package com.pds_web_maven.servlets;

import com.pds_web_maven.dao.DashboardInfo;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.Map;

public class DashboardInfoServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DashboardInfo dashboardInfo = new DashboardInfo();
        Map<String, String>[] data = dashboardInfo.getValues();
        request.setAttribute("data", data);
        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
