<%-- 
    Document   : home
    Created on : Jun 13, 2012, 12:52:37 PM
    Author     : Mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table height="800" width="100%" border="1">
            <tr height="150" width="100%"><td colspan="2"> <jsp:include page="header.jsp"></jsp:include> </td></tr>
            <tr height="550" width="100%" ><td width="200" bgcolor="FFF8C6"><jsp:include page="menu.jsp"></jsp:include></td><td width="700"><jsp:include page="body.jsp"></jsp:include></td></tr>
            <tr height="100" width="100%"><td colspan="2"> <jsp:include page="footer.jsp"></jsp:include> </td></tr>
        </table>
    </body>
</html>
