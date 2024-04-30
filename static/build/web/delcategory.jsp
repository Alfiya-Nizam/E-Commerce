<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="delete from bookcategory where catid="+id;

if(DB.executeUpdate(s)){
        response.sendRedirect("bookcategory.jsp");
    }
       else {
        response.sendRedirect("categoryview.jsp");
       }
%>
