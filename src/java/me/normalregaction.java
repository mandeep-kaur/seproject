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
public class normalregaction extends org.apache.struts.action.Action {
    
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
        normalreg nb=(normalreg) form;
        String u=nb.getW1();
        String e=nb.getW2();
        String q=nb.getW3();
        String c=nb.getW7();
        String s=nb.getW8();
        String sk=nb.getW4();
        String cn=nb.getW5();
        String w=nb.getW6();
         System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=cs.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet r=st.executeQuery("select * from normalreg");
       System.out.println("error");
       int i=st.executeUpdate("insert into normalreg values('"+u+"','"+e+"','"+q+"','"+c+"','"+s+"','"+sk+"','"+cn+"','"+w+"')");
       if(i==1)
       {
           return mapping.findForward("ok");
       }
 else
     return mapping.getInputForward();
    }
}
