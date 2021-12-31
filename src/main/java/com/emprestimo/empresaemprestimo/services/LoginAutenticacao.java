package com.emprestimo.empresaemprestimo.services;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/autenticar")
public class LoginAutenticacao extends HttpServlet {
    private ServletConfig config;

    public void init(ServletConfig config)
            throws ServletException{
        this.config=config;
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PrintWriter out = response.getWriter();
        String connectionURL = "jdbc:mysql://localhost:3306/bancocliente?useTimezone=true&serverTimezone=UTC";
        Connection connection=null;
        ResultSet rs;
        String emailCompara=new String("");
        String senhaCompara=new String("");
        String  idEnviar = new String("");


        response.setContentType("text/html");
        try {

            Class.forName("com.mysql.jdbc.Driver");

            connection = DriverManager.getConnection(connectionURL, "root", "root");

            String sql = "select email,senha, id from tabelacliente";
            Statement s = connection.createStatement();
            s.executeQuery (sql);
            rs = s.getResultSet();
            while (rs.next ()) {
                emailCompara = rs.getString("email");
                senhaCompara = rs.getString("senha");
                idEnviar = rs.getString("id");
                if (emailCompara.equals(request.getParameter("emaillogin"))
                        && senhaCompara.equals(request.getParameter("senhalogin"))) {

                    request.setAttribute("idEnviar",idEnviar);
                    request.getRequestDispatcher("controleAcesso.jsp").forward(request,response);

                    connection.close();
                    return;


                }
            }
            String mensagem = ("E-mail não encontrado na nossa base de dados");
            request.setAttribute("emailRetorno", mensagem);
            request.getRequestDispatcher("index.jsp").forward(request,response);


            System.out.println("rs : " + rs + "s : " + s);
            rs.close ();
            s.close ();
        }catch(Exception e){
            System.out.println("Exception is ;"+e);
        }


    }
}
