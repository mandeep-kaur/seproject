<%-- 
    Document   : changepass
    Created on : Jun 15, 2012, 10:54:33 AM
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
               else{


%>
        <form action="sixth.do">
           
       <center>
    <font color="red" size="5"><b>
            You Want To Change Your Password????</b></font><br><br><br>
    Enter your E-mail ID here ...... <input type="text" name="k3" /><br><br>

    Enter your old password here....<input type="text" name="k1" /><br><br>
    Enter your new password here...<input type="text" name="k2" /><br><br><br>

      <input type="submit" name="Submit2" value="Submit" />


    </center>
        

        </form>

<%
        }
        %>

     </div>
             <div>
               <jsp:include page="footer.jsp"></jsp:include>
            </div>
    </body>
</html>
