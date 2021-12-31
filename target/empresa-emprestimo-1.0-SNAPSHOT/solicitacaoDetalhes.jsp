<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="com.emprestimo.empresaemprestimo.dao.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<div align="center">
    <h1>Emprestimo solicitado com sucesso!</h1>
    <br/><a href="paginaInicialCliente.jsp">Voltar para a pagina do cliente</a>
    <%
        String idEnviar = session.getAttribute("idEnviar").toString();
        session.setAttribute("idEnviar", idEnviar);
        out.print("id: "+ idEnviar);
    %>
</div>
</body>
</html>