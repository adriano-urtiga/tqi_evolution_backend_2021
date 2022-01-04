<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Lista de Empréstimos</title>

</head>
<body>
<div class="p-3 mb-2 bg-dark text-danger">
    <H3>BBI-EMPRÉSTIMOS</H3>
</div>
<div align="center" class="container">
    <div>
        <h1>lista de emprestimos</h1>
        <%
            String idEnviar = session.getAttribute("idEnviar").toString();
        %>
        <sql:setDataSource
            var="myDS"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/bancocliente?useTimezone=true&serverTimezone=UTC"
            user="root" password="root"
            />
        <c:set var="teste" value='${sessionScope.idEnviar}'/>
        <sql:query var="listEmpretimos" dataSource="${myDS}">
            SELECT email, renda, id, valor, quantidade_parcelas, data, codigo_emprestimo from tabela_emprestimo, tabelacliente where id=id_emprestimo and id=?
            <sql:param value="${teste}" />
        </sql:query>
        <table style="margin: auto; display: table"  class="table table-dark table-striped">
            <tr>
                <th scope="col">Código do Empréstimo</th>
                <th scope="col">Valor(R$)</th>
                <th scope="col">Quantidade de Parcelas</th>
                <th scope="col">Opções</th>
            </tr>
            <c:forEach items="${listEmpretimos.rows}" var="l">
                    <tr>
                        <td><c:out value="${l.codigo_emprestimo}" /> </td>
                        <td><c:out value="${l.valor}" /> </td>
                        <td><c:out value="${l.quantidade_parcelas}" /> </td>
                        <td>
                            <a class="text-light" href="exibirDetalhesEmp.jsp?id=<c:out value='${l.codigo_emprestimo}' />">Exibir Detalhes</a>

                        </td>
                    </tr>
            </c:forEach>
        </table>
    </div>
    <br/><a href="paginaInicialCliente.jsp">Voltar para pagina do cliente</a>
</div>
</body>

</html>