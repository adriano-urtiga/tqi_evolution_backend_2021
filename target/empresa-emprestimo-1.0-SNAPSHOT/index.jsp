<%@ page contentType="text/html; charset=UTF-8" language="java" %>

<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html"; charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

</head>
<body>
<div class="p-3 mb-2 bg-dark text-danger">
    <H3>BBI-EMPRÉSTIMOS</H3>
</div>
<div class="container-fluid" align="center" >
    <h1 >Faça seu empréstimo</h1>
    <div class="row no-gutter">
        <div>

            <h2>Opção prática e segura de empréstimo, sendo o valor contratado pago em parcelas mensais fixas, descontadas diretamente em folha de pagamento do contratante, com contratação 100% digital.</h2>

        </div>
        <div>
            <form action="autenticar" method="post">

                <p>
                    <input type="string" name="emaillogin" required placeholder="digite seu e-mail" />
                </p>
                <p>
                    <input type="password" name="senhalogin" required placeholder="digite sua senha" />
                </p>
                <p>
                    <input class="btn btn-success" type="submit" value="entrar" />
                </p>
                <h4><p>Ainda não é nosso cliente? <a href="registrarcliente.jsp">Clique aqui</a> para criar uma conta.</p></h4>

            </form>
        </div>
    </div>
</div>


<%
        String mensagem = (String) request.getAttribute("emailRetorno");
        if(mensagem!=null){
%>
            <div class="alert alert-danger d-flex align-items-center" role="alert">
                <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Danger:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                <div>
                    <%out.print(mensagem);}%>
                </div>
            </div>


</body>
</html>