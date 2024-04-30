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
        String uploadfile = config.getServletContext().getRealPath("/") + "Uploads/";
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


                    File savedFile = new File(uploadfile + itemName);
                    item.write(savedFile);

                    System.out.println(itemName);
                    ResultSet rs = DB.executeQuery("select max(ebid) as ebid from ebook");
                    rs.next();
               
                    if (DB.executeUpdate("update ebook set fpath='" +rs.getString("ebid")+ itemName + "' where ebid='" + rs.getString("ebid") + "'")) {
                        response.sendRedirect("ebook.jsp");
                    }
                    //out.println("<tr><td><b>Your file has been saved at the loaction:</b></td></tr><tr><td><b>"+config.getServletContext().getRealPath("/")+"uploadedFiles"+"\\"+itemName+"</td></tr>");
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }

    }
%>