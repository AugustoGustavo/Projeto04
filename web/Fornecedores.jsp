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
    if(request.getParameter("excluir")!=null){
        String indice = request.getParameter("if");
        int indice_fornecedor = Integer.parseInt(indice);
        lista_fornecedor.remove(indice_fornecedor);
        response.sendRedirect(request.getRequestURI());
    }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 04: Fornecedores</title>
    </head>
    <body>
        <h1>Fornecedores</h1>
        <div>
            <div>
                <fieldset>
                    <form>
                    Nome:<input type="text" name="nome_fornecedor">
                    Razão Social:<input type="text" name="razaosocial_fornecedor">
                    CNPJ:<input type="text" name="cnpj_fornecedor">
                    E-Mail:<input type="text" name="email_fornecedor">
                    Telefone:<input type="text" name="telefone_fornecedor">
                    Endereço:<input type="text" name="end_fornecedor">
                    <input type="submit" name="incluir_fornecedor" value="enviar">
                    </form>
                </fieldset>
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
                        <%lista_fornecedor.indexOf(f);%>
                        <td><%=f.getNome() %></td>
                        <td><%=f.getRazao_social() %></td>
                        <td><%=f.getCnpj() %></td>
                        <td><%=f.getEmail() %></td>
                        <td><%=f.getTelefone() %></td>
                        <td><%=f.getEndereço()%></td>
                        <td>
                            <form>
                                <input type="hidden" name="if" value="<%=lista_fornecedor.indexOf(f) %>">
                                <input type="submit" name="excluir_fornecedor" value="excluir">
                            </form>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </div>
        </div>
        
    </body>
</html>
