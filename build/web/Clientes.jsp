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
    
<html>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Projeto 04: Clientes</title>
    </head>
    <body>
        
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
                        <%lista_cliente.indexOf(c);%>
                        <td><%=c.getNome() %></td>
                        <td><%=c.getCpf() %></td>
                        <td><%=c.getRg() %></td>
                        <td><%=c.getEmail() %></td>
                        <td><%=c.getTelefone() %></td>
                        <td><%=c.getEndereço() %></td>   
                        <td>
                            <form>
                                <input type="hidden" name="ec" value="<%=lista_cliente.indexOf(c) %>">
                                <input type="submit" name="excluir_cliente" value="excluir">
                            </form>
                            <section>
                                <form action="Alterar.jsp">
                                    <input type="hidden" name="ac" value="<%=lista_cliente.indexOf(c) %>">
                                    <input type="submit" name="alterar_cliente" value="alterar">
                                </form>
                            </section>
                        </td>
                    </tr>
                    <%}%>
                </table>
            </div>                
        </div>
    </body>
</html>
