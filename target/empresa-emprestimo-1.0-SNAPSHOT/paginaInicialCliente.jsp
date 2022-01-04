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
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <link rel="stylesheet" href="style.css" type="text/css">
    <title>Página do Cliente</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<div class="p-3 mb-2 bg-dark text-danger">
    <H3>BBI-EMPRÉSTIMOS</H3>
</div>
    <div align="center">
        <h1>Página do Cliente</h1>
        <%
            String idEnviar = session.getAttribute("idEnviar").toString();
            session.setAttribute("idEnviar", idEnviar);
            request.setAttribute("idEnviar", idEnviar);
        %>
        <form style="width: 500px;" class="btn btn-success" action="solicitarEmprestimo.jsp">
            <input type="submit" value="Solicitar um Empréstimo">
        </form>

        <form style="width: 500px;" class="btn btn-primary" action="listaEmprestimo.jsp">
            <input type="submit" value="Acompanhamento das solicitações de empréstimo">
        </form>
        <form style="width: 500px;" class="btn btn-warning" action="deslogar.jsp">
            <input type="submit" value="Deslogar">
        </form>
    </div>

</body>
</html>
