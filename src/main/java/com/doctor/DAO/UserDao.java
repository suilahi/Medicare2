package com.doctor.DAO;

import com.doctor.DAO.DatabaseConnection;
import com.doctor.Model.user;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDao {
    private Connection connection;

    public UserDao(Connection connection) {
        this.connection = connection;
    }


    public void addUser(user user) throws SQLException {
        String query = "INSERT INTO users (name, Mot_de_passe, email, phone, role) VALUES ( ?, ?, ?, ?, ?)";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, user.getName());
            stmt.setString(2, user.getMot_de_passe());
            stmt.setString(3, user.getEmail());
            stmt.setString(4, user.getPhone());
            stmt.setString(5, user.getRole());
            stmt.executeUpdate();
        }
    }

    public user getUserByEmail(String email) throws SQLException {
        String query = "SELECT * FROM users WHERE email = ?";
        try (Connection conn = DatabaseConnection.getConnection();
             PreparedStatement stmt = conn.prepareStatement(query)) {
            stmt.setString(1, email);
            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                return new user(
                        rs.getString("name"),
                        rs.getString("Mot_de_passe"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getString("role")
                );
            }
        }
        return null;
    }
}