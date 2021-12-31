package com.emprestimo.empresaemprestimo.dao;

import com.emprestimo.empresaemprestimo.model.Cliente;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ClienteDao {
    public int registrarCliente(Cliente cliente) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO tabelacliente" +
                "  (nome, sobrenome, email, rg, cpf, senha, renda, cidade, estado, rua, numero) VALUES " +
                " (?,?,?,?,?,?,?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/bancocliente?useTimezone=true&serverTimezone=UTC", "root", "root");

             // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {

            preparedStatement.setString(1, cliente.getNome());
            preparedStatement.setString(2, cliente.getSobreNome());
            preparedStatement.setString(3, cliente.getEmail());
            preparedStatement.setInt(4, cliente.getRg());
            preparedStatement.setInt(5, cliente.getCpf());
            preparedStatement.setString(6, cliente.getSenha());
            preparedStatement.setInt(7, cliente.getRenda());
            preparedStatement.setString(8, cliente.getCidade());
            preparedStatement.setString(9, cliente.getEstado());
            preparedStatement.setString(10, cliente.getRua());
            preparedStatement.setInt(11, cliente.getNumero());

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

