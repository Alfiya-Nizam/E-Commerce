<%@page import="DB.DB"%>
<%
    String lang= request.getParameter("lang");
    
    String s= "insert into language values('"+lang+"')";
    if(DB.executeUpdate(s)){
        response.sendRedirect("language.jsp");
    }
       else {
        response.sendRedirect("language.jsp");
       }
%>
