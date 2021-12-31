<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Emprestimos</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
<div align="center" >

    <h1 >Faça seu empréstimo</h1>
    <h2>Opção prática e segura de empréstimo, sendo o valor contratado pago em parcelas mensais fixas, descontadas diretamente em folha de pagamento do contratante, com contratação 100% digital.</h2>

    <form action="autenticar" method="post">
        <p>
            <input type="string" name="emaillogin" required placeholder="digite seu e-mail" />
        </p>
        <p>
            <input type="password" name="senhalogin" required placeholder="digite sua senha" />
        </p>
        <p>
            <input type="submit" value="entrar" />
        </p>
        <p>Ainda não é nosso cliente? <a href="registrarcliente.jsp">Clique aqui</a> para criar uma conta.</p>

    </form>
</div>
<h3 align="center">
    <%
        String mensagem = (String) request.getAttribute("emailRetorno");
        if(mensagem!=null) out.print(mensagem);
    %>

</h3>
</body>
</html>