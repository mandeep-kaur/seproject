/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package me;
import java.sql.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mandeep
 */
public class myaction extends org.apache.struts.action.Action {
    
    /* forward name="success" path="" */
    private static final String SUCCESS = "success";
    
    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param form The optional ActionForm bean for this request.
     * @param request The HTTP Request we are processing.
     * @param response The HTTP Response we are processing.
     * @throws java.lang.Exception
     * @return
     */
    @Override
    public ActionForward execute(ActionMapping mapping, ActionForm form,
            HttpServletRequest request, HttpServletResponse response)
            throws Exception {
        mybean nb=(mybean)form;
        String u=(String)request.getAttribute("nu");
        String p=nb.getT2();
        //String t=nb.getT3();
        int flag=0;
       
       
           System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=c.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet r=st.executeQuery("select * from signup");
       System.out.println("error");
           while(r.next())
           {
               System.out.println("ddddddddddddddddd");
               if((r.getString(1).equals(u))&&(r.getString(6).equals(p)))
                   {
                       System.out.println("aaaaaaaaaaaaaaa");
                        flag=1;
                        break;
                   }
               
           }


    if (flag == 1)
    {
        HttpSession session1 = request.getSession();
        session1.setAttribute("name",r.getString(1));
        session1.setAttribute("pass",r.getString(6));
        /* response.sendRedirect("Organisereg.jsp");
          response.sendRedirect("changepass.jsp");
           response.sendRedirect("forgot.jsp");
            response.sendRedirect("home.jsp");
             response.sendRedirect("homer.jsp");
              response.sendRedirect("homew.jsp");
               response.sendRedirect("main.jsp");
                response.sendRedirect("newjsp.jsp");
                 response.sendRedirect("newpass.jsp");
                  response.sendRedirect("normalreg.jsp");
                   response.sendRedirect("profilechange.jsp");
                    response.sendRedirect("profileview.jsp");
                     response.sendRedirect("regis.jsp");
                      response.sendRedirect("register.jsp");
                       response.sendRedirect("regw.jsp");
                        response.sendRedirect("result1.jsp");
                         response.sendRedirect("result2.jsp");
                          response.sendRedirect("showpass.jsp");
                           response.sendRedirect("viewjob.jsp");
                            response.sendRedirect("viewprofile.jsp");
                             response.sendRedirect("test.jsp");
                              response.sendRedirect("success.jsp");
                               response.sendRedirect("successlog.jsp");*/
        request.setAttribute("n1",r.getString(1));
        return mapping.findForward("ok");
    }
       else
        return mapping.findForward("notok");

       
        
        
    }
}
       
   