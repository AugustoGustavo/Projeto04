package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import br.com.fatecpg.Database;
import br.com.fatecpg.Cliente;
import java.util.ArrayList;

public final class Clientes_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");

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

      out.write('\n');

            if (request.getParameter("alterar_cliente")!=null) {
                String indice = request.getParameter("ac");
                int indice_cliente = Integer.parseInt(indice);
                if (request.getParameter("nome_alterado")!=null){
                    lista_cliente.get(indice_cliente).setNome(request.getParameter("nome_alterado"));
                }
                if (request.getParameter("cpf_alterado")!=null){
                    lista_cliente.get(indice_cliente).setCpf(request.getParameter("cpf_alterado"));
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
                response.sendRedirect(request.getRequestURI());
            }

      out.write("\n");
      out.write("    \n");
      out.write("<html>\n");
      out.write("    \n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Projeto 04: Clientes</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <h1>Clientes</h1>\n");
      out.write("        <div>\n");
      out.write("            <div>\n");
      out.write("                <fieldset>\n");
      out.write("                    <form>\n");
      out.write("                        Nome:<input type=\"text\" name=\"nome_cliente\">\n");
      out.write("                        CPF:<input type=\"text\" name=\"cpf_cliente\">\n");
      out.write("                        RG:<input type=\"text\" name=\"rg_cliente\">\n");
      out.write("                        E-mail:<input type=\"text\" name=\"email_cliente\">\n");
      out.write("                        Telefone:<input type=\"text\" name=\"telefone_cliente\">\n");
      out.write("                        Endereço:<input type=\"text\" name=\"end_cliente\">\n");
      out.write("                        <input type=\"submit\" name=\"incluir_cliente\" value=\"incluir\">\n");
      out.write("                    </form>\n");
      out.write("                </fieldset>\n");
      out.write("            </div>\n");
      out.write("            <div>\n");
      out.write("                <h2>Lista:</h2></br>\n");
      out.write("                <table border=\"1\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th>Nome</th>\n");
      out.write("                        <th>CPF</th>\n");
      out.write("                        <th>RG</th>\n");
      out.write("                        <th>E-Mail</th>\n");
      out.write("                        <th>Telefone</th>\n");
      out.write("                        <th>Endereço</th>\n");
      out.write("                        <th>Opções</th>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
for (Cliente c: lista_cliente) {
      out.write("\n");
      out.write("                    <tr>\n");
      out.write("                        <section>\n");
      out.write("                            <form>\n");
      out.write("                                ");
lista_cliente.indexOf(c);
      out.write("\n");
      out.write("                                <td><input type=\"text\" name=\"nome_alterado\">");
      out.print(c.getNome() );
      out.write("</input></td>\n");
      out.write("                                <td><input type=\"text\" name=\"cpf_alterado\">");
      out.print(c.getCpf() );
      out.write("</input></td>\n");
      out.write("                                <td>");
      out.print(c.getRg() );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(c.getEmail() );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(c.getTelefone() );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(c.getEndereço() );
      out.write("</td>\n");
      out.write("                                <input type=\"hidden\" name=\"ac\" value=\"");
      out.print(lista_cliente.indexOf(c) );
      out.write("\">\n");
      out.write("                                <input type=\"submit\" name=\"alterar_cliente\" value=\"alterar\">\n");
      out.write("                            <form>\n");
      out.write("                        </section>\n");
      out.write("                        <td>\n");
      out.write("                        <form>\n");
      out.write("                            <input type=\"hidden\" name=\"ec\" value=\"");
      out.print(lista_cliente.indexOf(c) );
      out.write("\">\n");
      out.write("                            <input type=\"submit\" name=\"excluir_cliente\" value=\"excluir\">\n");
      out.write("                        </form>\n");
      out.write("                        </td>\n");
      out.write("                    </tr>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </table>\n");
      out.write("            </div>                \n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
