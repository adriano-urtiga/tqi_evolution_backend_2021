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
    <title>Cadastro</title>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <div class="p-3 mb-2 bg-dark text-danger">
        <H3>BBI-EMPRÉSTIMOS</H3>
    </div>
</head>
<body>
<div class="container" align="center">
    <h1>Cadastro do Cliente</h1>
    <form  action="<%= request.getContextPath() %>/registrar" method="post">
        <div style="width: 500px; " class="list-group">

            <a  class="list-group-item list-group-item-action" aria-current="true">
                <label>Nome</label>
                <input type="text" name="nome" />
            </a>
            <a class="list-group-item list-group-item-action " aria-current="true">
                <label>Sobrenome</label>
                <input type="text" name="sobreNome" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>E-mail</label>
                <input type="text" name="email" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>Senha</label>
                <input type="password" name="senha" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>RG</label>
                <input type="number" name="rg" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>CPF</label>
                <input type="number" name="cpf" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>Renda</label>
                <input type="number" name="renda" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>Cidade</label>
                <input type="text" name="cidade" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>Estado</label>
                <input type="text" name="estado" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>Rua</label>
                <input type="text" name="rua" />
            </a>
            <a  class="list-group-item list-group-item-action " aria-current="true">
                <label>Número</label>
                <input type="number" name="numero" />
            </a>
        </div>

        <input style="width: 500px;" class="btn btn-success" type="submit" value="Registar" />
    </form>

        <form action="deslogar.jsp">
            <input style="width: 500px;" class="btn btn-warning"  type="submit" value="Voltar para a pagina de inicial">
        </form>


</div>
</body>
</html>
