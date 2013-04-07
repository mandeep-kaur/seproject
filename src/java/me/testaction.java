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
public class testaction extends org.apache.struts.action.Action {
    
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
        testbean nb=(testbean) form;
        String u=nb.getS1();
        String p=nb.getS2();
        String n="";
        int flag=0;
        Class.forName("com.mysql.jdbc.Driver");
            Connection c=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=c.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet r=st.executeQuery("select * from signup");
       System.out.println("error");
       while(r.next())
       {
       if(r.getString(7).equals(u)&&r.getString(8).equals(p))
       {
           n=r.getString(6);
           flag=1;
           break;
       }
        }
       if(flag==1)
       {
          request.setAttribute("nu",n);
           return mapping.findForward("ok");
       }
 else
       return mapping.getInputForward();
       }
        
    }

