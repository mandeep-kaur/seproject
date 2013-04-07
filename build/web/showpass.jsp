<%-- 
    Document   : showpass
    Created on : Jun 14, 2012, 1:04:49 PM
    Author     : Mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! String u;%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% u=(String)request.getAttribute("nu");%>
       <center>
           <font size="6" color="red"><b> Your password is:</b></font>
           <br>
           <input type="text" name="t1" value="<%= u%>" size="6">
            <br>
            <br>
            
            <a href="index.jsp">back to login page</a>
        </center>
    </body>
</html>
