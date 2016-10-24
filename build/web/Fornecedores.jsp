<%-- 
    Document   : Fornecedores
    Created on : 06/10/2016, 20:18:38
    Author     : Gustavo
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.com.fatecpg.Database"%>
<%@page import="br.com.fatecpg.Fornecedor"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ArrayList<Fornecedor> lista_fornecedor = Database.getFornecedores();
    if (request.getParameter("incluir_fornecedor")!=null) {
            Fornecedor f = new Fornecedor();
            f.setNome(request.getParameter("nome_fornecedor"));
            f.setRazao_social(request.getParameter("razaosocial_fornecedor"));
            f.setCnpj(request.getParameter("cnpj_fornecedor"));
            f.setEmail(request.getParameter("email_fornecedor"));
            f.setTelefone(request.getParameter("telefone_fornecedor"));
            f.setEndereço(request.getParameter("end_fornecedor"));
            lista_fornecedor.add(f);
            response.sendRedirect(request.getRequestURI());
    }
    if(request.getParameter("excluir_fornecedor")!=null){
        String indice = request.getParameter("if");
        int indice_fornecedor = Integer.parseInt(indice);
        lista_fornecedor.remove(indice_fornecedor);
        response.sendRedirect(request.getRequestURI());
    }
%>
<%
            if (request.getParameter("salvar_fornecedor")!=null) {
                String indice = request.getParameter("af");
                int indice_fornecedor = Integer.parseInt(indice);
                if (request.getParameter("nome_alterado")!=null){
                    lista_fornecedor.get(indice_fornecedor).setNome(request.getParameter("nome_alterado"));
                }
                if (request.getParameter("razao_social_alterado")!=null){
                    lista_fornecedor.get(indice_fornecedor).setRazao_social(request.getParameter("razao_social_alterado"));
                }
                if (request.getParameter("cnpj_alterado")!=null){
                    lista_fornecedor.get(indice_fornecedor).setCnpj(request.getParameter("cnpj_alterado"));
                }
                if (request.getParameter("email_alterado")!=null){
                    lista_fornecedor.get(indice_fornecedor).setEmail(request.getParameter("email_alterado"));
                }
                if (request.getParameter("telefone_alterado")!=null){
                    lista_fornecedor.get(indice_fornecedor).setTelefone(request.getParameter("telefone_alterado"));
                }
                if (request.getParameter("end_alterado")!=null){
                    lista_fornecedor.get(indice_fornecedor).setEndereço(request.getParameter("end_alterado"));
                }
                response.sendRedirect(request.getRequestURI());
            }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 04: Fornecedores</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h1>Fornecedores</h1>
        <div class="navbar navba-inverse">
            <div class="navbar-static-top">
                <fieldset>
                    <form class="form-inline">
                        Nome:</br><input type="text" class="input-sm" name="nome_fornecedor"></br>
                        Razão Social:</br> <input type="text" class="input-sm" name="razaosocial_fornecedor"><br/>
                        CNPJ:</br> <input type="text" class="input-sm" name="cnpj_fornecedor"></br>
                        E-Mail:</br><input type="text" class="input-sm" name="email_fornecedor"></br>
                        Telefone:</br><input type="text" class="input-sm" name="telefone_fornecedor"></br>
                        Endereço:</br><input type="text" class="input-sm" name="end_fornecedor"></br>
                        </br><input type="submit" class="btn btn-default" name="incluir_fornecedor" value="enviar">
                    </form>
                    <fieldset/>
            </div>
            <div>
                <h2>Lista:</h2></br>
                <table border="1">
                    <tr>
                        <th>Nome</th>
                        <th>Razão Social</th>
                        <th>CNPJ</th>
                        <th>E-Mail</th>
                        <th>Telefone</th>
                        <th>Endereço</th>
                    </tr>
                    <%for (Fornecedor f: lista_fornecedor) {%>
                    <tr>
                        <section>
                            <form>
                                <%lista_fornecedor.indexOf(f);%>
                                <td><input type="text" name="nome_alterado" value="<%=f.getNome() %>"></td>
                                <td><input type="text" name="razao_social_alterado" value="<%=f.getRazao_social() %>"></td>
                                <td><input type="text" name="cnpj_alterado" value="<%=f.getCnpj() %>"></td>
                                <td><input type="text" name="email_alterado" value="<%=f.getEmail() %>"></td>
                                <td><input type="text" name="telefone_alterado" value="<%=f.getTelefone() %>"></td>
                                <td><input type="text" name="end_alterado" value="<%=f.getEndereço() %>"></td>
                                <td>
                                    <input type="hidden" name="af" value="<%=lista_fornecedor.indexOf(f) %>">
                                    <input type="submit" name="salvar_fornecedor" value="salvar">
                                    <input type="hidden" name="if" value="<%=lista_fornecedor.indexOf(f) %>">
                                    <input type="submit" name="excluir_fornecedor" value="excluir">
                                </td>
                            </form>
                        </section>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>   
    </body>
</html>
