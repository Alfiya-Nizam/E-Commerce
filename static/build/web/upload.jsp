<%-- 
    Document   : upload
    Created on : Mar 21, 2016, 4:18:03 AM
    Author     : digital
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="uploadfiles.jsp" enctype="multipart/form-data" method="post">
            <input type="file" id="file" name="file"/>
            <input type="submit" value="Upload"/>
        </form>
    </body>
</html>
