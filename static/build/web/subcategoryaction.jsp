<%@page import="DB.DB"%>
<%
   
    String catid=request.getParameter("cat");
    String name= request.getParameter("subname");
    
    String s= "insert into subcategory values(null,'"+catid+"','"+name+"')";
    if(DB.executeUpdate(s)){
        response.sendRedirect("subcategory.jsp");
    }
       else {
        response.sendRedirect("subcategory.jsp");
       }
%>
