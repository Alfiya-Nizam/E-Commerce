<%@page import="DB.DB"%>
<%
String id=request.getParameter("id");
String sid=request.getParameter("sid");
String uid=session.getAttribute("uid").toString();
String s="insert into cart values(null,'"+id+"',"+uid+","+sid+")";
if(DB.executeUpdate(s)){
    out.print("<script>alert('added');window.location='search.jsp';</script>");
  
}
else{
      out.print("<script>alert('try again');window.location='search.jsp';</script>");
}



%>