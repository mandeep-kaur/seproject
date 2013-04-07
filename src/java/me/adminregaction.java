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
public class adminregaction extends org.apache.struts.action.Action {
    
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
        adminreg nb=(adminreg) form;
        String h=nb.getM();
        System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=c.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        if(h.equals("s"))
        {
            ResultSet r=st.executeQuery("select * from signup");
            request.setAttribute("n1",r);
            request.setAttribute("n2",h);
            return mapping.findForward("ok");
        }
           if(h.equals("n"))
           {
               ResultSet r=st.executeQuery("select * from normalreg");
            request.setAttribute("n1",r);
            request.setAttribute("n2",h);
            return mapping.findForward("ok");

           }
           if(h.equals("o"))
           {
               ResultSet r=st.executeQuery("select * from organisereg");
            request.setAttribute("n1",r);
            request.setAttribute("n2",h);
            return mapping.findForward("ok");

           }
           /*if(h.equals("p"))
           {
               ResultSet r=st.executeQuery("select * from premiumreg");
            request.setAttribute("n1",r);
             request.setAttribute("n2",h);
            return mapping.findForward("ok");

           }*/
        return mapping.findForward(SUCCESS);
    }
}
