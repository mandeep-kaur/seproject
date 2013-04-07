<%-- 
    Document   : body
    Created on : Jun 14, 2012, 10:54:50 AM
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

        <center>
            <form action="first.do" method="post">
                      Username <input type="text" name= "t1" /><br><br>
                     Password <input type="text" name= "t2" /><br><br>
                    User Type
                    <select name="select">
        <option value="o">Organisation</option>
        <option value="a">Admin</option>
        <option value="p">Premium User</option>
        <option value="n">Normal User</option>
      </select><br><br>
      <input type="submit" value="  login  " name="t3" /><br><br>
                    <a href="forgot.jsp" >forgotpassword?</a>
                    <br>

                    <a href="signup.jsp">signup??</a>

            </form>
                      </center>
    </body>
</html>
