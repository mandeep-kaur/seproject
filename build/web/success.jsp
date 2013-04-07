<%-- 
    Document   : success
    Created on : Jun 13, 2012, 1:21:37 PM
    Author     : Mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
                <style type="text/css">
<!--
body {
        background: #FFF;
        color: #000;
        font: 12px Verdana, Arial, Helvetica, sans-serif;
        margin: 0;
        padding: 0;
}
a:link, a:visited {
        color: #FF2A84;
        text-decoration: underline;
}
a:hover, a:active {
        color: #FFF;
        text-decoration: none;
        background: #FF2A84;
}
#navigation {
        background: #DDD;
        border-bottom: 1px solid #A1A1A1;
        margin: 1em 0 0;
        padding: 0.6em 0 0;
        font-weight: bold;
}
#navigation ul, #navigation ul li {
        list-style: none;
        margin: 0;
        padding: 0;
}
#navigation ul {
        padding: 5px 0 5px;
        text-align: center;
}
#navigation ul li {
        display: inline;
}
#navigation ul li a {
        background: url(tableft.gif) no-repeat left top;
        color: #FFF;
        text-decoration: none;
        padding: 5px 0;
}
#navigation ul li span {
        background: url(tabright.gif) no-repeat right top;
        padding: 5px 7px 5px 3px;
        margin: 4px 0 4px 4px;
}
#navigation ul li a:hover span {
        text-decoration: underline;
        background-position: 100% -75px;
}
#navigation ul li a:hover {
        background-position: 0 -75px;
}
#navigation #current a {
        background-position: 0 -150px;
}
#navigation #current a span {
        background-position: 100% -150px;
}


/*- Internet Explorer...It's Hacktastic!--------------------------- */

/*\*//*/
#navigation ul li a {
        display: inline-block;
        white-space: nowrap;
        width: 1px;
}

#navigation ul {
        padding-bottom: 0;
        margin-bottom: -1px;
}
/**/

/*\*/
* html #navigation ul li a {
        padding: 0;
}
/**/
-->
</style>
    </head>
    <body>
        <table width="100%" height="650">
<tr height="200"><td width="100%" colspan="5"><jsp:include page="header.jsp"></jsp:include></td></tr>
<tr height="400"><td>
        <div id="navigation">
                        <ul>
                                <!-- CSS Tabs -->
<li id="current"><a href="homew.jsp"><span>Home</span></a></li>
<li><a href="changepass.jsp"><span>Change Password</span></a></li>
<li><a href="normalreg.jsp"><span>Register</span></a></li>
<li><a href="Support.html"><span>Job Available</span></a></li>
<li><a href="viewprofile.jsp"><span>your profile</span></a></li>
<li><a href="logout.jsp"><span>Logout</span></a></li>

                        </ul>
                </div>
    </td></tr>
  <tr height="50"><td width="100%" colspan="5"><jsp:include page="footer.jsp"></jsp:include></td></tr>
</table>



        
    </body>
</html>
