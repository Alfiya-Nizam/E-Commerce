<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%
    String id= request.getParameter("sid");
    String name=request.getParameter("sname");
    String addr= request.getParameter("addr");
    String phno= request.getParameter("phno");
    String mail= request.getParameter("mail");
    String licno= request.getParameter("licno");
      String un = request.getParameter("uname");
    String up = request.getParameter("pass");
    String s= "insert into shop values(null,'"+name+"','"+addr+"',"+phno+",'"+mail+"','"+licno+"')";
    if(DB.executeUpdate(s)){
       ResultSet rs = DB.executeQuery("select max(shopid) as id from shop");
        rs.next();
        String uid = rs.getString("id");
        String ss = "insert into login values(" + uid + ",'" + un + "','" + up + "','shop')";
        if (DB.executeUpdate(ss)) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("shopregister.jsp");
        }
    }
       else {
        response.sendRedirect("shopregister.jsp");
       }
%>
