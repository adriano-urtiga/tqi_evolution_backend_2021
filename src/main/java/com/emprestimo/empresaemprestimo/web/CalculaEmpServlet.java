package com.emprestimo.empresaemprestimo.web;

import com.emprestimo.empresaemprestimo.dao.ClienteDao;
import com.emprestimo.empresaemprestimo.dao.EmpDao;
import com.emprestimo.empresaemprestimo.model.Cliente;
import com.emprestimo.empresaemprestimo.model.Emprestimo;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/calcular")
public class CalculaEmpServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private EmpDao empDao;

    public void init() {
        empDao = new EmpDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        float valorx = Float.parseFloat(request.getParameter("valorEmp"));
        int qtdparcelasx = Integer.parseInt(request.getParameter("quantidadeParcelas"));
        String dataempx = request.getParameter("dataEmp");

        Emprestimo emprestimo = new Emprestimo();
        emprestimo.setValor(valorx);
        emprestimo.setQtdparcelas(qtdparcelasx);
        emprestimo.setDataemp(dataempx);

        try {
            empDao.registrarEmprestimo(emprestimo);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        response.sendRedirect("solicitacaoDetalhes.jsp");

    }
}
