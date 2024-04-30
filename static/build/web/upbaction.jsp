<%@page import="DB.DB"%>
<%
    String id= request.getParameter("bookid");
   // String name=request.getParameter("bname");
  
    String stk= request.getParameter("stock");
  
   // String shopid=session.getAttribute("uid").toString();
    String s= "update book set stock="+stk+" where bookid='"+id+"'";
    if(DB.executeUpdate(s)){
        response.sendRedirect("bookview.jsp");
    }
       else {
        response.sendRedirect("bookview.jsp");
       }
%>
