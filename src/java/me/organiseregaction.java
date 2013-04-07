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
public class organiseregaction extends org.apache.struts.action.Action {
    
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
        organisereg nb=(organisereg) form;
        String u=nb.getF1();
        String p=nb.getF2();
        String q=nb.getF3();
        String v=nb.getF4();
        String s=nb.getF6();
        String c=nb.getF7();
        String st=nb.getF8();
        String w=nb.getF9();
        String cn=nb.getF10();
        String m=nb.getF11();

        System.out.println("ffffffffffffffff");
            Class.forName("com.mysql.jdbc.Driver");
            Connection cs=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement sm=cs.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet r=sm.executeQuery("select * from organisereg");
       System.out.println("error");
       int i=sm.executeUpdate("insert into organisereg values('"+u+"','"+p+"','"+q+"','"+v+"','"+s+"','"+c+"','"+st+"','"+w+"','"+cn+"','"+m+"')");
       if(i==1)
       {
           return mapping.findForward("ok");
       }
 else
     return mapping.getInputForward();
    }
       
    }

