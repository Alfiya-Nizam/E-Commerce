<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="delete from publisher where pubid="+id;

if(DB.executeUpdate(s)){
        response.sendRedirect("index.jsp");
    }
       else {
        response.sendRedirect("publisherview.jsp");
       }
%>
