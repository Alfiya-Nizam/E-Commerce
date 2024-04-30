<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="delete from language where lang='"+id+"'";

if(DB.executeUpdate(s)){
        response.sendRedirect("language.jsp");
    }
       else {
        response.sendRedirect("lanuageview.jsp");
       }
%>
