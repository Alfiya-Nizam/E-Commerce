<%@page import="DB.DB"%>
<%@page import="java.sql.ResultSet"%>
<%
    String uname = request.getParameter("t1");
    String upass = request.getParameter("t2");

    ResultSet rs = DB.executeQuery("select * from login where uname='" + uname + "' and upass='" + upass + "'");
    if (rs.next()) {
        if (rs.getString("uname").equals(uname) && rs.getString("upass").equals(upass)) {
            if (rs.getString("utype").equals("admin")) {
                session.setAttribute("uid", rs.getString("uid"));
                session.setAttribute("uname", rs.getString("uname"));
                response.sendRedirect("adminhome.jsp");
            } else if (rs.getString("utype").equals("user")) {
                session.setAttribute("uid", rs.getString("uid"));
                session.setAttribute("uname", rs.getString("uname"));
                response.sendRedirect("userhome.jsp");
            }else if (rs.getString("utype").equals("shop")) {
                session.setAttribute("uid", rs.getString("uid"));
                session.setAttribute("uname", rs.getString("uname"));
                response.sendRedirect("shophome.jsp");
            }  else {
                response.sendRedirect("index.jsp");
            }
        } else {
            response.sendRedirect("index.jsp");
        }
    } else {
        response.sendRedirect("index.jsp");
    }



%>