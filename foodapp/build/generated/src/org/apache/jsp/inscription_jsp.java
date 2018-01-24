package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class inscription_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <title>Food App</title>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/bootstrap.min.css\">\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Pacifico' rel='stylesheet' type='text/css'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/font-awesome.min.css\">\n");
      out.write("        <!--        <link rel=\"stylesheet\" href=\"assets/css/bootstrap-theme.min.css\">-->\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!--For Plugins external css-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animate/animate.css\" />\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/plugins.css\" />\n");
      out.write("\n");
      out.write("        <!--Theme custom css -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/style.css\">\n");
      out.write("\n");
      out.write("        <!--Theme Responsive css-->\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/responsive.css\" />\n");
      out.write("       \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        </br></br>\n");
      out.write("    <center><h4>BIENVENUE!</h4></br>\n");
      out.write("        <form method=\"post\" action=\"Compteserv\">\n");
      out.write("            \n");
      out.write("            <table>\n");
      out.write("<tr>\n");
      out.write("                        <td><input type=\"text\" name=\"cin\" placeholder=\"CIN\" required=\"\" class=\"form-control\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"text\" name=\"nom\" placeholder=\"Nom\" required=\"\" class=\"form-control\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"text\" name=\"prenom\" placeholder=\"Prenom\" required=\"\" class=\"form-control\"/></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"email\" name=\"email\" placeholder=\"Email\" required=\"\" class=\"form-control\"/></td>\n");
      out.write("                    </tr>                   \n");
      out.write("                    <tr>\n");
      out.write("                        <td><input  type=\"password\" name=\"mdp\" placeholder=\"Mot de passe\" required=\"\" class=\"form-control\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                   \n");
      out.write("                    \n");
      out.write("                    <tr>\n");
      out.write("                        <td><textarea class=\"form-control\" name=\"adresse\" rows=\"2\" placeholder=\"Adresse\"></textarea></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td><input type=\"tel\" name=\"tel\" placeholder=\"Numero telephone\" required=\"\" class=\"form-control\" /></td>\n");
      out.write("                    </tr>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>\n");
      out.write("                        <select id=\"select\" name='type' class=\"form-control\" required=\"\">\n");
      out.write("                            <option value=\"client\" selected class=\"form-control\">Client</option> \n");
      out.write("                            <option value=\"livreur\"  class=\"form-control\">Livreur</option>\n");
      out.write("                            <option value=\"gerant\"  class=\"form-control\">Gerant d'un restau</option>\n");
      out.write("                        </select>\n");
      out.write("                        </td>\n");
      out.write("                    </tr> \n");
      out.write("               \n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            </br>\n");
      out.write("          \n");
      out.write("                <input type=\"submit\" value=\"S'inscrire\" class=\"btn btn-primary\" />\n");
      out.write("\n");
      out.write("            </center>          \n");
      out.write("        </form>\n");
      out.write("        \n");
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
