package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cart_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Cart Page</title>\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" integrity=\"sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm\" crossorigin=\"anonymous\">\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"table-responsive\">\n");
      out.write("            <table class=\"table\">\n");
      out.write("                <thead>\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"col\" class=\"border-0 bg-light\">\n");
      out.write("                            <div class=\"p-2 px-3 text-uppercase\">Sản Phẩm</div>\n");
      out.write("                        </th>\n");
      out.write("                        <th scope=\"col\" class=\"border-0 bg-light\">\n");
      out.write("                            <div class=\"py-2 text-uppercase\">Đơn Giá</div>\n");
      out.write("                        </th>\n");
      out.write("                        <th scope=\"col\" class=\"border-0 bg-light\">\n");
      out.write("                            <div class=\"py-2 text-uppercase\">Số Lượng</div>\n");
      out.write("                        </th>\n");
      out.write("                        <th scope=\"col\" class=\"border-0 bg-light\">\n");
      out.write("                            <div class=\"py-2 text-uppercase\">Xóa</div>\n");
      out.write("                        </th>\n");
      out.write("                    </tr>\n");
      out.write("                </thead>\n");
      out.write("                <tbody>\n");
      out.write("                <c:forEach items=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${sessionScope.CART.getCart()}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" var=\"o\">\n");
      out.write("                    <tr>\n");
      out.write("                        <th scope=\"row\">\n");
      out.write("                            <div class=\"p-2\">\n");
      out.write("                                <img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.image}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\" alt=\"\" width=\"70\" class=\"img-fluid rounded shadow-sm\">\n");
      out.write("                                <div class=\"ml-3 d-inline-block align-middle\">\n");
      out.write("                                    <h5 class=\"mb-0\"> <a href=\"#\" class=\"text-dark d-inline-block\">");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.name}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</a></h5><span class=\"text-muted font-weight-normal font-italic\"></span>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </th>\n");
      out.write("                        <td class=\"align-middle\"><strong>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.price}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong></td>\n");
      out.write("                        <td class=\"align-middle\">\n");
      out.write("                            <a href=\"#\"><button class=\"btnSub\">-</button></a> \n");
      out.write("                            <strong>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${o.amount}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</strong>\n");
      out.write("                            <a href=\"#\"><button class=\"btnAdd\">+</button></a>\n");
      out.write("                        </td>\n");
      out.write("                        <td class=\"align-middle\"><a href=\"RemoveCart\" class=\"text-dark\">\n");
      out.write("                                <button type=\"submit\" class=\"btn btn-danger\">Delete</button>\n");
      out.write("                            </a>\n");
      out.write("                        </td>\n");
      out.write("                    </tr> \n");
      out.write("                </c:forEach>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <a href=\"LoadController\">Back to User View</a>\n");
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
