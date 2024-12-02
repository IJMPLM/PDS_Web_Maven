package com.pds_web_maven.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class RespondentInfoServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String page = request.getParameter("page");
        String jspPage = "personal-information.jsp"; // Default page

        if ("family-background".equals(page)) {
            jspPage = "family-background.jsp";
        }
        if ("educational-background".equals(page)){
            jspPage= "educational-background.jsp";
        }
        if ("civil-service-eligibility".equals(page)){
            jspPage= "civil-service-eligibility.jsp";
        }
        if ("work-experience".equals(page)){
            jspPage= "work-experience.jsp";
        }
        if ("voluntary-work".equals(page)){
            jspPage= "voluntary-work.jsp";
        }
        if ("learning-and-development".equals(page)){
            jspPage= "voluntary-work.jsp";
        }
        if ("other-information".equals(page)){
            jspPage= "voluntary-work.jsp";
        }
        request.getRequestDispatcher(jspPage).forward(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }
}
