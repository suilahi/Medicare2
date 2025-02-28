package com.doctor.web;

import com.doctor.DAO.UserDao;
import com.doctor.DAO.DatabaseConnection;
import com.doctor.Model.user;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;
import java.sql.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        Connection connection = DatabaseConnection.getConnection();
        UserDao userDao = new UserDao(connection);

        try {
            user user = userDao.getUserByEmail(email);

            if (user != null && user.getMot_de_passe().equals(password)) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user);
                session.setAttribute("role", user.getRole());

                if ("patient".equals(user.getRole())) {
                    response.sendRedirect("./dashbordpatient.jsp");
                } else if ("medecin".equals(user.getRole())) {
                    response.sendRedirect("./dashborddoctor.jsp");
                } else {
                    response.sendRedirect("./index.jsp");
                }
                return;
            } else {
                response.sendRedirect("./index.jsp");
                return;
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("./index.jsp");
        }
    }
}
