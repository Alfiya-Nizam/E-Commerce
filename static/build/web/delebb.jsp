<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="delete from ebook where ebid="+id;

if(DB.executeUpdate(s)){
        response.sendRedirect("ebook.jsp");
    }
       else {
        response.sendRedirect("bookview.jsp");
       }
%>
