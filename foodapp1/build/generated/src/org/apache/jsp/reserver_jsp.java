package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class reserver_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge,chrome=1\">\n");
      out.write("        <title>Food App</title>\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"apple-touch-icon.png\">\n");
      out.write("\n");
      out.write("\n");
      out.write("        <style>\n");
      out.write("            @import url(https://fonts.googleapis.com/css?family=Cabin:400);\n");
      out.write("            body {\n");
      out.write("                background-color: #1E2E3B;\n");
      out.write("                font-size: 15px;\n");
      out.write("                color: #565656;\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 0;\n");
      out.write("                margin-left: 0;\n");
      out.write("                margin-right: 0;\n");
      out.write("                font-family: 'roboto', sans-serif;\n");
      out.write("                font-weight: 300;\n");
      out.write("            }\n");
      out.write("            .webdesigntuts-workshop {\n");
      out.write("\n");
      out.write("                height: 100%;\n");
      out.write("                position: absolute;\n");
      out.write("                text-align: center;\n");
      out.write("                width: 100%;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop:before,\n");
      out.write("            .webdesigntuts-workshop:after {\n");
      out.write("                content: '';\n");
      out.write("                display: block;\t\n");
      out.write("                height: 1px;\n");
      out.write("                left: 50%;\n");
      out.write("                margin: 0 0 0 -400px;\n");
      out.write("                position: absolute;\n");
      out.write("                width: 800px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop:before {\n");
      out.write("                background: #444;\n");
      out.write("                background: linear-gradient(left, #151515, #444, #151515);\n");
      out.write("                top: 192px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop:after {\n");
      out.write("                background: #000;\n");
      out.write("                background: linear-gradient(left, #151515, #000, #151515);\t\n");
      out.write("                top: 191px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop form {\n");
      out.write("                background: #111;\n");
      out.write("                background: linear-gradient(#1b1b1b, #111);\n");
      out.write("                border: 1px solid #000;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                box-shadow: inset 0 0 0 1px #272727;\n");
      out.write("                display: inline-block;\n");
      out.write("                font-size: 0px;\n");
      out.write("                margin: 150px auto 0;\n");
      out.write("                padding: 20px;\n");
      out.write("                position: relative;\n");
      out.write("                z-index: 1;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop input {\n");
      out.write("                background: #222;\t\n");
      out.write("                background: linear-gradient(#333, #222);\t\n");
      out.write("                border: 1px solid #444;\n");
      out.write("                border-radius: 5px 0 0 5px;\n");
      out.write("                box-shadow: 0 2px 0 #000;\n");
      out.write("                color: #888;\n");
      out.write("                display: block;\n");
      out.write("                float: left;\n");
      out.write("                font-family: 'Cabin', helvetica, arial, sans-serif;\n");
      out.write("                font-size: 13px;\n");
      out.write("                font-weight: 400;\n");
      out.write("                height: 40px;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0 10px;\n");
      out.write("                text-shadow: 0 -1px 0 #000;\n");
      out.write("                width: 200px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .ie .webdesigntuts-workshop input {\n");
      out.write("                line-height: 40px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop input::-webkit-input-placeholder {\n");
      out.write("                color: #888;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop input:-moz-placeholder {\n");
      out.write("                color: #888;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop input:focus {\n");
      out.write("                animation: glow 800ms ease-out infinite alternate;\n");
      out.write("                background: #222922;\n");
      out.write("                background: linear-gradient(#333933, #222922);\n");
      out.write("                border-color: #393;\n");
      out.write("                box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;\n");
      out.write("                color: #efe;\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop input:focus::-webkit-input-placeholder { \n");
      out.write("                color: #efe;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop input:focus:-moz-placeholder {\n");
      out.write("                color: #efe;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop button {\n");
      out.write("                background: #222;\n");
      out.write("                background: linear-gradient(#333, #222);\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                border: 1px solid #444;\n");
      out.write("                border-left-color: #000;\n");
      out.write("                border-radius: 0 5px 5px 0;\n");
      out.write("                box-shadow: 0 2px 0 #000;\n");
      out.write("                color: #fff;\n");
      out.write("                display: block;\n");
      out.write("                float: left;\n");
      out.write("                font-family: 'Cabin', helvetica, arial, sans-serif;\n");
      out.write("                font-size: 13px;\n");
      out.write("                font-weight: 400;\n");
      out.write("                height: 40px;\n");
      out.write("                line-height: 40px;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                position: relative;\n");
      out.write("                text-shadow: 0 -1px 0 #000;\n");
      out.write("                width: 80px;\n");
      out.write("            }\t\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop button:hover,\n");
      out.write("            .webdesigntuts-workshop button:focus {\n");
      out.write("                background: #292929;\n");
      out.write("                background: linear-gradient(#393939, #292929);\n");
      out.write("                color: #E7A331;\n");
      out.write("                outline: none;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .webdesigntuts-workshop button:active {\n");
      out.write("                background: #292929;\n");
      out.write("                background: linear-gradient(#393939, #292929);\n");
      out.write("                box-shadow: 0 1px 0 #000, inset 1px 0 1px #222;\n");
      out.write("                top: 1px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes glow {\n");
      out.write("                0% {\n");
      out.write("                    border-color: #E7A331;\n");
      out.write("                    box-shadow: 0 0 5px rgba(0,255,0,.2), inset 0 0 5px rgba(0,255,0,.1), 0 2px 0 #000;\n");
      out.write("                }\t\n");
      out.write("                100% {\n");
      out.write("                    border-color: #E7A331;\n");
      out.write("                    box-shadow: 0 0 20px rgba(0,255,0,.6), inset 0 0 10px rgba(0,255,0,.4), 0 2px 0 #000;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            h4 {\n");
      out.write("                font-size:1.875rem;\n");
      out.write("                line-height: 2.2rem;\n");
      out.write("                margin-bottom: 1.1rem;\n");
      out.write("                font-family: 'Pacifico', cursive;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        </br>\n");
      out.write("        <center><h4>Réserver votre table maintenant!</h4></center>\n");
      out.write("\n");
      out.write("        <section class=\"webdesigntuts-workshop\">\n");
      out.write("\n");
      out.write("            <form action=\"\" method=\"\">\t\t    \n");
      out.write("                <input type=\"search\" placeholder=\"nombre de personnes\" class=\"form-control\"><input type=\"search\" placeholder=\"Restaurant\" class=\"form-control\"> \t\t    \t\n");
      out.write("                <input type=\"search\" placeholder=\"Date\" class=\"form-control\"> <input type=\"search\" placeholder=\"Heure\" class=\"form-control\">\n");
      out.write("                <button>Rechercher</button>\n");
      out.write("            </form>\n");
      out.write("        </section>\n");
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
