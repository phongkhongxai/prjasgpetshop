package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <style>\n");
      out.write("            .span {\n");
      out.write("                text-decoration: none;\n");
      out.write("                color:black;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .span a {\n");
      out.write("                color: cadetblue;\n");
      out.write("            }\n");
      out.write("            body {\n");
      out.write("                /*// background-image: url(\"https://img.freepik.com/free-vector/frame-with-dogs-vector-white-background_53876-127700.jpg?w=1060&t=st=1688888526~exp=1688889126~hmac=dff84883a8ab58fdaf8395704ddaa3f6d0ea9210485637d2a4cc615884a1729b\");*/\n");
      out.write("                background: url(\"https://img.freepik.com/free-vector/frame-with-dogs-vector-white-background_53876-127700.jpg?w=1060&t=st=1688888526~exp=1688889126~hmac=dff84883a8ab58fdaf8395704ddaa3f6d0ea9210485637d2a4cc615884a1729b\");\n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("            .login-box {\n");
      out.write("                position: absolute;\n");
      out.write("                top: 50%;\n");
      out.write("                left: 50%;\n");
      out.write("                width: 400px;\n");
      out.write("                padding: 40px;\n");
      out.write("                transform: translate(-50%, -50%);\n");
      out.write("                background: menu;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                box-shadow: 0 15px 25px rgba(0,0,0,.6);\n");
      out.write("                border-radius: 10px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box .user-box {\n");
      out.write("                position: relative;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box .user-box input {\n");
      out.write("                width: 100%;\n");
      out.write("                padding: 10px 0;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: burlywood;\n");
      out.write("                margin-bottom: 30px;\n");
      out.write("                border: none;\n");
      out.write("                border-bottom: 1px solid burlywood;\n");
      out.write("                outline: none;\n");
      out.write("                background: transparent;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box .user-box label {\n");
      out.write("                position: absolute;\n");
      out.write("                top: 0;\n");
      out.write("                left: 0;\n");
      out.write("                padding: 10px 0;\n");
      out.write("                font-size: 16px;\n");
      out.write("                color: burlywood;\n");
      out.write("                pointer-events: none;\n");
      out.write("                transition: .5s;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box .user-box input:focus ~ label,\n");
      out.write("            .login-box .user-box input:valid ~ label {\n");
      out.write("                top: -20px;\n");
      out.write("                left: 0;\n");
      out.write("                color: #bdb8b8;\n");
      out.write("                font-size: 12px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box form button {\n");
      out.write("                position: relative;\n");
      out.write("                display: inline-block;\n");
      out.write("                padding: 10px 20px;\n");
      out.write("                color: black;\n");
      out.write("                font-size: 16px;\n");
      out.write("                text-decoration: none;\n");
      out.write("                text-transform: uppercase;\n");
      out.write("                overflow: hidden;\n");
      out.write("                transition: .5s;\n");
      out.write("                margin-top: 40px;\n");
      out.write("                letter-spacing: 4px\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box button:hover {\n");
      out.write("                background: #ff9933;\n");
      out.write("                color: #fff;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                box-shadow: 0 0 5px #ff9933,\n");
      out.write("                    0 0 25px #ff9933,\n");
      out.write("                    0 0 50px #ff9933,\n");
      out.write("                    0 0 100px #ff9933;\n");
      out.write("            }\n");
      out.write("            .login-box a:hover {\n");
      out.write("                background: #ff9933;\n");
      out.write("                color: #fff;\n");
      out.write("                border-radius: 5px;\n");
      out.write("                box-shadow: 0 0 5px #ff9933,\n");
      out.write("                    0 0 25px #ff9933,\n");
      out.write("                    0 0 50px #ff9933,\n");
      out.write("                    0 0 100px #ff9933;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box a span {\n");
      out.write("                position: absolute;\n");
      out.write("                display: block;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            @keyframes btn-anim1 {\n");
      out.write("                0% {\n");
      out.write("                    left: -100%;\n");
      out.write("                }\n");
      out.write("\n");
      out.write("                50%,100% {\n");
      out.write("                    left: 100%;\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .login-box a span:nth-child(1) {\n");
      out.write("                bottom: 2px;\n");
      out.write("                left: -100%;\n");
      out.write("                width: 100%;\n");
      out.write("                height: 2px;\n");
      out.write("                background: linear-gradient(90deg, transparent, #03f40f);\n");
      out.write("                animation: btn-anim1 2s linear infinite;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("\n");
      out.write("             \n");
      out.write("\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"login-box\">\n");
      out.write("\n");
      out.write("            <form action=\"LoginController\" method=\"post\">\n");
      out.write("                <div class=\"user-box\">\n");
      out.write("                    <input type=\"text\" name=\"userid\" required=\"\">\n");
      out.write("                    <label>Username</label>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"user-box\">\n");
      out.write("                    <input type=\"password\" name=\"password\" required=\"\">\n");
      out.write("                    <label>Password</label>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <p  style=\"color: red;margin-top: 0\"><strong>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.loginError}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></p>\n");
      out.write("                <div style=\"text-align: center;\">\n");
      out.write("                    <button style=\"margin-top: 0;border: 0; \" type=\"submit\">LOGIN</button>\n");
      out.write("                    <span></span>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("            </form>\n");
      out.write("            <span class=\"span\"><div style=\"text-align: center; margin-top: 10px\">Don't have an account? <a href=\"create.jsp\">Sign up</a></div></span>\n");
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
