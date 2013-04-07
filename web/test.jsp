<%-- 
    Document   : test
    Created on : Jun 14, 2012, 12:04:35 PM
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
        <form action="fourth.do">
            <center>
            <font color="red" size="5"><b>Answer the following question for security?</b></font>
            <br><br>
            <input type="text" name="s1" value="<%= u%>"/>
            <br>
      <input type="text" name="s2" /><br>

      <input type="submit" name="Submit" value="Submit" />
            </center>
        </form>
    </body>
</html>
