<%-- 
    Document   : result2
    Created on : Jun 17, 2012, 4:43:40 PM
    Author     : Mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
              <% System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs=DriverManager.getConnection("jdbc:mysql://localhost/wonder","root","");
        Statement sm=cs.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
           ResultSet r=(ResultSet) request.getAttribute("n1");
           String s=(String) request.getAttribute("n2");
           if(s.equals("Student"))
               {
               %>
           <center>      <table border="1">

            <tr> <th> Organisation's name</th><th>Category</th><th>Stypend/Paid</th><th>Salary/Fee</th><th>Skill</th><th>City</th><th>State</th><th>Other Branches</th><th>Contact</th><th>E-mail</th></tr>

               <%
           while(r.next())
               {
         %>
         <tr><td><%= r.getString(1)%></td><td><%= r.getString(2)%></td><td><%= r.getString(3)%></td><td><%= r.getString(4)%></td><td><%= r.getString(5)%></td><td><%= r.getString(6)%></td><td><%= r.getString(7)%></td><td><%= r.getString(8)%></td><td><%= r.getString(9)%></td><td><%= r.getString(10)%></td>
         </tr>
         <%
               }
           }
           %>
        </table>
         <%--   <%
           if(s.equals("organiser"))
               {
              %>
                        <table border="1">
            <tr><th>name</th><th>e-mail</th><th>qualification</th><th>city</th><th>state</th><th>skill</th><th>contact no.</th><th>experience</th></tr>

                       <%
                while(r.next())
               {
         %>
         <tr><td><%= r.getString(1)%></td><td><%= r.getString(2)%></td><td><%= r.getString(3)%></td><td><%= r.getString(4)%></td><td><%= r.getString(5)%></td><td><%= r.getString(6)%></td><td><%= r.getString(7)%></td><td><%= r.getString(8)%></td>
         </tr>
         <%
              }
}
           %> 
        </table> --%>
             <%
           if(s.equals("Admin"))
               {
               %>
                <table border="1">
            <tr><th>name</th><th>e-mail</th><th>birthday</th><th>city</th><th>state</th><th>passward</th><th>security question</th><th>answer</th><th>type</th></tr>

               <%
                while(r.next())
               {
         %>
         <tr><td><%= r.getString(1)%></td><td><%= r.getString(2)%></td><td><%= r.getString(3)%></td><td><%= r.getString(4)%></td><td><%= r.getString(5)%></td><td><%= r.getString(6)%></td><td><%= r.getString(7)%></td><td><%= r.getString(8)%></td><td><%= r.getString(9)%></td>
         </tr>
         <%
              }
} %>

 </table></center>
    </body>
</html>
