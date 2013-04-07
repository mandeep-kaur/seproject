<%-- 
    Document   : signup
    Author     : Mandeep
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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

                    //password
                    var x=document.forms["form1"]["a5"].value;
                    if (x==null || x=="")
                    {
                        alert("Password must be filled out");
                        return false;
                    }
                    //retype password
                    var x=document.forms["form1"]["a6"].value;
                    if (x==null || x=="")
                    {
                       alert("retype password must be filled out");
                        return false;
                    }

                    //email
                    {
                    if (/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(form1.a2.value))
                        {
                            return (true)
                        }
                        alert("You have entered an invalid email address!")
                        return false;
                    }
                    //security question
                    var x=document.forms["form1"]["a9"].value;
                    if (x==null || x=="")
                    {
                        alert("security answer must be filled out");
                        return false;
                    }

                }
            </script>
    </head>
    <body>
<form  action="second.do"  method="post" id="form1" name="form1" onsubmit="return validateForm()" >
    <div>
               <jsp:include page="header2.jsp"></jsp:include>
            </div>
            <div>
               <jsp:include page="login.jsp"></jsp:include>
            </div>

            <div><center>
        <table width="40%" style="text-align: left" bgcolor="black">


        
        <center>

  <tr>
    <td width="5%">&nbsp;</td>
    <td width="13%">&nbsp;</td>
    <td width="5%">&nbsp;</td>
    <td width="12%">&nbsp;</td>
    <td width="5%">&nbsp;</td>
  </tr>
  <tr>
      <td height="17">&nbsp;</td>
    <td valign="top">UserName</td>
    <td>&nbsp;</td>
    <td valign="top"><label>
      <input type="text" name="a1" />
    </label></td>
    <td>&nbsp;</td>
  </tr>
   <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
      <td height="17"></td>
    <td valign="top">E-mail Id</td>
    <td></td>
    <td valign="top"><label>
      <input type="text" name="a2" />
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">
      BirthDate
        </td>
    <td></td>
    <td valign="top"><label>
      <input type="text" name="a3" />
    </label></td>
    <td></td>
  </tr>
   <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">City</td>
    <td></td>
    <td valign="top"><label>
      <select name="a8">
        <option value="srigananaga">SriGananagar</option>
        <option value="noida">Noida</option>
        <option value="alwar">Alwar</option>
        <option value="kota">Kota</option>
        <option value="jaipur">Jaipur</option>
        <option value="sikkar">Sikkar</option>
        <option value="madras">Madras</option>
        <option value="silliguri">Silliguri</option>
        <option value="calcutta">Calcutta</option>
        <option value="mumbai">Mumbai</option>
        <option value="ahemdabad">Ahemdabad</option>
        <option value="ludhiana">Ludhiana</option>
      </select>
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr height="17">
    <td height="10"></td>
    <td valign="top">State</td>
    <td></td>
    <td valign="top"><label>
      <select name="a4">
        <option value="delhi">Delhi</option>
        <option value="rajasthan">Rajasthan</option>
        <option value="gujrat">Gujrat</option>
        <option value="uttar pradesh">Uttar pradesh</option>
        <option value="punjab">Punjab</option>
        <option value="assam">Assam</option>
      </select>
    </label></td>
    <td></td>
  </tr>
  
 <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  
 
  <tr height="17">
    <td height="10"></td>
    <td valign="top">Password</td>
    <td></td>
    <td valign="top"><label>
      <input type="text" name="a5" />
    </label></td>
    <td></td>
  </tr>
   <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr height="17">
    <td height="10"></td>
    <td valign="top">Retype password</td>
    <td></td>
    <td valign="top"><label>
      <input type="text" name="a6" />
    </label></td>
    <td></td>
  </tr>
   <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">Security Question</td>
    <td></td>
    <td valign="top"><label>
      <select name="a7">
        <option value="Name of my first pet?">Name of my first pet? </option>
        <option value="Name of my first teacher?">Name of my first teacher?</option>
        <option value="Name of my first friend?">Name of my first friend?</option>
        <option value="Name of my fevourate book?">Name of my fevourate book?</option>
      </select>
    </label></td>
    <td></td>
  </tr>
   <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td valign="top">Answer</td>
    <td></td>
    <td valign="top"><label>
      <input type="text" name="a9" />
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
<tr height="5">
    <td height="10"></td>
    <td valign="top"></td>
    <td></td>
    <td valign="top"><label>
            <input type="hidden" name="a10" value="Student">
    </label></td>
    <td></td>
  </tr>
  <tr>
    <td height="17"></td>
    <td></td>
    <td valign="top"><label>
      <input type="submit" name="Submit" value="Submit" />
    </label></td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td height="5"></td>
    <td></td>
    <td></td>
    <td></td>
    <td></td>
  </tr>
    </center>
 
</table>
                </center>
     </div>
            <div>
               <jsp:include page="footer.jsp"></jsp:include>
            </div>
    </form>
    </body>
</html>
