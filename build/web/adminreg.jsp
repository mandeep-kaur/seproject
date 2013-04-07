<%-- 
    Document   : adminreg
    Created on : Jun 17, 2012, 9:18:05 PM
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
         <%
        response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server
            response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance
            response.setDateHeader("Expires", 0); //Causes the proxy cache to see the page as "stale"
            response.setHeader("Pragma", "no-cache");
        %>
        <%

        HttpSession session1= session;
        String usern=(String)session1.getAttribute("name");
		 if(usern==null)
                               {
                response.sendRedirect("index.jsp");
            }
               else{


%>
<%
                out.println("<font size='+3.5'><div align='left'>&nbsp;&nbsp;");
                out.print("Welcome" +" " + usern);
                out.print("</div></font>");
                                %>

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
  <%--<tr>
    <td height="22"></td>
    <td colspan="5" valign="top"> To see the table of all premium users type p in following space... </td>
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
  </tr>--%>
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
    </form>
  <%
  }
  %>
    </body>
</html>
