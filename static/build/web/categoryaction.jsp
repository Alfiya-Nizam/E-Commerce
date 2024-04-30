<%@page import="DB.DB" %>
<%
   // String id= request.getParameter("catid");
    String name= request.getParameter("catname");
    
    String s= "insert into bookcategory values(null,'"+name+"')";
    if(DB.executeUpdate(s)){
        response.sendRedirect("bookcategory.jsp");
    }
       else {
        response.sendRedirect("bookcategory.jsp");
       }








%>
