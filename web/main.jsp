<%-- 
    Document   : login
    Created on : Jun 13, 2012, 11:28:47 AM
    Author     : Mandeep
--%>
<%@taglib uri="/WEB-INF/struts-tiles.tld" prefix="t" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <table width="100%" height="500" >
              <tr>
                  <td height="100"><t:insert attribute="head"></t:insert>
                  </td>
              </tr>
              <tr>
                  <td height="350">  <t:insert attribute="body"></t:insert>
                  </td>
              </tr>
              <tr>
                  <td height="50"> <t:insert attribute="footer"></t:insert></td>
              </tr>

          </table>
    </body>
</html>
