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
    <title>Title</title>

</head>
<body>
    <div align="center">
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
        <c:out value="${teste}"/>
        <sql:query var="listEmpretimos" dataSource="${myDS}">
            SELECT email, renda, id, valor, quantidade_parcelas, data, codigo_emprestimo from tabela_emprestimo, tabelacliente where id=id_emprestimo and id=?
            <sql:param value="${teste}" />
        </sql:query>
        <table>
            <tr>
                <th>Código do Empréstimo</th>
                <th>Valor(R$)</th>
                <th>Quantidade de Parcelas</th>
                <th>Opções</th>
            </tr>

            <c:forEach items="${listEmpretimos.rows}" var="l">



                    <tr>
                        <td><c:out value="${l.codigo_emprestimo}" /> </td>
                        <td><c:out value="${l.valor}" /> </td>
                        <td><c:out value="${l.quantidade_parcelas}" /> </td>
                        <td>
                            <a href="exibirDetalhesEmp.jsp?id=<c:out value='${l.codigo_emprestimo}' />">Exibir Detalhes</a>

                        </td>
                    </tr>

            </c:forEach>

        </table>
    </div>



</body>








<br/><a href="paginaInicialCliente.jsp">Voltar para pagina do cliente</a>
</html>