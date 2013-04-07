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

/**
 *
 * @author Mandeep
 */
public class viewjobac extends org.apache.struts.action.Action {
    
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
        viewjob nb=(viewjob)form;
        String u=nb.getG1();
        String p=nb.getG2();
        String tt="";
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
                        tt=r.getString(9);
                        break;
                    }

           }
           String g=r.getString(9);
       if(flag==1)
       {
            if(tt.equals("Student"))
           {
                ResultSet t=st.executeQuery("select * from organisereg o where o.skills=(select interest from normalreg where username='"+u+"')");
                 request.setAttribute("n1",t);
                 request.setAttribute("n2",g);
                return mapping.findForward("ok");
           }
           /*if(t.equals("organiser"))
           {
               ResultSet r=sm.executeQuery("select * from premiumreg o where o.skill=(select qualification from organisereg where username='"+u+"')");
               request.setAttribute("n1",r);
                request.setAttribute("n2",t);
               return mapping.findForward("ok");
           }*/
           if(tt.equals("Admin"))
           {
               ResultSet t=st.executeQuery("select * from signup");
               request.setAttribute("n1",t);
                request.setAttribute("n2",g);
               return mapping.findForward("ok");
           }

               return mapping.getInputForward();
       }
 else
     return mapping.getInputForward();
    }
}
