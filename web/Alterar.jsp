<%-- 
    Document   : Alterar
    Created on : 20/10/2016, 21:29:13
    Author     : Gustavo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="br.com.fatecpg.Database"%>
<%@page import="br.com.fatecpg.Cliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<%
    ArrayList<Cliente> lista_cliente = Database.getClientes();
            String indice = request.getParameter("ac");
            int indice_cliente = Integer.parseInt(indice);
%>
<%
            if (request.getParameter("salvar_cliente")!=null) {
                if (request.getParameter("nome_alterado")!=null){
                    String nome = request.getParameter("nome_alterado");
                    lista_cliente.get(indice_cliente).setNome(nome);
                }
                if (request.getParameter("cpf_alterado")!=null){
                    String cpf = request.getParameter("cpf_alterado");
                    lista_cliente.get(indice_cliente).setCpf(request.getParameter(cpf));
                }
                if (request.getParameter("rg_alterado")!=null){
                    String rg = request.getParameter("rg_alterado");
                    lista_cliente.get(indice_cliente).setRg(rg);
                }
                if (request.getParameter("email_alterado")!=null){
                    String email = request.getParameter("email_alterado");
                    lista_cliente.get(indice_cliente).setEmail(email);
                }
                if (request.getParameter("telefone_alterado")!=null){
                    String telefone = request.getParameter("telefone_alterado");
                    lista_cliente.get(indice_cliente).setTelefone(telefone);
                }
                if (request.getParameter("end_alterado")!=null){
                    String endereço = request.getParameter("end_alterado");
                    lista_cliente.get(indice_cliente).setEndereço(endereço);
                }
            }
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Alterar Cliente</title>
    </head>
    <body>
        <h1>Clientes</h1>
        <hr>
        <form>
            <table border="1">
                <tr>
                    <th colspan="2">Dados</th>
                    <th colspan="2">Alterar</th>
                </tr> 
                <tr>
                    <td>Nome:</td>
                    <td><%=lista_cliente.get(indice_cliente).getNome() %></td>
                    <td>Novo nome:</td>
                    <td><input type="text" name="nome_alterado"></td>
                </tr>
                <tr>
                    <td>CPF:</td>
                    <td><%=lista_cliente.get(indice_cliente).getCpf()%></td>
                    <td>Novo CPF:</td>
                    <td><input type="text" name="cpf_alterado"></td>
                </tr>
                <tr>
                    <td>RG:</td>
                    <td><%=lista_cliente.get(indice_cliente).getRg()%></td>
                    <td>Novo RG:</td>
                    <td><input type="text" name="rg_alterado"></td>
                </tr>
                <tr>
                    <td>Email:</td>
                    <td><%=lista_cliente.get(indice_cliente).getEmail()%></td>
                    <td>Novo Email</td>
                    <td><input type="text" name="email_alterado"></td>
                </tr>
                <tr>
                    <td>Telefone:</td>
                    <td><%=lista_cliente.get(indice_cliente).getTelefone()%></td>
                    <td>Novo telefone:</td>
                    <td><input type="text" name="telefone_alterado"></td>
                </tr>
                <tr>
                    <td>Endereço:</td>
                    <td><%=lista_cliente.get(indice_cliente).getEndereço() %></td>
                    <td>Novo endereço:</td>
                    <td><input type="text" name="end_alterado"></td>
                </tr>
            </table>
            <input type="submit" name="salvar_cliente" value="Salvar">
        </form>
    </body>
</html>
