<%-- 
    Document   : result1
    Created on : Jun 16, 2012, 2:15:15 PM
    Author     : Mandeep
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
    <body>
         <% u=(String)request.getAttribute("n1");%>
         <form action="three.do">
       <table width="100%" border="0" cellpadding="0" cellspacing="0">
          
  <tr>
    <td width="472" height="49">&nbsp;</td>
    <td width="69">&nbsp;</td>
    <td width="76">&nbsp;</td>
    <td width="36">&nbsp;</td>
    <td width="472">&nbsp;</td>
  </tr>
  <tr>
    <td height="19">&nbsp;</td>
    <td colspan="3" valign="top"><font color="red">The type of user you are..... </font></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td height="10"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td colspan="3" valign="top"><label>
      <input type="text" name="w1" value=<%= u%>>
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="10"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td colspan="3" valign="top"><font color="red">Enter your user name again for security reasons </font></td>
    <td></td>
  </tr>
  <tr>
    <td height="10"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td colspan="3" valign="top"><label>
      <input type="text" name="w2" />
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="10"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="19"></td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="submit" name="Submit" value="Submit" />
    </label></td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
  <tr>
    <td height="69"></td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td></td>
  </tr>
</table>
         </form>
    </body>
</html>



