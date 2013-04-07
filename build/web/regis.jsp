<%-- 
    Document   : regis
    Created on : Jun 17, 2012, 11:05:30 PM
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
        <center> <a href="index.jsp">back to login</a> </center>
         <% System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs=DriverManager.getConnection("jdbc:mysql://localhost/wonder","root","");
        Statement sm=cs.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
           ResultSet r=(ResultSet) request.getAttribute("n1");
           String s=(String) request.getAttribute("n2");
           if(s.equals("o"))
               {
               %>
              
                <table border="1">
            <tr> <th> Organisation's name</th><th>Category</th><th>Stypend/Paid</th><th>Salary/Fee</th><th>Skill</th><th>City</th><th>State</th><th>Experience</th><th>Contact</th><th>E-mail</th></tr>


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
            <%
           if(s.equals("n"))
               {
              %>
                        <table border="1">
            <tr><th>Name</th><th>E-mail</th><th>Interest</th><th>City</th><th>State</th><th>Skill</th><th>Contact no.</th><th>Stream</th></tr>

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
        </table>
             <%
           if(s.equals("s"))
               {
               %>
                <table border="1">
            <tr><th>Name</th><th>E-mail</th><th>Birthday</th><th>City</th><th>State</th><th>Password</th><th>Security question</th><th>Answer</th><th>Type</th></tr>

               <%
                while(r.next())
               {
         %>
         <tr><td><%= r.getString(1)%></td><td><%= r.getString(2)%></td><td><%= r.getString(3)%></td><td><%= r.getString(4)%></td><td><%= r.getString(5)%></td><td><%= r.getString(6)%></td><td><%= r.getString(7)%></td><td><%= r.getString(8)%></td><td><%= r.getString(9)%></td>
         </tr>
         <%
              }
} %>
 </table>
<%
}
        %>
    </body>
</html>
