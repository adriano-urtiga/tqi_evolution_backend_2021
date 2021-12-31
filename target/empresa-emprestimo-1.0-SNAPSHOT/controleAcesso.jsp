<%
    String idEnviar = (String) request.getAttribute("idEnviar");
    session.setAttribute("idEnviar", idEnviar);

    response.sendRedirect("paginaInicialCliente.jsp");
%>