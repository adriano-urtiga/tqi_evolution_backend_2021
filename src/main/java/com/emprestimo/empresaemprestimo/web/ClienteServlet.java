package com.emprestimo.empresaemprestimo.web;

import com.emprestimo.empresaemprestimo.dao.ClienteDao;
import com.emprestimo.empresaemprestimo.model.Cliente;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/registrar")
public class ClienteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ClienteDao clienteDao;

    public void init() {
        clienteDao = new ClienteDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String email = request.getParameter("email");
        String sobreNome = request.getParameter("sobreNome");
        String senha = request.getParameter("senha");
        int rg = Integer.parseInt(request.getParameter("rg"));
        int cpf = Integer.parseInt(request.getParameter("cpf"));
        int renda = Integer.parseInt(request.getParameter("renda"));
        String cidade = request.getParameter("cidade");
        String estado = request.getParameter("estado");
        String rua = request.getParameter("rua");
        int numero = Integer.parseInt(request.getParameter("numero"));

        Cliente cliente = new Cliente();
        cliente.setNome(nome);
        cliente.setEmail(email);
        cliente.setSobreNome(sobreNome);
        cliente.setSenha(senha);
        cliente.setRg(rg);
        cliente.setCpf(cpf);
        cliente.setRenda(renda);
        cliente.setCidade(cidade);
        cliente.setEstado(estado);
        cliente.setRua(rua);
        cliente.setNumero(numero);


        try {
            clienteDao.registrarCliente(cliente);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        response.sendRedirect("clientedetalhes.jsp");
    }
}
