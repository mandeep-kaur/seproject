<%-- 
    Document   : logout
    Created on : Mar 16, 2013, 9:40:52 PM
    Author     : mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ADI</title>
    </head>
    <body>
        <script type="text/javascript">

          history.back(false);
          history.forward(false);
        </script>
        <%
        HttpSession session1=session;
        session1.setAttribute("name",null);
        session1.setAttribute("pass",null);
        // session1.removeAttribute("name");
        session1.invalidate();
        response.sendRedirect("index.jsp");

        %>

    </body>
</html>
