<%-- 
    Document   : profileview
    Created on : Jun 15, 2012, 12:56:11 PM
    Author     : Mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%! String u;%>
        <%! String e;%>
        <%! String b;%>
        <%! String c;%>
        <%! String s;%>
        <%! String p;%>
        <%! String q;%>
        <%! String a;%>
        <%! String t;%>

        <title>JSP Page</title>
    </head>
    <body>
        <% u=(String)request.getAttribute("n1");%>
         <% e=(String)request.getAttribute("n2");%>
          <% b=(String)request.getAttribute("n3");%>
           <% c=(String)request.getAttribute("n4");%>
            <% s=(String)request.getAttribute("n5");%>
             <% p=(String)request.getAttribute("n6");%>
              <% q=(String)request.getAttribute("n7");%>
               <% a=(String)request.getAttribute("n8");%>
                <% t=(String)request.getAttribute("n9");%>

                <center><h1> Your Profile Detail is:-</h1>
                    <h3>
                        UserName  :- <%= u%> <br><br>
                        E-mail id :- <%= e%> <br><br>
                        Birth Date:- <%= b%> <br><br>
                        City      :- <%= c%> <br><br>
                        State     :- <%= s%> <br><br>
                        Passward  :- <%= p%> <br><br>
                    Type of user  :- <%= t%> <br><br>
                    <center> <h4><a href="profilechange.jsp">Edit</a></h4></center>
                   
                    </h3></center>
    </body>
</html>
