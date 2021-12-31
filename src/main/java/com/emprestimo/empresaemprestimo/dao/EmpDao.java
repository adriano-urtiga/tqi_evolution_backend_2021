package com.emprestimo.empresaemprestimo.dao;

import com.emprestimo.empresaemprestimo.model.Cliente;
import com.emprestimo.empresaemprestimo.model.Emprestimo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmpDao {
    public int registrarEmprestimo(Emprestimo emprestimo) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO tabela_emprestimo" +
                "  (valor, quantidade_parcelas, data) VALUES " +
                " (?,?, ?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/bancocliente?useTimezone=true&serverTimezone=UTC", "root", "root");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            preparedStatement.setFloat(1, emprestimo.getValor());
            preparedStatement.setInt(2, emprestimo.getQtdparcelas());
            preparedStatement.setString(3, emprestimo.getDataemp());

            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private static void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
