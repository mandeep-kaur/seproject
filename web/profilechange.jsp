<%-- 
    Document   : profilechange
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
                    <h3><form action="g.do">
                        UserName  :- <input type="text" name="e1"value=<%= u%>><br><br>
                        E-mail id :- <input type="text" name="e2"value=<%= e%>><br><br>
                        Birth Date:- <input type="text" name="e3"value=<%= b%>><br><br>
                        City      :- <input type="text" name="e4"value=<%= c%>><br><br>
                        State     :- <input type="text" name="e5"value=<%= s%>><br><br>
                        Password  :- <input type="text" name="e6"value=<%= p%>><br><br>
                    <input type="hidden" name="e7"value=<%= t%>><br><br>
                    <input type="hidden" name="e8" value=<%= u%>/>
                       <input type="submit" name="Submit" value="Submit" />
                        </form>
                    </h3> </center>
                    <%
}
%>
    </body>
</html>
