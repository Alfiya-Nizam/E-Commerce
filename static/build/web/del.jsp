<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");

String s="update orders set status='Delivered' where oid="+id;
if(DB.executeUpdate(s)){
    out.print("<script>alert('Updated');window.location='vieworders.jsp';</script>");
  
}
else{
    out.print("<script>alert('Error!!!');window.location='vieworders.jsp';</script>");
}



%>