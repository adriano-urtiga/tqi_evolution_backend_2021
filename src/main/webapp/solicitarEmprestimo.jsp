<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>solicitar emprestimo</h1>
</body>

<form action="<%= request.getContextPath() %>/calcular" method="post">
    <div align="center">
        <table>
            <tr>
                <td>Valor do empréstimo</td>
                <td><input type="number" name="valorEmp" /></td>
            </tr>
            <tr>
                <td>Data da primeira parcela</td>
                <td><input type="date" name="dataEmp" /></td>
            </tr>
            <tr>
                <td>Quantidade de parcelas</td>
                <td><input type="number" name="quantidadeParcelas" /></td>
            </tr>
            <% String idEnviar = session.getAttribute("idEnviar").toString(); %>



        </table>
        <input type="submit" value="Solicitar" />
        <br/><a href="paginaInicialCliente.jsp">Voltar para pagina do cliente</a>
    </div>

    ID = <%= idEnviar %>




</form>
</html>