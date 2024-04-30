<%@page import="DB.DB" %>
<%
    String ebt = request.getParameter("t1");
    String syn = request.getParameter("t2");


    String s = "insert into ebook values(null,'" + ebt + "','" + syn + "','Nil')";
    if (DB.executeUpdate(s)) {
        response.sendRedirect("upload.jsp");
    } else {
        response.sendRedirect("ebook.jsp");
    }








%>
