<%-- 
    Document   : homer
    Created on : Jun 18, 2012, 12:02:16 PM
    Author     : aditya
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <%! String u;%>
        <title>JSP Page</title>
    </head>
    <% u=(String)request.getAttribute("n1"); %>
    <body text="maroon">

            <form  action=""  method="post" >
    <table width="100%">


        <tr><td><jsp:include page="header2.jsp"></jsp:include></td></tr>


        <tr><td  height="350"><center>
                    <font color="red" size="4">
                        <h1> Welcome User</h1></font>
                </center></td>
  </tr>

  <tr><td><jsp:include page="footer.jsp"></jsp:include></td></tr>
  </table>
            </form>
    </body>
</html>
