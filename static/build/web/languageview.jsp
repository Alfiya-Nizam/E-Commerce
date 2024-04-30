<%-- 
    Document   : languageview
    Created on : 5 Feb, 2019, 10:19:12 PM
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
        <h1>LANGUAGES</h1>
        <table border="1">
            <tr>
                <th>BOOK LANGUAGE</th>
            </tr>
            <%
            ResultSet rs=DB.executeQuery("select * from language");
            while(rs.next())
                               {
                %>
                <tr><td><%=rs.getString("lang")%> </td>
                    <td>
                        <a href="dellanguage.jsp?id=<%=rs.getString("lang")%>">DELETE</a>
                    </td>
                    
                    
                 </tr>
                <%
            }
            %>
        </table>
    </body>
</html>
