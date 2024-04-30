<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="delete from book where bookid="+id;

if(DB.executeUpdate(s)){
        response.sendRedirect("index.jsp");
    }
       else {
        response.sendRedirect("bookview.jsp");
       }
%>
