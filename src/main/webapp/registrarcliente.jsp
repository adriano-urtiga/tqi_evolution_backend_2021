<%--
  Created by IntelliJ IDEA.
  User: adria
  Date: 28/12/2021
  Time: 12:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Insert title here</title>
</head>
<body>
<div align="center">
    <h1>Employee Register Form</h1>
    <form action="<%= request.getContextPath() %>/registrar" method="post">
        <table>
            <tr>
                <td>Nome</td>
                <td><input type="text" name="nome" /></td>
            </tr>
            <tr>
                <td>Sobrenome</td>
                <td><input type="text" name="sobreNome" /></td>
            </tr>
            <tr>
                <td>E-mail</td>
                <td><input type="text" name="email" /></td>
            </tr>
            <tr>
                <td>Senha</td>
                <td><input type="password" name="senha" /></td>
            </tr>
            <tr>
                <td>RG</td>
                <td><input type="number" name="rg" /></td>
            </tr>
            <tr>
                <td>CPF</td>
                <td><input type="number" name="cpf" /></td>
            </tr>
            <tr>
                <td>Renda</td>
                <td><input type="number" name="renda" /></td>
            </tr>
            <tr>
                <td>Cidade</td>
                <td><input type="text" name="cidade" /></td>
            </tr>
            <tr>
                <td>Estado</td>
                <td><input type="text" name="estado" /></td>
            </tr>
            <tr>
                <td>Rua</td>
                <td><input type="text" name="rua" /></td>
            </tr>
            <tr>
                <td>Número</td>
                <td><input type="number" name="numero" /></td>
            </tr>

        </table>
        <input type="submit" value="Registar" />

    </form>
    <br/><a href="deslogar.jsp">Voltar para a pagina de inicial</a>
</div>
</body>
</html>
