<%-- 
    Document   : fail
    Created on : Jun 13, 2012, 1:21:56 PM
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
         <div>
               <jsp:include page="header.jsp"></jsp:include>
            </div>
            <div>
               <jsp:include page="homew.jsp"></jsp:include>
            </div>

    <div>


        <center>
            <h1> username or password or usertype are not matched!!!</h1></center>
    </div>
             <div>
               <jsp:include page="footer.jsp"></jsp:include>
            </div>

    </body>
</html>
