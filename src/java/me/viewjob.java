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
public class viewjob extends org.apache.struts.action.ActionForm {
    
  private String g1;
  private String g2;

    public String getG1() {
        return g1;
    }

    public void setG1(String g1) {
        this.g1 = g1;
    }

    public String getG2() {
        return g2;
    }

    public void setG2(String g2) {
        this.g2 = g2;
    }

}
