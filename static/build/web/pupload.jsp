<%@page import="java.sql.ResultSet"%>
<%@page import="DB.DB"%>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.io.File" %>
<%@ page import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItem"%>
<%@ page import="org.apache.commons.fileupload.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);
    if (!isMultipart) {
    } else {
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);
        List items = null;
        try {
            items = upload.parseRequest(request);
        } catch (FileUploadException e) {
            e.printStackTrace();
        }
        String uploadfile = config.getServletContext().getRealPath("/") + "IUploads/";
        File uploaddir = new File(uploadfile);
        if (!uploaddir.exists()) {
            uploaddir.mkdir();
        }
        Iterator itr = items.iterator();
        while (itr.hasNext()) {
            FileItem item = (FileItem) itr.next();
            if (item.isFormField()) {
            } else {
                try {
                    String itemName = new File(item.getName()).getName();

                    ResultSet rs = DB.executeQuery("select max(bookid) as bid from book");
                    rs.next();
                    File savedFile = new File(uploadfile + rs.getString("bid") + itemName);
                    item.write(savedFile);

                    System.out.println(itemName);


                    if (DB.executeUpdate("update book set img='" + rs.getString("bid") + itemName + "' where bookid='" + rs.getString("bid") + "'")) {
                        response.sendRedirect("categoryview_1.jsp");
                    }
                    //out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

    }
%>