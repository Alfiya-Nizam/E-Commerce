package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DB.DB;
import java.sql.ResultSet;

public final class bookview_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>BOOK DETAILS</h1>\n");
      out.write("        <table border=\"1\">\n");
      out.write("            <tr>\n");
      out.write("                <th>BOOK NAME</th>\n");
      out.write("                <th>CATEGORY NAME</th>\n");
      out.write("                <th>SUB-CATEGORY NAME</th>\n");
      out.write("                <th>LANGUAGE</th>\n");
      out.write("                <th>AUTHOR</th>\n");
      out.write("                <th>PUBLISHER NAME</th>\n");
      out.write("                <th>ISB NO.</th>\n");
      out.write("                <th>PRICE</th>\n");
      out.write("                <th>STOCK</th>\n");
      out.write("                <th>DESCRIPTION</th>\n");
      out.write("            </tr>\n");
      out.write("              ");

            ResultSet rs=DB.executeQuery("select * from book");
            while(rs.next())
                               {
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(rs.getString("bname"));
      out.write(" </td>\n");
      out.write("                    <td>");
      out.print(rs.getString("catid"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("subid"));
      out.write(" </td>\n");
      out.write("                    <td>");
      out.print(rs.getString("lang"));
      out.write(" </td>\n");
      out.write("                    <td>");
      out.print(rs.getString("author"));
      out.write(" </td>\n");
      out.write("                    <td>");
      out.print(rs.getString("pubid") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("isbno") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("price") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("stock") );
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("desc") );
      out.write("</td>\n");
      out.write("                    <td>\n");
      out.write("                        <a href=\"delbook.jsp?id=");
      out.print(rs.getString("bookid"));
      out.write("\">DELETE</a>\n");
      out.write("                    </td>             \n");
      out.write("                 </tr>\n");
      out.write("                ");

            }
            
      out.write("\n");
      out.write("        </table>\n");
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
