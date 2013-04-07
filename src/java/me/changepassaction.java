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
public class changepassaction extends org.apache.struts.action.Action {
    
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
        changepass nb=(changepass) form;
        String p=nb.getK1();
        String n=nb.getK2();
        String q=nb.getK3();
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
           System.out.print("wwwwww");
       if((r.getString(6).equals(p))&&(r.getString(2).equals(q)))
       {
           System.out.print("fffffff");
       flag=1;
       break;
       }
      }
        if(flag==1)
       {    System.out.print("11111111");
            int i=st.executeUpdate("update signup set passward='"+n+"' where email='"+q+"'");
            if(i==1)
            {
             request.setAttribute("nu",n);
             return mapping.findForward("ok");
            }
           else
            return mapping.getInputForward();

    }
 else
     return mapping.getInputForward();
       }
        
    }

