/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package me;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author Mandeep
 */
public class forgotbean extends org.apache.struts.action.ActionForm {
    
   private String e1;

    public String getE1() {
        return e1;
    }

    public void setE1(String e1) {
        this.e1 = e1;
    }
   
}
