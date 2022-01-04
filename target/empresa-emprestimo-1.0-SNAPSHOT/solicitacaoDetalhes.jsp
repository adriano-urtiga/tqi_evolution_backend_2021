<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.emprestimo.empresaemprestimo.dao.*"%>
<!DOCTYPE html>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Status Cadastro</title>
</head>
<body>
<div class="p-3 mb-2 bg-dark text-danger">
    <H3>BBI-EMPRÉSTIMOS</H3>
</div>
<div align="center">
    <h1>Empréstimo solicitado com sucesso!</h1>
</div>

<div align="center">
    <form action="paginaInicialCliente.jsp">
        <input style="width: 300px;" class="btn btn-warning"  type="submit" value="Voltar para a página do cliente">
    </form>
</div>
    <%
        String idEnviar = session.getAttribute("idEnviar").toString();
        session.setAttribute("idEnviar", idEnviar);
    %>
</body>
</html>
