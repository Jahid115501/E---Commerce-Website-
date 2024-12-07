package com.mycompany.e.commercesite.servlet;

import com.mycompany.e.commercesite.dao.UserDao;
import com.mycompany.e.commercesite.entites.User;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

import javax.servlet.ServletException;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;

public class LoginServlet extends HttpServlet {

    private UserDao userDao;

    @Override
    public void init() throws ServletException {
        // Hibernate session factory setup
        SessionFactory factory = new Configuration().configure("hibernate.cfg.xml")
                .addAnnotatedClass(User.class).buildSessionFactory();
        userDao = new UserDao(factory);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // Get email and password from the request
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Get user by email and password using UserDao
        User user = userDao.getUserAndPassword(email, password);

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        // Check if user exists
        if (user != null) {
            // User is valid, create session and redirect to dashboard or home page
            HttpSession session = request.getSession();
            session.setAttribute("user", user); // Store user object in session
            response.sendRedirect("index.jsp"); // Redirect to dashboard or home page
        } else {
            // Invalid login attempt, show error message on the login page
            request.setAttribute("errorMessage", "Invalid email or password! Please try again.");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    public void destroy() {
        // Close session factory when servlet is destroyed
        userDao = null;
    }

    @Override
    public String getServletInfo() {
        return "Login Servlet";
    }
}
