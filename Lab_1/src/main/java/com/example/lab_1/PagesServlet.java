package com.example.lab_1;

import java.io.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "pages", value = "/pages")
public class PagesServlet extends HttpServlet {


    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String action = request.getParameter("action");

        if (action == null || action.equalsIgnoreCase("home")) {
            doGet_Index(request, response);
        } else {
            if (action.equalsIgnoreCase("about")) {
                doGet_About(request, response);
            } else if (action.equalsIgnoreCase("contact")) {
                doGet_Contact(request, response);
            } else if (action.equalsIgnoreCase("pricing")) {
                doGet_Pricing(request, response);
            } else if (action.equalsIgnoreCase("portfolioAll")) {
                doGet_PortfolioAll(request, response);
            } else if (action.equalsIgnoreCase("portfolioItem")) {
                doGet_PortfolioItem(request, response);
            }
        }

    }

    public void doGet_Index(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }

    public void doGet_About(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("pages/about.jsp").forward(request, response);
    }

    public void doGet_Contact(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("pages/contact.jsp").forward(request, response);
    }

    protected void doGet_Pricing(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("pages/pricing.jsp").forward(request, response);
    }
    public void doGet_PortfolioAll(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("pages/portfolioAll.jsp").forward(request, response);
    }
    public void doGet_PortfolioItem(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("pages/portfolioItem.jsp").forward(request, response);
    }

    public void destroy() {

    }

}