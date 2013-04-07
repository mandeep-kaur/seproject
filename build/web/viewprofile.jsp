<%-- 
    Document   : viewprofile
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
        Connection j=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=j.createStatement();
        System.out.println("qqqqqqqqqqqqqqq");
        ResultSet rs=st.executeQuery("select * from signup");
        while(rs.next())
        {
        if((rs.getString(1).equals(usern))&&(rs.getString(6).equals(pass)))
        {
        flag=1;
        break;
        }
        }
        if(flag==1)
        {
         
      %>

     
      <center>
          <font size="3"><form action="g.do">
                  <table bgcolor="black" width="40%" style="text-align: center">
                      <tr>
                          <td colspan="2"><font size="5"><center>Your Profile Detail is:- </center></font></td>
                      </tr>
                      <tr>
                          <td colspan="2" height="18"></td>
                      </tr>
                      <tr><td>
                          UserName  :- </td><td> <input type="text" name="e1"value=<%= rs.getString(1)%>><br><br>
                      </td></tr>
                      <tr><td>
                      E-mail id :-</td><td> <input type="text" name="e2"value=<%= rs.getString(2)%>><br><br>
                          </td>
                      </tr>
                      <tr><td>
                      Birth Date:-</td><td> <input type="text" name="e3"value=<%= rs.getString(3)%>><br><br>
                          </td> </tr>
                      <tr><td>
                      City      :-</td><td> <input type="text" name="e4"value=<%= rs.getString(4)%>><br><br>
                          </td> </tr>
                      <tr><td>
                          State     :-</td><td> <input type="text" name="e5"value=<%= rs.getString(5)%>><br><br>
                          </td> </tr>
                      <tr><td>
                      Password  :-</td><td> <input type="text" name="e6"value=<%= rs.getString(6)%>><br><br>
                          </td>
                      </tr>
                      
                  <tr><td colspan="2">
                       <input type="submit" name="Submit" value="Submit" />
                      </td></tr>
                  <tr><td colspan="2">
                      <input type="hidden" name="e7"value=<%= rs.getString(9)%>><br><br>

                    <input type="hidden" name="e8" value=<%= rs.getString(1)%>/>
                      </td></tr>
                  </table>
                        </form>
                    </font> </center>
      <%
         }
        else
        {
      %>
        <h1> You Don't Have Profile</h1>
     <%
        }
      }       
     %>

     </div>
            <div>
               <jsp:include page="footer.jsp"></jsp:include>
            </div>
    </body>
</html>
