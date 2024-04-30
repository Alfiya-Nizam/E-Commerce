<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="delete from subcategory where subid="+id;

if(DB.executeUpdate(s)){
        response.sendRedirect("subcategory.jsp");
    }
       else {
        response.sendRedirect("subcategoryview.jsp");
       }
%>
