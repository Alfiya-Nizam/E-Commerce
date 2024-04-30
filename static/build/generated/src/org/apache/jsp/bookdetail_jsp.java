package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import DB.DB;
import java.sql.ResultSet;

public final class bookdetail_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <form action=\"bookaction.jsp\"><table>\n");
      out.write("                <tr><td>BOOK ID:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"bookid\"/></td></tr>\n");
      out.write("                <tr><td>BOOK NAME :</td>\n");
      out.write("                    <td><input type=\"text\" name=\"bname\"/></td></tr>\n");
      out.write("                <tr><td>CATEGORY :</td>\n");
      out.write("                    <td><select name=\"category\">\n");
      out.write("                             ");

                    ResultSet rs=DB.executeQuery("select * from bookcategory");
                    while(rs.next())
                                               {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs.getString("catid"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("catname"));
      out.write("</option>\n");
      out.write("                ");

                               }
                    
      out.write("\n");
      out.write("                        </select></td></tr>\n");
      out.write("                <tr><td>SUB-CATEGORY :</td>\n");
      out.write("                    <td><select name=\"subcategory\">\n");
      out.write("                             ");

                    ResultSet rs1=DB.executeQuery("select * from subcategory");
                    while(rs1.next())
                                               {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs1.getString("subid"));
      out.write('"');
      out.write('>');
      out.print(rs1.getString("subname"));
      out.write("</option>\n");
      out.write("                ");

                               }
                    
      out.write("\n");
      out.write("                        </select></td></tr>\n");
      out.write("                <tr><td>LANGUAGE :</td>\n");
      out.write("                    <td><select name=\"lang\">\n");
      out.write("                            ");

                            ResultSet rs2=DB.executeQuery("select * from language");
                    while(rs2.next())
                                               {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs2.getString("lang"));
      out.write('"');
      out.write('>');
      out.print(rs2.getString("lang"));
      out.write("</option>\n");
      out.write("                ");

                               }
                            
      out.write("\n");
      out.write("                    </td></tr>\n");
      out.write("                    <tr><td>AUTHOR :</td>\n");
      out.write("                        <td><input type=\"text\" name=\"author\"/></td></tr>\n");
      out.write("                    <tr><td>PUBLISHER :</td>\n");
      out.write("                        <td>\n");
      out.write("                          <select name=\"publisher\">\n");
      out.write("                            ");

                            ResultSet rs3=DB.executeQuery("select * from publisher");
                    while(rs3.next())
                                               {
                        
      out.write("\n");
      out.write("                        <option value=\"");
      out.print(rs3.getString("pubid"));
      out.write('"');
      out.write('>');
      out.print(rs3.getString("pubname"));
      out.write("</option>\n");
      out.write("                ");

                               }
                            
      out.write("  \n");
      out.write("                        </td></tr>\n");
      out.write("                          <tr><td>ISB NO. :</td>\n");
      out.write("                              <td><input type=\"text\" name=\"isbno\"/></td></tr>\n");
      out.write("                          <tr><td>PRICE :</td>\n");
      out.write("                              <td><input type=\"text\" name=\"price\"/></td></tr>\n");
      out.write("                          <tr><td>STOCK AVAILABLE :</td>\n");
      out.write("                              <td><input type=\"text\" name=\"stock\"/></td></tr>\n");
      out.write("                          <tr><td>DESCRIPTION </td>\n");
      out.write("                              <td><textarea name=\"desc\" cols=\"25\" rows=\"5\"></textarea></td></tr>\n");
      out.write("                          <tr><td><input type=\"submit\" value=\"ADD\"/></td>\n");
      out.write("                              </tr>\n");
      out.write("            </table></form>\n");
      out.write("       \n");
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
