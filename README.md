# Desafio-Emprestimo
O projeto foi desenvolvido para responder às necessidades de um banco digital com uma página inicial com as opções de realizar login e cadastrar um novo cliente, após realizar o login o cliente é redirecionado para a página do cliente onde tem-se as opções de solicitar empréstimo e visualizar seus empréstimos já solicitados, e após visualizar sua lista de empréstimo solicitados, poder visualizar os detalhes destes empréstimos.

Para que fosse possível atender às necessidades do projeto e utilizando a linguagem de programação java, foi utilizado:
* Java 11
* JSP e JSTL
* Banco de dados MySQL
* Tomcat 9
* Maven
* Bootstrap

### Visualização e Definição

Na página inicial, temos as opçôes de realizar o login inserindo o e-mail e a senha, ao clicar em entrar, a página jsp envia os dados de entrada pelo método Post para a classe 
de autenticação do tipo servlet em java, a qual recebe os parâmetros e acessa o banco de dados MySQL para realizar a verificação se o e-mail e senha são válidos, e após a validação,
a página inicial é redirecionada para a página inicial do cliente e atribuindo o id do cliente como um atributo de sessão, com isso é possível navegar
entre as páginas com o id atribuído
até que clique no botão "deslogar" em uma de suas páginas da sessão do cliente, onde é modificado o valor de sessão para "nulo", e com isso não permitindo o acesso direto a outras página
sem que seja realizado uma validação de login do cliente. Essa foi a metodologia adotada para atender aos requisitos solicitados pelo cliente.

Caso o cliente não informar valores válidos na página inicial, é exibido um banner contendo a informação que o login não foi autorizado.

Uma das diferenças entre utilizar jsp ou jstl é que o jstl permiti enviar o index de uma lista que foi imprimida na página após o utilizar o método de loop

`<foreach></foreach>`

no caso em questão, foi ao tentar enviar o código do empréstimo para poder imprimir a tabela com os detalhes em uma nova página.



#### Página Inicial

![Alt text](images/login.png?raw=true "Login")

#### Página de Cadastro de Clientes

![Alt text](images/cadastrocliente.png?raw=true "Cadastro de Cliente")

#### Página do Cliente

![Alt text](images/paginacliente.png?raw=true "Página do Cliente")

#### Página de Solicitação de Empréstimo

![Alt text](images/solicitaremprestimo.png?raw=true "Página do Cliente")

#### Página para Listar os Empréstimos

![Alt text](images/listadeemprestimos.png?raw=true "Página do Cliente")

#### Página para Exibir os Detalhes de um dos Empréstimos

![Alt text](images/detalhesemprestimo.png?raw=true "Página do Cliente")
