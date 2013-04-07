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
public class resultaction extends org.apache.struts.action.Action {
    
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
        result nb=(result) form;
        String t=nb.getW1();
        String u=nb.getW2();
         System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement sm=cs.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
           if(t.equals("Student"))
           {
                ResultSet r=sm.executeQuery("select * from organisereg o where o.qualificatio=(select interest from normalreg where username='"+u+"')");
                 request.setAttribute("n1",r);
                 request.setAttribute("n2",t);
                return mapping.findForward("ok");
           }
           /*if(t.equals("organiser"))
           {
               ResultSet r=sm.executeQuery("select * from premiumreg o where o.qualification=(select qualification from organisereg where username='"+u+"')");
               request.setAttribute("n1",r);
                request.setAttribute("n2",t);
               return mapping.findForward("ok");
           }*/
           if(t.equals("Admin"))
           {
               ResultSet r=sm.executeQuery("select * from signup");
               request.setAttribute("n1",r);
                request.setAttribute("n2",t);
               return mapping.findForward("ok");
           }

               return mapping.getInputForward();
 
        
    }
}
