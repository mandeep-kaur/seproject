<%-- 
    Document   : header3
    Created on : Jun 17, 2012, 7:27:40 PM
    Author     : aditya
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
        margin: 0 0 0;
        padding: 0.5em 0 0;
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
        <img src="job.jpg" height="170" width="100%"><br>
            <div id="navigation">
                        <ul>
                                <!-- CSS Tabs -->
<li id="current"><a href="homew.jsp"><span>Home</span></a></li>
<li><a href="changepass.jsp"><span>Change Password</span></a></li>
<li><a href="Organisereg.jsp"><span>Register</span></a></li>
<li><a href="Support.html"><span>Job Available</span></a></li>
<li><a href="viewprofile.jsp"><span>your profile</span></a></li>
<li><a href="logout.jsp"><span>Logout</span></a></li>

                        </ul>
                </div>
    </body>
</html>
