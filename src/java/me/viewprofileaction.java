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
public class viewprofileaction extends org.apache.struts.action.Action {
    
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
       viewprofile nb=(viewprofile)form;
       String u=nb.getO1();
       String p=nb.getO2();
       int flag=0;
       Class.forName("com.mysql.jdbc.Driver");
            Connection j=DriverManager.getConnection("jdbc:mysql://localhost/std","root","");
        Statement st=j.createStatement();
           System.out.println("qqqqqqqqqqqqqqq");
        ResultSet rs=st.executeQuery("select * from signup");
        while(rs.next())
        {
        if((rs.getString(1).equals(u))&&(rs.getString(6).equals(p)))
        {
        flag=1;
        break;
        }
        }
        if(flag==1)
        {
        request.setAttribute("n1",rs.getString(1));
         request.setAttribute("n2",rs.getString(2));
          request.setAttribute("n3",rs.getString(3));
          request.setAttribute("n4",rs.getString(4));
           request.setAttribute("n5",rs.getString(5));
            request.setAttribute("n6",rs.getString(6));
             request.setAttribute("n7",rs.getString(7));
              request.setAttribute("n8",rs.getString(8));
               request.setAttribute("n9",rs.getString(9));
           return mapping.findForward("ok");
        }
 else
     return mapping.getInputForward();
    }
}
