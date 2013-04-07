<%-- 
    Document   : register
    Created on : Jun 17, 2012, 9:00:52 PM
    Author     : Mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" >
                function validateForm()
                {
                    var x=document.forms["form1"]["a1"].value;
                    if (x==null || x=="")
                    {
                        alert("Username must be filled out");
                        return false;
                    }
                    </script>
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
       // String tt="";
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
                        break;
                   }
           }
 if(flag==1)
       {
          if(r.getString(9).equals("Student"))
           {
                   %>
                   <form action="fifth.do">
                 <center>
    
                       <table width="40%" border="2" bgcolor="black">

        
            <tr>
                <td colspan="4">
                    <center> <font size="4">  Resistration for companies </font> </center>
                </td>
            </tr>
  <tr>
    <td width="15%" height="17"></td>
    <td width="5%"></td>
    <td width="5%"></td>
    <td width="15%"></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">StudentName</td>

    <td colspan="2" valign="top"><label>
      <input type="text" name="w1" />
    </label></td>

  </tr>
  <tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="17""></td>
    <td valign="top">E-mail</td>

    <td colspan="2" valign="top"><label>
      <input type="text" name="w2" />
    </label></td>

  </tr>
 <tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">Interest</td>

    <td colspan="2" valign="top"><label>
      <input type="text" name="w3" />
    </label></td>

  </tr>
 <tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">City</td>

    <td colspan="2" valign="top" >
      <select name="w7">
        <option value="sg">SriGananagar</option>
        <option value="nd">Noida</option>
        <option value="al">Alwar</option>
        <option value="kt">Kota</option>
        <option value="jp">Jaipur</option>
        <option value="si">Sikkar</option>
        <option value="md">Madras</option>
        <option value="sl">Silliguri</option>
        <option value="cl">Calcutta</option>
        <option value="mb">Mumbai</option>
        <option value="ab">Ahemdabad</option>
        <option value="ld">Ludhiana</option>
      </select>
   	</td>

  </tr>
<tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">State</td>

    <td colspan="2" valign="top">
      <select name="w8">
        <option value="d">Delhi</option>
        <option value="r">Rajasthan</option>
        <option value="g">Gujrat</option>
        <option value="up">Uttar pradesh</option>
        <option value="p">Punjab</option>
        <option value="a">Assam</option>
      </select>
    </td>

  </tr>
<tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">Skill</td>

    <td colspan="2" valign="top"><label>
      <input type="text" name="w4" />
    </label></td>

  </tr>
 <tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">Contact no. </td>

    <td colspan="2" valign="top"><label>
      <input type="text" name="w5" />
    </label></td>

  </tr>
  <tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">Stream </td>

    <td colspan="2" valign="top"><label>
      <input type="text" name="w6" />
    </label></td>

  </tr>
   <tr>
       <td height="5"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>
  <tr>
    <td height="7"></td>

    <td colspan="2" valign="top"><center>
      <input type="submit" name="Submit" value="Submit" />
        </center>
    </td>
    <td></td>
   </tr>
   <tr>
       <td height="15"></td>
       <td></td>
       <td></td>
       <td></td>
   </tr>

  
</table>
   </center>
        </form>

                   <%
                   }
           if(r.getString(9).equals("Admin"))
           {%>
            <form action="five.do">

        <table width="989" border="0" cellpadding="0" cellspacing="0">
  <!--DWLayoutTable-->
  <tr>
    <td width="230" height="28">&nbsp;</td>
    <td width="81">&nbsp;</td>
    <td width="31">&nbsp;</td>
    <td width="70">&nbsp;</td>
    <td width="43">&nbsp;</td>
    <td width="173">&nbsp;</td>
    <td width="361">&nbsp;</td>
  </tr>
  <tr>
    <td height="27">&nbsp;</td>
    <td colspan="5" valign="top">The work of administrator is to manage the job portal..... </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="13">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="22">&nbsp;</td>
    <td colspan="5" valign="top"> To see the table of all users type s in following space..... </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="13">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="22"></td>
    <td colspan="5" valign="top">To see the table of all student registrations type n in following space... </td>
    <td></td>
  </tr>
  <tr>
    <td height="13"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  
  <tr>
    <td height="22"></td>
    <td colspan="5" valign="top">To see all table of all Companies o in following space.... </td>
    <td></td>
  </tr>
  <tr>
    <td height="13"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="22"></td>
    <td>&nbsp;</td>
    <td colspan="3" valign="top"><label>
      <input type="text" name="m" />
    </label></td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="13"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>


  <tr>
    <td height="22"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="submit" name="Submit" value="Submit" />
    </label></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="13"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  To add any new company in the database click here <a href="Organisereg.jsp">
      ADD
  </a>
</table>
                </center>
    </form>


           <%
           }
                   }
       }
                   %>

     </div>
            <div>
               <jsp:include page="footer.jsp"></jsp:include>
            </div>
    </body>
</html>
