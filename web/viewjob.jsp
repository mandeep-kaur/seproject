<%-- 
    Document   : viewjob
    Created on : Jun 16, 2012, 9:27:48 AM
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

      else
      {

        int flag=0;
        String tt="";
        Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=c.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet r=st.executeQuery("select * from signup");

       System.out.println("error");
           while(r.next())
           {
               System.out.println("ddddddddddddddddd");
               if((r.getString(1).equals(usern))&&(r.getString(6).equals(pass)))
                   {
                       System.out.println("aaaaaaaaaaaaaaa");
                        flag=1;
                        tt=r.getString(9);
                        break;
                    }

           }
           
       if(flag==1)
       {
            if(tt.equals("Student"))
           {
                ResultSet t=st.executeQuery("select * from organisereg o where o.skills=(select interest from normalreg where username='"+usern+"')");
                 %>

              
                 
                 <table border="2" style="text-align: center" width="100%" bgcolor="black">

            <tr> <th> <font size="4">Organisation's name</font></th><th><font size="4">Category</font></th><th><font size="4">Stypend/Paid</font></th><th><font size="4">Salary/Fee</font></th><th><font size="4">Skill</font></th><th><font size="4">City</font></th><th><font size="4">State</font></th><th><font size="4">Other Branches</font></th><th><font size="4">Contact</font></th><th><font size="4">E-mail</font></th></tr>

               <%
           while(t.next())
               {
         %>
         <tr><td><%= t.getString(1)%></td><td><%= t.getString(2)%></td><td><%= t.getString(3)%></td><td><%= t.getString(4)%></td><td><%= t.getString(5)%></td><td><%= t.getString(6)%></td><td><%= t.getString(7)%></td><td><%= t.getString(8)%></td><td><%= t.getString(9)%></td><td><%= t.getString(10)%></td>
         </tr>
         <%
               }
           }
           %>
        </table>
        <%
           
          
           if(tt.equals("Admin"))
           {
               ResultSet t=st.executeQuery("select * from signup");
              %>
              <table border="2" style="text-align: center" width="100%">
            <tr><th>name</th><th>e-mail</th><th>birthday</th><th>city</th><th>state</th><th>password</th><th>security question</th><th>answer</th><th>type</th></tr>

               <%
                while(t.next())
               {
         %>
         <tr><td><%= t.getString(1)%></td><td><%= t.getString(2)%></td><td><%= t.getString(3)%></td><td><%= t.getString(4)%></td><td><%= t.getString(5)%></td><td><%= t.getString(6)%></td><td><%= t.getString(7)%></td><td><%= t.getString(8)%></td><td><%= t.getString(9)%></td>
         </tr>
         <%
              }
} %>

 </table>
            

                 <%
           }

        else
            {
            %>

            <h2> You Are Not elligible</h2>

           

            <%}
       }
      %>


      </div>
            <div>
               <jsp:include page="footer.jsp"></jsp:include>
            </div>

               <%--
        <form action="two.do">
            <table width="100%">
  <tr>
            <td ><jsp:include page="header2.jsp"></jsp:include></td>
        </tr>
        <tr>
            <td height="93"></td>
        </tr>

      <tr><td><center>
                  <font color="red" size="5">  <b>You Want To View Jobs Available</b>
                  </font>

                      <br><br> Enter You user name here:- <br> <input type="text" name="g1"/>
                <br> Enter your password here:- <br> <input type="text" name="g2"/>
            <br>
            <br>
             <input type="submit" name="Submit" value="Submit" /> </center>
              <br><br>
          </td>
    </tr>
         <tr>
             <td height="63"></td>
        </tr>
    <tr><td><jsp:include page="footer.jsp"></jsp:include></td></tr>
</table>
        </form>--%>
        
            
    </body>
</html>
