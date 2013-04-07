<%-- 
    Document   : normalreg
    Created on : Jun 15, 2012, 10:11:55 AM
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
        String pass=(String)session1.getAttribute("pass");
		 if(usern==null)
                               {
                response.sendRedirect("index.jsp");
            }
               else{


%>
        <form action="fifth.do">
   <table width="100%" border="0">
                
        <center>
  <tr>
    <td width="349" height="17"></td>
    <td width="43"></td>
    <td width="128"></td>
    <td width="440"></td>
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
    <td height="7""></td>
  
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
  
  </center>
       
</table>

        </form>
<%
}
%>
    </body>
</html>
