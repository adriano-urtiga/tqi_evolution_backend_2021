<%--
  Created by IntelliJ IDEA.
  User: adria
  Date: 04/01/2022
  Time: 16:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <title>Erro Redirecionado</title>
</head>
<body>
    <div class="p-3 mb-2 bg-dark text-danger">
        <H3>BBI-EMPRÉSTIMOS</H3>
    </div>
    <div align="center">
        <h1>Desculpe, mais encontramos um erro nos dados informados.</h1>
    </div>
    <div align="center" class="d-block p-2" >
        <h3>Para cadastrar um cliente, precisa informar preencher todos os campos, e para RG, CPF, Renda e Número do enedreço informe apenas números </h3>

        <h3>Para solicitar um empréstimo, precisa informar todos os campos solicitados no formulário </h3>
    </div>
    <div align="center">
        <form action="deslogar.jsp">
            <input style="width: 300px;" class="btn btn-warning"  type="submit" value="Voltar para a pagina de inicial">
        </form>
    </div>

</body>
</html>
