<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<%

    String name = request.getParameter("uname");
    String dob = request.getParameter("dob");
    String addr = request.getParameter("addr");
    String phno = request.getParameter("phno");
    String mail = request.getParameter("mail");
    String un = request.getParameter("un");
    String up = request.getParameter("pass");

    String s = "insert into user values(null,'" + name + "','" + dob + "','" + addr + "'," + phno + ",'" + mail + "')";
    if (DB.executeUpdate(s)) {
        ResultSet rs = DB.executeQuery("select max(userid) as id from user");
        rs.next();
        String uid = rs.getString("id");
        String ss = "insert into login values(" + uid + ",'" + un + "','" + up + "','user')";
        if (DB.executeUpdate(ss)) {
            response.sendRedirect("index.jsp");
        } else {
            response.sendRedirect("index.jsp");
        }
    } else {
        response.sendRedirect("userregister.jsp");
    }
%>
