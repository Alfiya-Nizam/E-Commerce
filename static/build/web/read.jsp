<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<%

String s=request.getParameter("t0");
ResultSet rs=DB.executeQuery("select * from ebook where ebid="+s);
rs.next();
response.sendRedirect("Uploads/"+rs.getString("fpath"));

%>