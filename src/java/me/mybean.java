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
public class mybean extends org.apache.struts.action.ActionForm {
    private String t1;
    private String t2;
  //  private String t3;

    public String getT1() {
        return t1;
    }

    public void setT1(String t1) {
        this.t1 = t1;
    }

    public String getT2() {
        return t2;
    }

    public void setT2(String t2) {
        this.t2 = t2;
    }

   /* public String getT3() {
        return t3;
    }

    public void setT3(String t3) {
        this.t3 = t3;
    }*/

    
    }

