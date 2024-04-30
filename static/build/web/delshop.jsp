<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="delete from shop where shopid="+id;

if(DB.executeUpdate(s)){
        response.sendRedirect("shopview.jsp");
    }
       else {
        response.sendRedirect("shopview.jsp");
       }
%>

