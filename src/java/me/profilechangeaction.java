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
public class profilechangeaction extends org.apache.struts.action.Action {
    
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
        profilechange nb=(profilechange) form;
        String u=nb.getE1();
        String e=nb.getE2();
        String b=nb.getE3();
        String c=nb.getE4();
        String s=nb.getE5();
        String p=nb.getE6();
        String t=nb.getE7();
        String h=nb.getE8();
        h=u;
          System.out.println("ffffffffffffffff");

        Class.forName("com.mysql.jdbc.Driver");
            Connection j=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=j.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet rs=st.executeQuery("select * from signup");
      int i=0;
      i=st.executeUpdate("update signup set username='"+u+"',email='"+e+"',birthdate='"+b+"',city='"+c+"',state='"+s+"',passward='"+p+"',type='"+t+"' where username='"+h+"'");
        if(i==1)
        {
            return mapping.findForward("ok");
        }
 else
     return mapping.findForward("notok");
    }
}
