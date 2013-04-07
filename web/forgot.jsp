<%-- 
    Document   : forgot
    Created on : Jun 13, 2012, 1:04:46 PM
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
               <jsp:include page="header2.jsp"></jsp:include>
            </div>
            <div>
               <jsp:include page="login.jsp"></jsp:include>
            </div>

    <div>

       <form id="form1" name="form1" method="post" action="third.do">
           <center>
<table width="100%">

<tr ><td height="350"><center>
            <b><u> <font size="5" color="red">Forgot Password  </font></u></b><br><br>
  Email id: <input type="text" name="e1"/><br><br>
  <input type="submit" value="  submit  " /><br><br>
        </center></td></tr>
</table>
       </center>

</form>
 </div>
            <div>
               <jsp:include page="footer.jsp"></jsp:include>
            </div>
    </body>
</html>
