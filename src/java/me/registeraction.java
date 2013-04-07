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
public class registeraction extends org.apache.struts.action.Action {
    
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
        register nb=(register) form;
        String u=nb.getF1();
        String p=nb.getF2();
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
       if(flag==1)
       {
          /* if(r.getString(9).equals("premium"))
           {
               return mapping.findForward("ok1");
           }*/
           if(r.getString(9).equals("Student"))
           {
               return mapping.findForward("ok2");

           }
          /* if(r.getString(9).equals("organiser"))
           {
               return mapping.findForward("ok3");
           }*/
           if(r.getString(9).equals("Admin"))
           {
               return mapping.findForward("ok4");
           }
       }
        return mapping.findForward(SUCCESS);
    }
}
