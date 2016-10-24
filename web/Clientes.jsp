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
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Clientes</h1>
        <div>
            <div>
                <fieldset>
                    <form>
                        Nome:<input type="text" name="nome_cliente">
                        CPF:<input type="text" name="cpf_cliente">
                        RG:<input type="text" name="rg_cliente">
                        E-mail:<input type="text" name="email_cliente">
                        Telefone:<input type="text" name="telefone_cliente">
                        Endereço:<input type="text" name="end_cliente">
                        <input type="submit" name="incluir_cliente" value="incluir">
                    </form>
                </fieldset>
            </div>
            <div>
                <h2>Lista:</h2></br>
                <table border="1">
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
                        <section>
                            <form>
                                <%lista_cliente.indexOf(c);%>
                                <td><input type="text" name="nome_alterado" value="<%=c.getNome() %>"></td>
                                <td><input type="text" name="cpf_alterado" value="<%=c.getCpf() %>"></td>
                                <td><input type="text" name="rg_alterado" value="<%=c.getRg() %>"></td>
                                <td><input type="text" name="email_alterado" value="<%=c.getEmail() %>"></td>
                                <td><input type="text" name="telefone_alterado" value="<%=c.getTelefone() %>"></td>
                                <td><input type="text" name="end_alterado" value="<%=c.getEndereço() %>"></td>
                                <td>
                                    <input type="hidden" name="ac" value="<%=lista_cliente.indexOf(c) %>">
                                    <input type="submit" name="salvar_cliente" value="salvar">
                                    <input type="hidden" name="ec" value="<%=lista_cliente.indexOf(c) %>">
                                    <input type="submit" name="excluir_cliente" value="excluir">
                                </td>
                            </form>
                        </section>
                    </tr>
                    <%}%>
                </table>
            </div>                
        </div>
    </body>
</html>
