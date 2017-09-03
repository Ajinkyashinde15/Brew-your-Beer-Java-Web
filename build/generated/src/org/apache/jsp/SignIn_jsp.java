package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class SignIn_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("<!DOCTYPE HTML>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("<title>Brew your Beer</title>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, maximum-scale=1\">\r\n");
      out.write("<link href=\"css/style.css\" rel=\"stylesheet\" type=\"text/css\" media=\"all\">\r\n");
      out.write("</head>\r\n");
      out.write(" <body>\r\n");
      out.write("\t    <div class=\"header_top\">\r\n");
      out.write("\t\t \t  <div class=\"wrap\">\t \t\t\t\r\n");
      out.write("\t\t\t\t<div class=\"logo\">\r\n");
      out.write("\t\t\t\t\t<a href=\"index.html\"><img src=\"images/logo.png\" alt=\"\"></a>\r\n");
      out.write("\t\t\t\t</div>\t\r\n");
      out.write("\t\t\t\t<div class=\"nav\">\t\t\t\r\n");
      out.write("\t\t\t\t  <ul><li><a href=\"index.html\">Home</a></li>\r\n");
      out.write("\t\t\t    \t<li><a href=\"about.html\">About</a></li>\r\n");
      out.write("\t\t\t    <li><a href=\"CraftBeer.jsp\">Craft Beer</a></li>  \r\n");
      out.write("\t\t\t    \t<li><a href=\"contact.jsp\">Contact</a></li>\r\n");
      out.write("\t\t\t\t\t<li><a href=\"SignIn.jsp\" target=\"_blank\">Sign In </a></li>\r\n");
      out.write("\t\t         <li><a  href=\"SignUp.jsp\" target=\"_blank\">Sign Up</a></li>\r\n");
      out.write("\t\t\t    \t\t<div class=\"clear\"></div>\r\n");
      out.write("\t\t\t       </ul>\t\r\n");
      out.write("\t\t\t    </div>\t \r\n");
      out.write(" \t\t\t\t<div class=\"clear\"></div>\t\t   \r\n");
      out.write(" \t   \t\t</div>\r\n");
      out.write(" \t     </div>\r\n");
      out.write("\t       <div class=\"wrap\">\r\n");
      out.write("\t        <div class=\"main\">\t\r\n");
      out.write("\t        \t<div class=\"contact\">        \t\r\n");
      out.write("\t        \t\t<div class=\"section group\"><div class=\"col_1_of_3 contact_1_of_3\"></div>\r\n");
      out.write("\t\t\t\t<div class=\"col_1_of_3 contact_1_of_3\">\r\n");
      out.write("\t\t\t\t\t<div class=\"contact-form\">\r\n");
      out.write("\t\t\t\t  \t<h3>Sign In</h3>\r\n");
      out.write("                                        <form method=\"post\" action=\"login\">\r\n");
      out.write("\t\t\t\t\t    \t<div>\r\n");
      out.write("                                                    <span><input name=\"un\" type=\"text\" required=\"\" class=\"textbox\" value=\"UserName\" onFocus=\"this.value = '';\" onBlur=\"if (this.value == '') {this.value = 'Username';}\"></span>\r\n");
      out.write("\t\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t\t    <div>\r\n");
      out.write("                                                        <span><input name=\"pass\" required=\"\" type=\"password\" class=\"textbox\" value=\"Password\" onFocus=\"this.value = '';\" onBlur=\"if (this.value == '') {this.value = 'Password';}\"></span>\r\n");
      out.write("\t\t\t\t\t\t    </div>\r\n");
      out.write("\t\t\t\t\t\t    \r\n");
      out.write("\t\t\t\t\t\t   <div>\r\n");
      out.write("\t\t\t\t\t\t   \t\t<span><input type=\"submit\" value=\"Login....\"></span>\r\n");
      out.write("\t\t\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t\t    </form>\r\n");
      out.write("\t\t\t\t  </div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t \r\n");
      out.write("\t       </div>       \r\n");
      out.write("\t      </div>\r\n");
      out.write("\t      <div class=\"copy_right\">\r\n");
      out.write("\t        \t<div class=\"wrap\">\r\n");
      out.write("\t\t\t\t  <p>Company Name Â© All rights Reseverd | Design by  </a></p>\r\n");
      out.write("\t\t       </div>\r\n");
      out.write("\t\t   </div>\r\n");
      out.write("      </body>\r\n");
      out.write(" </html>\r\n");
      out.write("\r\n");
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
