<%@page import="DB.DB"%>
<%
    String id= request.getParameter("pubid");
    String name= request.getParameter("pubname");
    String addr= request.getParameter("address");
    String phno= request.getParameter("phno");
    String mail= request.getParameter("mail");
    String s= "insert into publisher values(null,'"+name+"','"+addr+"','"+phno+"','"+mail+"')";
    if(DB.executeUpdate(s)){
        response.sendRedirect("adminhome.jsp");
    }
       else {
        response.sendRedirect("publisher.jsp");
       }
%>
