<%@page import="DB.DB"%>
<%

    String name=request.getParameter("bname");
    String cat= request.getParameter("category");
    String scat= request.getParameter("subcategory");
    String lan= request.getParameter("lang");
    String athr= request.getParameter("author");
    String pub= request.getParameter("publisher");
    String isb= request.getParameter("isbno");
    String price= request.getParameter("price");
    String stk= request.getParameter("stock");
    String desc= request.getParameter("desc");
    String shopid=session.getAttribute("uid").toString();
    String s= "insert into book values(null,'"+name+"','"+cat+"','"+scat+"','"+lan+"','"+athr+"',"+pub+","+isb+","+price+","+stk+",'"+desc+"',"+shopid+",'Nil')";
    if(DB.executeUpdate(s)){
        response.sendRedirect("photo.jsp");
    }
       else {
        response.sendRedirect("bookdetail.jsp");
       }
%>
