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
public class signaction extends org.apache.struts.action.Action {
    
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
        int i=0;
        signbean nb=(signbean) form;
        String u=nb.getA1();
        String e=nb.getA2();
        String b=nb.getA3();
        String c=nb.getA8();
        String s=nb.getA4();
        String p=nb.getA5();
        String r=nb.getA6();
        String q=nb.getA7();
        String a=nb.getA9();
        String t=nb.getA10();
        System.out.println("ffffffffffffffff");
       
        Class.forName("com.mysql.jdbc.Driver");
            Connection j=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=j.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet rs=st.executeQuery("select * from signup");
        if(p.equals(r))
        {
        i=st.executeUpdate("Insert into signup values('"+u+"','"+e+"','"+b+"','"+c+"','"+s+"','"+p+"','"+q+"','"+a+"','"+t+"')");
        }
        if(i==1)
        {
         return mapping.findForward("ok");
        }
 else
     return mapping.getInputForward();
        
       
        }

    }
