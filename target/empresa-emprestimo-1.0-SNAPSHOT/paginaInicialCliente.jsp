<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: adria
  Date: 28/12/2021
  Time: 16:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="/css/style.css">
    <title>Title</title>
</head>
<body>
    <div align="center">
        <h1>Página do Cliente</h1>
        <%
            String idEnviar = session.getAttribute("idEnviar").toString();
            session.setAttribute("idEnviar", idEnviar);
        %>
        <form action="solicitarEmprestimo.jsp" method="post">
            <input type="submit" value="Solicitar um Empréstimo">
        </form>
        <%
            request.setAttribute("idEnviar", idEnviar);
        %>

        <br/><a href="listaEmprestimo.jsp">Acompanhamento das solicitações de empréstimo</a>

        <br/><a href="deslogar.jsp">Deslogar</a>
    </div>

</body>
</html>
