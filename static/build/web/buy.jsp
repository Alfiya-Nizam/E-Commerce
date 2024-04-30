<%@page import="java.sql.ResultSet"%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="DB.DB"%>
<%

    String uid = session.getAttribute("uid").toString();
    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date d = new Date();
    int tamt=0;
    ResultSet rs = DB.executeQuery("select * from book where bookid in (select bid from cart where uid=" + session.getAttribute("uid") + ")");
    while (rs.next()) {
        String pid = rs.getString("bookid");
        ResultSet r = DB.executeQuery("select cid from cart where uid=" + session.getAttribute("uid")+" and bid='"+pid+"'");
      r.next();
      String cid=r.getString("cid");
            String qty = request.getParameter("t1" + cid);
            System.out.println(pid);
            System.out.println(qty);
            int amt = Integer.parseInt(rs.getString("price"));
            int ta = amt * Integer.parseInt(qty);
            tamt+=ta;
            String s = "insert into orders values(null,'" + sdf.format(d) + "','" + pid + "'," + uid + "," + qty + "," + ta + ",'Pending')";
            DB.executeUpdate(s);
        
    }
    DB.executeUpdate("delete from cart where uid=" + session.getAttribute("uid"));
    out.print("<script>alert('Success');window.location='pay.jsp?id="+tamt+"';</script>");


%>