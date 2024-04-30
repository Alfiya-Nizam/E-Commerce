<%-- 
    Document   : categoryview
    Created on : 5 Feb, 2019, 7:24:02 PM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="11.jpg">

    <center>

        <h1>e- Book</h1>
        <br/>

        <div style="background-color: rgba(255,255,255,0.5); height: 50px;"><br/>
            |<a href="bookcategory.jsp">ADD CATEGORY</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            | <a href="subcategory.jsp">ADD SUB-CATEGORY</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            |<a href="language.jsp">ADD LANGUAGE</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            |<a href="categoryview.jsp">BOOK CATEGORIES</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            |<a href="subcategoryview.jsp">BOOK SUB-CATEGORY</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            |<a href="userview.jsp">USERS</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            |<a href="shopview.jsp">SHOPS</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            |<a href="bookview_1.jsp">BOOK DETAILS</a>|
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            |<a href="index.jsp">LOGOUT</a>|
        </div>
        <br/>
               <br/>
          <table border="1">
            <tr>
                <th>BOOK CATEGORY NAME</th>
            </tr>
            <%
            ResultSet rs=DB.executeQuery("select * from bookcategory");
            while(rs.next())
                               {
                %>
                <tr>
                    <td><%=rs.getString("catname")%> </td>
                    <td>
                        <a href="delcategory.jsp?id=<%=rs.getString("catid")%>">DELETE</a>
                    </td></tr>
                <%
            }
            %>
        </table>
    </center>
       
    </body>
</html>
