package com.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

import com.dao.FarmerDao;
import com.model.Farmer;
import com.model.FarmerLoginModel;

@WebServlet("/FarmerLogin")
public class FarmerLogin extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String username = request.getParameter("uname");
        String password = request.getParameter("password");

        // Basic validation
        if (username == null || password == null ||
            username.trim().isEmpty() || password.trim().isEmpty()) {

            request.setAttribute("error", "Username or Password cannot be empty");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
            return;
        }

        FarmerLoginModel lm = new FarmerLoginModel();
        lm.setUsername(username.trim());
        lm.setPassword(password.trim());

        FarmerDao fdo=new FarmerDao();
        Farmer farmer = fdo.loginfarmer(lm);

        if (farmer != null) {
            HttpSession session = request.getSession(true);
            session.setAttribute("farmer", farmer);

            // Redirect after successful login
            response.sendRedirect("farmerhome.jsp");
        } else {
            request.setAttribute("error", "Invalid Username or Password");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }

    // Optional: redirect GET request to login page
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.sendRedirect("login.jsp");
    }
}