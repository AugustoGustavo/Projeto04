<%-- 
    Document   : Clientes
    Created on : 06/10/2016, 20:18:30
    Author     : Gustavo
--%>

<%@page import="br.com.fatecpg.Database"%>
<%@page import="br.com.fatecpg.Cliente"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Cliente> lista_cliente = Database.getClientes();
    if (request.getParameter("incluir_cliente")!=null) {
            Cliente c = new Cliente();
            c.setNome(request.getParameter("nome_cliente"));
            c.setCpf(request.getParameter("cpf_cliente"));
            c.setRg(request.getParameter("rg_cliente"));
            c.setEmail(request.getParameter("email_cliente"));
            c.setTelefone(request.getParameter("telefone_cliente"));
            c.setEndereço(request.getParameter("end_cliente"));
            lista_cliente.add(c);
            response.sendRedirect(request.getRequestURI());
    }
    if (request.getParameter("excluir_cliente")!=null) {
            String indice = request.getParameter("ec");
            int indice_cliente = Integer.parseInt(indice);
            lista_cliente.remove(indice_cliente);
            response.sendRedirect(request.getRequestURI());
        }
%>
<%
            if (request.getParameter("salvar_cliente")!=null) {
                String indice = request.getParameter("ac");
                int indice_cliente = Integer.parseInt(indice);
                if (request.getParameter("nome_alterado")!=null){
                    lista_cliente.get(indice_cliente).setNome(request.getParameter("nome_alterado"));
                }
                if (request.getParameter("cpf_alterado")!=null){
                    lista_cliente.get(indice_cliente).setCpf(request.getParameter("cpf_alterado"));
                }
                if (request.getParameter("rg_alterado")!=null){
                    lista_cliente.get(indice_cliente).setRg(request.getParameter("rg_alterado"));
                }
                if (request.getParameter("email_alterado")!=null){
                    lista_cliente.get(indice_cliente).setEmail(request.getParameter("email_alterado"));
                }
                if (request.getParameter("telefone_alterado")!=null){
                    lista_cliente.get(indice_cliente).setTelefone(request.getParameter("telefone_alterado"));
                }
                if (request.getParameter("end_alterado")!=null){
                    lista_cliente.get(indice_cliente).setEndereço(request.getParameter("end_alterado"));
                }
                response.sendRedirect(request.getRequestURI());
            }
%>
    
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 04: Clientes</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1 align="center">Clientes</h1>
        </br>
        <div class="row">
            <div class="span12" style="text-align: center; margin: 0 auto;">
                <fieldset>
                    <form class="form-inline">
                        Nome:</br><input type="text" class="input-sm" name="nome_cliente"></br>
                        CPF:</br><input type="text" class="input-sm" name="cpf_cliente"></br>
                        RG:</br><input type="text" class="input-sm" name="rg_cliente"></br>
                        E-mail:</br><input type="text" class="input-sm" name="email_cliente"></br>
                        Telefone:</br><input type="text" class="input-sm" name="telefone_cliente"></br>
                        Endereço:</br><input type="text" class="input-sm" name="end_cliente"></br>
                        </br><input type="submit" class="btn btn-default" name="incluir_cliente" value="incluir">
                    </form>
                </fieldset>
                </br>
                <h2 align="center">Lista:</h2></br>
                <table border="1" class="table-condensed" align="center">
                    <tr>
                        <th>Nome</th>
                        <th>CPF</th>
                        <th>RG</th>
                        <th>E-Mail</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                        <th>Opções</th>
                    </tr>
                    <%for (Cliente c: lista_cliente) {%>
                    <tr>
                        <form>
                            <%lista_cliente.indexOf(c);%>
                            <td><input type="text" name="nome_alterado" value="<%=c.getNome() %>"></td>
                            <td><input type="text" name="cpf_alterado" value="<%=c.getCpf() %>"></td>
                            <td><input type="text" name="rg_alterado" value="<%=c.getRg() %>"></td>
                            <td><input type="text" name="emaSil_alterado" value="<%=c.getEmail() %>"></td>
                            <td><input type="text" name="telefone_alterado" value="<%=c.getTelefone() %>"></td>
                            <td><input type="text" name="end_alterado" value="<%=c.getEndereço() %>"></td>
                            <td>
                                <input type="hidden" name="ac" class="btn btn-default" value="<%=lista_cliente.indexOf(c) %>">
                                <input type="submit" name="salvar_cliente" value="salvar">
                                <input type="hidden" name="ec" class="btn btn-default" value="<%=lista_cliente.indexOf(c) %>">
                                <input type="submit" name="excluir_cliente" value="excluir">
                            </td>
                        </form>
                    </tr>
                    <%}%>
                </table>
            </div>                
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script> 
    </body>
</html>
