package com.doctor.web;

import com.doctor.DAO.DatabaseConnection;
import com.doctor.DAO.UserDao;
import com.doctor.Model.user;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/register")
public class UserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("motdepasse");
        String phone = request.getParameter("phone");
        String role = request.getParameter("role");

        user users = new user( name,  email,password, phone, role );
        UserDao userDAO = null;
        userDAO = new UserDao(DatabaseConnection.getConnection());

        try {
            userDAO.addUser(users);
            response.sendRedirect("index.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("inscription.jsp");
        }
    }

}