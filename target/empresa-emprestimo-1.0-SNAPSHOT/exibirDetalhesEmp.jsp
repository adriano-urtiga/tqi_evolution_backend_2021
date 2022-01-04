<%--
  Created by IntelliJ IDEA.
  User: adria
  Date: 03/01/2022
  Time: 14:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<html>
<head>
    <title>Detalhes do Emprestimo Selecionado</title>

</head>
<body>
    <sql:setDataSource
            var="myDS"
            driver="com.mysql.jdbc.Driver"
            url="jdbc:mysql://localhost:3306/bancocliente?useTimezone=true&serverTimezone=UTC"
            user="root" password="root"
    />
    <sql:query var="listEmpretimos" dataSource="${myDS}">
        SELECT email, renda, id, valor, quantidade_parcelas, data, codigo_emprestimo from tabela_emprestimo, tabelacliente where id=id_emprestimo and codigo_emprestimo=?
        <sql:param value="${param.id}" />
    </sql:query>
    <div align="center">
        <table>
            <tr>
                <th>Código do Empréstimo</th>
                <th>Valor(R$)</th>
                <th>Quantidade de Parcelas</th>
                <th>Data da Primeira Parcela</th>
                <th>E-mail</th>
                <th>Renda R$</th>
            </tr>

            <c:forEach items="${listEmpretimos.rows}" var="e">
                <tr>
                    <td><c:out value="${e.codigo_emprestimo}" /> </td>
                    <td><c:out value="${e.valor}" /> </td>
                    <td><c:out value="${e.quantidade_parcelas}" /> </td>
                    <td><c:out value="${e.data}" /> </td>
                    <td><c:out value="${e.email}" /> </td>
                    <td><c:out value="${e.renda}" /> </td>
                </tr>

            </c:forEach>
    </table>
    </div>
    <br/><a href="listaEmprestimo.jsp">Voltar para lista de empréstimos</a>
</body>
</html>
