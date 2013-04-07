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
public class result extends org.apache.struts.action.ActionForm {
    
   private String w1;
   private String w2;

    public String getW1() {
        return w1;
    }

    public void setW1(String w1) {
        this.w1 = w1;
    }

    public String getW2() {
        return w2;
    }

    public void setW2(String w2) {
        this.w2 = w2;
    }
   
}
