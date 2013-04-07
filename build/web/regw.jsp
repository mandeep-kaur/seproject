<%-- 
    Document   : regw
    Created on : Jun 15, 2012, 10:39:34 AM
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
        <%
        response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
        response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
        response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
        response.setHeader("Pragma", "no-cache");
     %>
     <%

        HttpSession session1= session;
        String usern=(String)session1.getAttribute("name");
        String pass=(String)session1.getAttribute("pass");
        if(usern==null)
              {
                response.sendRedirect("index.jsp");
              }

      else
      {%>
        <font color="red" size="4"><center>
                    <b>You are successfully registered...<br>
                    <br> You will be able to see the result soon</b><br>
                <a href="index.jsp">back</a>
            </center></font>
      <%
      }
        %>
    </body>
</html>
