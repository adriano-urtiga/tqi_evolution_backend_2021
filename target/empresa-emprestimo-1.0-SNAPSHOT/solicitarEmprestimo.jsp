<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Solicitar Empréstimo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<div class="p-3 mb-2 bg-dark text-danger">
    <H3>BBI-EMPRÉSTIMOS</H3>
</div>
<h1 align="center">Solicitar Empréstimo</h1>
<h2 align="center">Por favor, informe todos os campos solicitados</h2>
<form class="container" action="<%= request.getContextPath() %>/calcular" method="post">
    <div align="center">
        <table>
            <tr>
                <td>Valor do empréstimo</td>
                <td><input type="number" name="valorEmp" /></td>
            </tr>
            <tr>
                <td>Data da primeira parcela</td>
                <td><input type="date" name="dataEmp" /></td>
            </tr>
            <tr>
                <td>Quantidade de parcelas</td>
                <td><input type="number" name="quantidadeParcelas" /></td>
            </tr>
            <tr><td></td></tr>
            <% String idEnviar = session.getAttribute("idEnviar").toString(); %>
        </table>
        <p>
            <input class="btn btn-success" type="submit" value="Solicitar" />
        </p>
        <br/><a href="paginaInicialCliente.jsp">Voltar para pagina do cliente</a>
    </div>
</form>
</body>
</html>