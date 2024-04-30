<%-- 
    Document   : publisherview
    Created on : 5 Feb, 2019, 10:56:04 PM
    Author     : User
--%>

<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1">
            <tr>
               
                <th>PUBLISHER NAME</th>
                <th>ADDRESS</th>
                <th>PHONE NO</th>
                <th>MAIL-ID</th>
            </tr>
            <%
            ResultSet rs=DB.executeQuery("select * from publisher");
            while(rs.next())
                               {
                %>
                <tr>
                    <td><%=rs.getString("pubname")%> </td>
                    <td><%=rs.getString("address")%> </td>
                    <td><%=rs.getString("phno")%> </td>
                    <td><%=rs.getString("mail")%> </td>
                    <td>
                        <a href="delpublisher.jsp?id=<%=rs.getString("pubid")%>">DELETE</a>
                    </td>
                 </tr>
                <%
            }
            %>
        </table>
    </body>
</html>
