<%-- 
    Document   : ses
    Created on : Jun 18, 2012, 11:50:53 AM
    Author     : aditya
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
        <%
         try
        {
            HttpSession hs=request.getSession(false);
            hs.invalidate();
            RequestDispatcher rd=request.getRequestDispatcher("jasss.html");
            rd.forward(request, response);


        }
        finally
        {
            out.close();
        }
%>
    </body>
</html>
