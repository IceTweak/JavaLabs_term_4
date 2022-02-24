package com.example.lab_1;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "pages", value = "/pages")
public class PagesServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");
        String pagePath = null;

        if (action == null || action.equalsIgnoreCase("home")) {
            pagePath = "index.jsp";
        } else {
            if (action.equalsIgnoreCase("about")) {
                pagePath = "pages/about.jsp";
            } else if (action.equalsIgnoreCase("contact")) {
                pagePath = "pages/contact.jsp";
            } else if (action.equalsIgnoreCase("pricing")) {
                pagePath = "pages/pricing.jsp";
            } else if (action.equalsIgnoreCase("portfolioAll")) {
                pagePath = "pages/portfolioAll.jsp";
            } else if (action.equalsIgnoreCase("portfolioItem")) {
                pagePath = "pages/portfolioItem.jsp";
            }
        }
        doGetPages(request, response, pagePath);

    }

    public void doGetPages(HttpServletRequest request, HttpServletResponse response, String path)
            throws ServletException, IOException {
        request.getRequestDispatcher(path).forward(request, response);
    }

    public void destroy() {

    }

}