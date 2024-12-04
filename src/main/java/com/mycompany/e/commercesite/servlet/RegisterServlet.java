package com.mycompany.e.commercesite.servlet;

import com.mycompany.e.commercesite.entites.User;
import com.mycompany.e.commercesite.helper.FactoryProvider;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class RegisterServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            // Fetch form data
            String userName = request.getParameter("user_name");
            String userEmail = request.getParameter("user_email");
            String userPassword = request.getParameter("user_password");
            String userPhone = request.getParameter("user_phone");
            String userAddress = request.getParameter("user_adderss");

            // Validate form data
            if (userName.isEmpty() || userEmail.isEmpty() || userPassword.isEmpty() || userPhone.isEmpty() || userAddress.isEmpty()) {
                out.println("<h3 style='color:red;'>All fields are required!</h3>");
                return;
            }

            // Create User object
            User user = new User(userName, userEmail, userPassword, userPhone, "default.jpg", userAddress);

            // Hibernate: Save user to the database
            try {
                Session session = FactoryProvider.getFactory().openSession();
                Transaction tx = session.beginTransaction();

                session.save(user);

                tx.commit();
                session.close();

                out.println("<h3 style='color:green;'>Registration Successful!</h3>");
            } catch (Exception e) {
                e.printStackTrace();
                out.println("<h3 style='color:red;'>An error occurred while registering. Please try again later.</h3>");
            }
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Handles user registration";
    }
}
